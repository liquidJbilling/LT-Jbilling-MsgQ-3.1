/*
    jBilling - The Enterprise Open Source Billing System
    Copyright (C) 2003-2009 Enterprise jBilling Software Ltd. and Emiliano Conde

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

package com.sapienter.jbilling.server.invoice.db;

import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Vector;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import com.sapienter.jbilling.server.invoice.NewInvoiceDTO;
import com.sapienter.jbilling.server.process.db.BillingProcessDAS;
import com.sapienter.jbilling.server.process.db.BillingProcessDTO;
import com.sapienter.jbilling.server.user.db.UserDAS;
import com.sapienter.jbilling.server.user.db.UserDTO;
import com.sapienter.jbilling.server.util.db.AbstractDAS;
import java.math.BigDecimal;

public class InvoiceDAS extends AbstractDAS<InvoiceDTO> {
	// used for the web services call to get the latest X
	public List<Integer> findIdsByUserLatestFirst(Integer userId, int maxResults) {
		Criteria criteria = getSession().createCriteria(InvoiceDTO.class).add(
				Restrictions.eq("deleted", 0)).createAlias("baseUser", "u")
				.add(Restrictions.eq("u.id", userId)).setProjection(
						Projections.id()).addOrder(Order.desc("id"))
				.setMaxResults(maxResults);
		return criteria.list();
	}

    // used for the web services call to get the latest X that contain a particular item type
    public List<Integer> findIdsByUserAndItemTypeLatestFirst(Integer userId, Integer itemTypeId, int maxResults) {
        
        String hql = "select distinct(invoice.id)" +
                     "  from Invoice invoice" +
                     "  inner join invoice.invoiceLines line" +
                     "  inner join line.item.itemTypes itemType" +
                     "  where invoice.baseUser.id = :userId" +
                     "    and invoice.deleted = 0" +
                     "    and itemType.id = :typeId" +
                     "  order by invoice.id desc";
        List<Integer> data = getSession()
                        .createQuery(hql)
                        .setParameter("userId", userId)
                        .setParameter("typeId", itemTypeId)
                        .setMaxResults(maxResults)
                        .list();
        return data;
    }

	public Double findTotalForPeriod(Integer userId, Date start, Date end) {
		Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
		addUserCriteria(criteria, userId);
		addPeriodCriteria(criteria, start, end);
		criteria.setProjection(Projections.sum("total"));
		return (Double) criteria.uniqueResult();
	}

	public Double findAmountForPeriodByItem(Integer userId, Integer itemId,
			Date start, Date end) {
		Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
		addUserCriteria(criteria, userId);
		addPeriodCriteria(criteria, start, end);
		addItemCriteria(criteria, itemId);
		criteria.setProjection(Projections.sum("invoiceLines.amount"));
		return (Double) criteria.uniqueResult();
	}

	public Double findQuantityForPeriodByItem(Integer userId, Integer itemId,
			Date start, Date end) {
		Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
		addUserCriteria(criteria, userId);
		addPeriodCriteria(criteria, start, end);
		addItemCriteria(criteria, itemId);
		criteria.setProjection(Projections.sum("invoiceLines.quantity"));
		return (Double) criteria.uniqueResult();
	}

	public Integer findLinesForPeriodByItem(Integer userId, Integer itemId,
			Date start, Date end) {
		Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
		addUserCriteria(criteria, userId);
		addPeriodCriteria(criteria, start, end);
		addItemCriteria(criteria, itemId);
		criteria.setProjection(Projections.count("id"));
		return (Integer) criteria.uniqueResult();
	}

	public Double findAmountForPeriodByItemCategory(Integer userId,
			Integer categoryId, Date start, Date end) {
		Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
		addUserCriteria(criteria, userId);
		addPeriodCriteria(criteria, start, end);
		addItemCategoryCriteria(criteria, categoryId);
		criteria.setProjection(Projections.sum("invoiceLines.amount"));
		return (Double) criteria.uniqueResult();
	}

	public Double findQuantityForPeriodByItemCategory(Integer userId,
			Integer categoryId, Date start, Date end) {
		Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
		addUserCriteria(criteria, userId);
		addPeriodCriteria(criteria, start, end);
		addItemCategoryCriteria(criteria, categoryId);
		criteria.setProjection(Projections.sum("invoiceLines.quantity"));
		return (Double) criteria.uniqueResult();
	}

	public Integer findLinesForPeriodByItemCategory(Integer userId,
			Integer categoryId, Date start, Date end) {
		Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
		addUserCriteria(criteria, userId);
		addPeriodCriteria(criteria, start, end);
		addItemCategoryCriteria(criteria, categoryId);
		criteria.setProjection(Projections.count("id"));
		return (Integer) criteria.uniqueResult();
	}
    
    
    public boolean isReleatedToItemType(Integer invoiceId, Integer itemTypeId) {
        Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
        addItemCategoryCriteria(criteria, itemTypeId);
        criteria.add(Restrictions.eq("deleted", 0))
                .add(Restrictions.eq("id",invoiceId));
        
        return criteria.uniqueResult() != null;
    }

	private void addUserCriteria(Criteria criteria, Integer userId) {
		criteria.add(Restrictions.eq("deleted", 0))
				.createAlias("baseUser", "u").add(
						Restrictions.eq("u.id", userId));
	}

	private void addPeriodCriteria(Criteria criteria, Date start, Date end) {
		criteria.add(Restrictions.ge("createDatetime", start)).add(
				Restrictions.lt("createDatetime", end));
	}

	private void addItemCriteria(Criteria criteria, Integer itemId) {
		criteria.createAlias("invoiceLines", "invoiceLines").add(
				Restrictions.eq("invoiceLines.item.id", itemId));
	}

//	private void addItemCategoryCriteria(Criteria criteria, Integer categoryId) {
//		criteria.createAlias("invoiceLines", "invoiceLines")
//		.createAlias("invoiceLines.item", "item")
//		.createAlias("item.itemTypes","itemTypes")
//		.add(Restrictions.eq("itemTypes.id", categoryId));
//	}
	
	private void addItemCategoryCriteria(Criteria criteria, Integer categoryId) {
        criteria
            .createAlias("invoiceLines", "invoiceLines")
            .createAlias("invoiceLines.item", "item")
            .add(Restrictions.eq("item.deleted", 0))
                .createAlias("item.itemTypes", "itemTypes")
                    .add(Restrictions.eq("itemTypes.id", categoryId));
    }

    public List<Integer> findIdsOverdueForUser(Integer userId, Date date) {
        Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
        addUserCriteria(criteria, userId);
        criteria
            .add(Restrictions.lt("dueDate", date))
            .add(Restrictions.eq("toProcess", 1))
            .add(Restrictions.eq("isReview", 0))
            .setProjection(Projections.id())
            .addOrder(Order.desc("id"));
        return criteria.list();
    }

	/**
	 * query="SELECT OBJECT(a) FROM invoice a WHERE a.billingProcess.id = ?1 AND
	 * a.toProcess = 1 AND a.isReview = 0 AND a.inProcessPayment = 1 AND
	 * a.deleted = 0" result-type-mapping="Local"
	 * 
	 * @param processId
	 * @return
	 */
	public Collection findProccesableByProcess(Integer processId) {

		BillingProcessDTO process = new BillingProcessDAS().find(processId);
		Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
		criteria.add(Restrictions.eq("billingProcess", process));
		criteria.add(Restrictions.eq("toProcess", 1));
		criteria.add(Restrictions.eq("isReview", 0));
		criteria.add(Restrictions.eq("inProcessPayment", 1));
		criteria.add(Restrictions.eq("deleted", 0));

		return criteria.list();

	}

	public InvoiceDTO create(Integer userId, NewInvoiceDTO invoice,
			Vector invoiceEntities, BillingProcessDTO process) {

		InvoiceDTO entity = new InvoiceDTO();

		entity.setCreateDatetime(invoice.getBillingDate());
		entity.setCreateTimestamp(Calendar.getInstance().getTime());
		entity.setDeleted(new Integer(0));
		entity.setDueDate(invoice.getDueDate());
		entity.setTotal(invoice.getTotal());
		entity.setBalance(invoice.getBalance());
		entity.setCarriedBalance(invoice.getCarriedBalance());
		entity.setPaymentAttempts(new Integer(0));
		entity.setInProcessPayment(invoice.getInProcessPayment());
		entity.setIsReview(invoice.getIsReview());
		entity.setCurrency(invoice.getCurrency());
		entity.setBaseUser(new UserDAS().find(userId));
		// Initially the invoices are processable, this will be changed
		// when the invoice gets fully paid. This doesn't mean that the
		// invoice will be picked up by the main process, because of the
		// due date. (fix: if the total is > 0)
		if (invoice.getTotal().compareTo(new BigDecimal(0)) <= 0) {
			entity.setToProcess(new Integer(0));
		} else {
			entity.setToProcess(new Integer(1));
		}

		if (process != null) {
			entity.setBillingProcess(process);
			InvoiceDTO saved = save(entity);
			// The next line is theoretically necessary. However, it will slow down the billing
            // process to a crawl. Since the column for the association is in the invoice table,
            // the DB is updated correctly wihout this line.
            // process.getInvoices().add(saved);
			return saved;
		} 

		return save(entity);
		
	}

/*
 * Collection findWithBalanceByUser(java.lang.Integer userId)"
 *             query="SELECT OBJECT(a) 
 *                      FROM invoice a 
 *                     WHERE a.userId = ?1
 *                       AND a.balance <> 0 
 *                       AND a.isReview = 0
 *                       AND a.deleted = 0"
 *             result-type-mapping="Local"
 */
	public Collection findWithBalanceByUser(UserDTO user) {

		Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
		criteria.add(Restrictions.eq("baseUser", user));
		criteria.add(Restrictions.ne("balance", new Float(0)));
		criteria.add(Restrictions.eq("isReview", 0));
		criteria.add(Restrictions.eq("deleted", 0));
		
		return criteria.list();

	}

	/*
	 * signature="Collection findProccesableByUser(java.lang.Integer userId)"
 *             query="SELECT OBJECT(a) 
 *                      FROM invoice a 
 *                     WHERE a.userId = ?1
 *                       AND a.toProcess = 1 
 *                       AND a.isReview = 0
 *                       AND a.deleted = 0"
 *             result-type-mapping="Local"
	 */
	public Collection findProccesableByUser(UserDTO user) {
		
		Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
		criteria.add(Restrictions.eq("baseUser", user));
		criteria.add(Restrictions.eq("toProcess", 1));
		criteria.add(Restrictions.eq("isReview", 0));
		criteria.add(Restrictions.eq("deleted", 0));
		
		return criteria.list();
	}
	
	public Collection<InvoiceDTO> findByProcess(BillingProcessDTO process) {
		
		Criteria criteria = getSession().createCriteria(InvoiceDTO.class);
		criteria.add(Restrictions.eq("billingProcess", process));
		
		return criteria.list();
	}

}
