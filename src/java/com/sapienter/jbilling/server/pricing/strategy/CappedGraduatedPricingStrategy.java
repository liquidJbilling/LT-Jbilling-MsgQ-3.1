/*
 * JBILLING CONFIDENTIAL
 * _____________________
 *
 * [2003] - [2012] Enterprise jBilling Software Ltd.
 * All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Enterprise jBilling Software.
 * The intellectual and technical concepts contained
 * herein are proprietary to Enterprise jBilling Software
 * and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden.
 */

package com.sapienter.jbilling.server.pricing.strategy;

import com.sapienter.jbilling.common.Constants;
import com.sapienter.jbilling.server.item.PricingField;
import com.sapienter.jbilling.server.item.tasks.PricingResult;
import com.sapienter.jbilling.server.order.Usage;
import com.sapienter.jbilling.server.order.db.OrderDTO;
import com.sapienter.jbilling.server.pricing.db.AttributeDefinition;
import com.sapienter.jbilling.server.pricing.db.ChainPosition;
import com.sapienter.jbilling.server.pricing.db.PriceModelDTO;
import com.sapienter.jbilling.server.pricing.util.AttributeUtils;

import java.math.BigDecimal;
import java.util.List;

import static com.sapienter.jbilling.server.pricing.db.AttributeDefinition.Type.*;

/**
 * Capped, graduated pricing strategy.
 *
 * Only usage over the included quantity, and under the set maximum total $ amount will be billed.
 *
 * @author Brian Cowdery
 * @since 31/01/11
 */
public class CappedGraduatedPricingStrategy extends GraduatedPricingStrategy {

    public CappedGraduatedPricingStrategy() {
        setAttributeDefinitions(
                new AttributeDefinition("included", DECIMAL, true),
                new AttributeDefinition("max", DECIMAL, true)
        );

        setChainPositions(
                ChainPosition.START,
                ChainPosition.MIDDLE,
                ChainPosition.END
        );

        setRequiresUsage(true);
    }

    /**
     * Graduated pricing strategy with a maximum total usage cap.
     *
     * @see GraduatedPricingStrategy
     *
     * @param pricingOrder target order for this pricing request (not used by this strategy)
     * @param result pricing result to apply pricing to
     * @param fields pricing fields (not used by this strategy)
     * @param planPrice the plan price to apply
     * @param quantity quantity of item being priced
     * @param usage total item usage for this billing period
     */
    @Override
    public void applyTo(OrderDTO pricingOrder, PricingResult result, List<PricingField> fields,
                        PriceModelDTO planPrice, BigDecimal quantity, Usage usage, boolean singlePurchase) {

        if (usage == null || usage.getAmount() == null) {
            throw new IllegalArgumentException("Usage amount cannot be null for CappedGraduatedPricingStrategy.");
        }

        BigDecimal maximum = AttributeUtils.getDecimal(planPrice.getAttributes(), "max");
        if (usage.getAmount().compareTo(maximum) <= 0) {
            // usage cap not yet reached, price normally
            super.applyTo(pricingOrder, result, fields, planPrice, quantity, usage, singlePurchase);
        } else {
            // cap reached, price at zero
            result.setPrice(BigDecimal.ZERO);
        }

        // only bill up to the set maximum cap
        // calculate a unit price that brings the total cost back down to the maximum cap
        if (result.getPrice() != null) {

            BigDecimal total = usage.getAmount().add(quantity.multiply(result.getPrice()));
            if (total.compareTo(maximum) >= 0) {
                BigDecimal billable = maximum.subtract(usage.getAmount());
                BigDecimal price = billable.divide(quantity, Constants.BIGDECIMAL_SCALE, Constants.BIGDECIMAL_ROUND);
                result.setPrice(price);
            }
        }
    }
}
