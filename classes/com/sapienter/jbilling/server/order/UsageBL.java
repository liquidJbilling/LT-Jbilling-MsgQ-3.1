/*
 jBilling - The Enterprise Open Source Billing System
 Copyright (C) 2003-2010 Enterprise jBilling Software Ltd. and Emiliano Conde

 This file is part of jbilling.

 jbilling is free software: you can redistribute it and/or modify
 it under the terms of the GNU Affero General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 jbilling is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU Affero General Public License for more details.

 You should have received a copy of the GNU Affero General Public License
 along with jbilling.  If not, see <http://www.gnu.org/licenses/>.
 */

package com.sapienter.jbilling.server.order;

import com.sapienter.jbilling.common.SessionInternalError;
import com.sapienter.jbilling.server.order.db.OrderDTO;
import com.sapienter.jbilling.server.order.db.UsageDAS;
import com.sapienter.jbilling.server.pluggableTask.OrderPeriodTask;
import com.sapienter.jbilling.server.pluggableTask.TaskException;
import com.sapienter.jbilling.server.pluggableTask.admin.PluggableTaskException;
import com.sapienter.jbilling.server.pluggableTask.admin.PluggableTaskManager;
import com.sapienter.jbilling.server.process.PeriodOfTime;
import com.sapienter.jbilling.server.util.Constants;
import com.sapienter.jbilling.server.util.Context;
import org.apache.log4j.Logger;
import org.joda.time.DateMidnight;
import org.springmodules.cache.CachingModel;
import org.springmodules.cache.FlushingModel;
import org.springmodules.cache.provider.CacheProviderFacade;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Provides easy access to usage information over the customers natural billing period.
 *
 * @author Brian Cowdery
 * @since 16-08-2010
 */
public class UsageBL {
    private static final Logger LOG = Logger.getLogger(UsageBL.class);

    private static final Integer CURRENT_PERIOD = 1;

    private UsageDAS usageDas;
    private Integer userId;
    private Integer periods;
    private UsagePeriod usagePeriod = null;

    // cache of calculated usage periods
    private CacheProviderFacade cache;
    private CachingModel cacheModel;
    private FlushingModel flushModel;

    /**
     * Construct a UsageBL object to calculate usage for the customers most recent/current
     * period.
     *
     * @param userId user id
     */
    public UsageBL(Integer userId) {
        _init();
        set(userId, CURRENT_PERIOD);
    }

    /**
     * Construct a UsageBL object to calculate usage over the given number of
     * periods in the past, where 1 period back is the current period.
     *
     * @param userId user id
     * @param periods number of periods in the past to calculate usage for
     */
    public UsageBL(Integer userId, Integer periods) {
        _init();
        set(userId, periods);
    }

    private void _init() {
        usageDas = new UsageDAS();

        cache = (CacheProviderFacade) Context.getBean(Context.Name.CACHE);
        cacheModel = (CachingModel) Context.getBean(Context.Name.CACHE_MODEL_RW);
        flushModel = (FlushingModel) Context.getBean(Context.Name.CACHE_FLUSH_MODEL_RW);
    }

    public void set(Integer userId, Integer periods) {
        this.userId = userId;
        this.periods = periods;

        usagePeriod = (UsagePeriod) cache.getFromCache(getCacheKey(), cacheModel);

        // could not load period from cache
        if (usagePeriod == null) {

            // get main subscription order
            OrderDTO mainOrder = null;
            Integer orderId = new OrderBL().getMainOrderId(userId);
            if (orderId != null)
                mainOrder = new OrderBL(orderId).getEntity();

            if (mainOrder == null)
                LOG.warn("User " + userId + " does not have main subscription order - all usage will be 0!");

            // get billing cycle dates and billing periods for main order.
            if (mainOrder != null) {
                try {
                    Integer entityId = mainOrder.getBaseUserByUserId().getCompany().getId();
                    PluggableTaskManager manager = new PluggableTaskManager(entityId, Constants.PLUGGABLE_TASK_ORDER_PERIODS);
                    OrderPeriodTask periodTask = (OrderPeriodTask) manager.getNextClass();

                    if (periodTask == null)
                        throw new SessionInternalError("OrderPeriodTask not configured!");

                    Date cycleStartDate = periodTask.calculateStart(mainOrder);
                    Date cycleEndDate = periodTask.calculateEnd(mainOrder,
                                                                new Date(),
                                                                periods,
                                                                cycleStartDate);

                    List<PeriodOfTime> billingPeriods = periodTask.getPeriods();

                    if (billingPeriods.isEmpty())
                        throw new SessionInternalError("Could not determine user's billing period!");

                    // populate usage period object for cache
                    usagePeriod = new UsagePeriod();
                    usagePeriod.setMainOrder(mainOrder);
                    usagePeriod.setCycleStartDate(cycleStartDate);
                    usagePeriod.setCycleEndDate(cycleEndDate);
                    usagePeriod.setBillingPeriods(billingPeriods);

                    LOG.debug("Caching with key '" + getCacheKey() + "', usage period: " + usagePeriod);
                    cache.putInCache(getCacheKey(), cacheModel, usagePeriod);

                } catch (PluggableTaskException e) {
                    throw new SessionInternalError("Exception occurred retrieving the configured OrderPeriodTask.", e);
                } catch (TaskException e) {
                    throw new SessionInternalError("Exception occurred calculating the customers billing periods.", e);
                }
            }
        } else {
            LOG.debug("Cache hit for '" + getCacheKey() + "', usage period: " + usagePeriod);
        }
    }

    private String getCacheKey() {
        return "user " + userId + " periods " + periods;
    }

    public void invalidateCache() {
        cache.flushCache(flushModel);
    }

    public Integer getUserId() {
        return userId;
    }

    /**
     * Returns the number of periods spanned by this usage calculation inclusive, where 1
     * denotes the current period, 2 is the current period + 1 etc.
     *
     * Example:
     * <lieral>
     *      1 period:
     *      July 1st -> July 30th
     *
     *      2 periods:
     *      June 1st -> July 30th
     *
     *  where July is the current month
     * </literal>
     *
     * @return number of periods spanned by this usage calculation 
     */
    public Integer getPeriods() {
        return periods;
    }

    /**
     * Returns the main subscription order for this customer. The users main subscription
     * order defines the billing cycle dates.
     * 
     * @return customers main subscription order.
     */
    public OrderDTO getMainOrder() {
        return usagePeriod.getMainOrder();
    }

    /**
     * Returns the billing cycle start date for this customer. This is the start date of the very
     * first billing period for this customer, effectively the date the main subscription order
     * became active.
     *
     * @return cycle start date
     */
    public Date getCycleStartDate() {
        return usagePeriod.getCycleStartDate();
    }

    /**
     * Returns the billing cycle end date for this customer. This is the end of of the customers
     * current billing period, effectively the date the main subscription order will become in-active.
     *
     * @return cycle end date
     */
    public Date getCycleEndDate() {
        return usagePeriod.getCycleEndDate();
    }

    /**
     * Returns a list of billing periods of the main subscription order, spanning
     * back N number of periods ({@link #getPeriods()}.
     *
     * @return billing periods
     */
    public List<PeriodOfTime> getBillingPeriods() {
        return usagePeriod.getBillingPeriods();
    }

    /**
     * Returns the start date for the defined period of usage (period of time spanning
     * back N number of periods; {@link #getPeriods()}).
     *
     * @return usage period start date.
     */
    public Date getPeriodStart() {
        // get the first period entry in the list - will be N number of periods in the past
        PeriodOfTime start = usagePeriod.getBillingPeriods().get(0);
        return start.getStart();
    }

    /**
     * Returns the current period end date for this customer. This customer will return
     * end of day today as the end date if the period end date is in the past (can occur
     * if we're processing before the customer's first billing run).
     *
     * @return current period end date
     */
    public Date getPeriodEnd() {
        // get the last period entry in the list - will be the most recent period
        PeriodOfTime end = usagePeriod.getBillingPeriods().get(usagePeriod.getBillingPeriods().size() - 1);

        // end of day today
        DateMidnight today = new DateMidnight().plusDays(1);

        if (new DateMidnight(end.getEnd().getTime()).isBefore(today)) {
            return today.toDate();
        } else {
            return end.getEnd();
        }
    }

    /**
     * Returns the total usage for an item including the given known order quantity and order amount. This
     * method is used to include an un-persisted order's total in a usage calculation.
     *
     * @see #getItemUsage(Integer)
     *
     * @param itemId item id
     * @param orderQuantity total order quantity of this item to include
     * @param orderAmount total order dollar amount of this item to include
     * @return usage
     */
    public Usage getItemUsage(Integer itemId, BigDecimal orderQuantity, BigDecimal orderAmount) {
        Usage usage = getItemUsage(itemId);
        usage.addQuantity(orderQuantity);
        usage.addAmount(orderAmount);

        return usage;
    }

    /**
     * Returns the total usage over the set number of periods.
     *
     * @param itemId item id
     * @return usage
     */
    public Usage getItemUsage(Integer itemId) {
        if (getMainOrder() != null) {
            Date startDate = getPeriodStart();
            Date endDate = getPeriodEnd();

            LOG.debug("Fetching usage of item " + itemId
                      + " for " + periods + " period(s), start: " + startDate + ", end: " + endDate);

            return usageDas.findUsageByItem(itemId, userId, startDate, endDate);
        }

        LOG.warn("User has no main subscription order billing period, item " + itemId + " usage set to 0");
        return new Usage(itemId, null, BigDecimal.ZERO, BigDecimal.ZERO, null, null);
    }

    /**
     * Returns the total usage for an item type including the given known order quantity and order amount. This
     * method is used to include an un-persisted order's total in a usage calculation.
     *
     * @see #getItemTypeUsage(Integer)
     *
     * @param itemId item id
     * @param orderQuantity total order quantity of this item to include
     * @param orderAmount total order dollar amount of this item to include
     * @return usage
     */
    public Usage getItemTypeUsage(Integer itemId, BigDecimal orderQuantity, BigDecimal orderAmount) {
        Usage usage = getItemTypeUsage(itemId);
        usage.addQuantity(orderQuantity);
        usage.addAmount(orderAmount);

        return usage;
    }

    /**
     * Returns the total usage over the set number of periods.
     * 
     * @param itemTypeId item type id
     * @return usage
     */
    public Usage getItemTypeUsage(Integer itemTypeId) {
        if (getMainOrder() != null) {
            Date startDate = getPeriodStart();
            Date endDate = getPeriodEnd();

            LOG.debug("Fetching usage of item type " + itemTypeId
                      + " for " + periods + " period(s), start: " + startDate + ", end: " + endDate);

            return usageDas.findUsageByItemType(itemTypeId, userId, startDate, endDate);
        }

        LOG.warn("User has no main subscription order billing period, item type " + itemTypeId + " usage set to 0");
        return new Usage(null, itemTypeId, BigDecimal.ZERO, BigDecimal.ZERO, null, null);
    }
}
