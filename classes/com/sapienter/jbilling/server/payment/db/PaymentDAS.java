/*
    jBilling - The Enterprise Open Source Billing System
    Copyright (C) 2003-2008 Enterprise jBilling Software Ltd. and Emiliano Conde

    This file is part of jbilling.

    jbilling is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    jbilling is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with jbilling.  If not, see <http://www.gnu.org/licenses/>.
 */
package com.sapienter.jbilling.server.payment.db;

import java.util.Calendar;
import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import com.sapienter.jbilling.server.user.db.UserDAS;
import com.sapienter.jbilling.server.user.db.UserDTO;
import com.sapienter.jbilling.server.util.db.AbstractDAS;
import com.sapienter.jbilling.server.util.db.CurrencyDTO;

public class PaymentDAS extends AbstractDAS<PaymentDTO> {
	// used for the web services call to get the latest X
	public List<Integer> findIdsByUserLatestFirst(Integer userId, int maxResults) {
		Criteria criteria = getSession().createCriteria(PaymentDTO.class).add(
				Restrictions.eq("deleted", 0)).createAlias("baseUser", "u")
				.add(Restrictions.eq("u.id", userId)).setProjection(
						Projections.id()).addOrder(Order.desc("id"))
				.setMaxResults(maxResults);
		return criteria.list();
	}

	public PaymentDTO create(Float amount, PaymentMethodDTO paymentMethod,
			Integer userId, Integer attempt, PaymentResultDTO paymentResult,
			CurrencyDTO currency) {

		PaymentDTO payment = new PaymentDTO();
		payment.setAmount(amount);
		payment.setPaymentMethod(paymentMethod);
		payment.setBaseUser(new UserDAS().find(userId));
		payment.setAttempt(attempt);
		payment.setPaymentResult(paymentResult);
		payment.setCurrency(currency);
		payment.setCreateDatetime(Calendar.getInstance().getTime());
		payment.setDeleted(new Integer(0));
		payment.setIsRefund(new Integer(0));
		payment.setIsPreauth(new Integer(0));

		return save(payment);

	}

	/**
	 * * query="SELECT OBJECT(p) FROM payment p WHERE p.userId = ?1 AND
	 * p.balance >= 0.01 AND p.isRefund = 0 AND p.isPreauth = 0 AND p.deleted =
	 * 0"
	 * 
	 * @param userId
	 * @return
	 */
	public Collection findWithBalance(Integer userId) {

		UserDTO user = new UserDAS().find(userId);

		Criteria criteria = getSession().createCriteria(PaymentDTO.class);
		criteria.add(Restrictions.eq("baseUser", user));
		criteria.add(Restrictions.ge("balance", new Float(0.01)));
		criteria.add(Restrictions.eq("isRefund", 0));
		criteria.add(Restrictions.eq("isPreauth", 0));
		criteria.add(Restrictions.eq("deleted", 0));

		return criteria.list();
	}

	/**
	 * 
	 * query="SELECT OBJECT(p) FROM payment p WHERE 
	 * p.userId = ?1 AND 
	 * p.balance >= 0.01 AND 
	 * p.isRefund = 0 AND 
	 * p.isPreauth = 1 AND 
	 * p.deleted = 0"
	 * 
	 * @param userId
	 * @return
	 */
	public Collection<PaymentDTO> findPreauth(Integer userId) {
		
		UserDTO user = new UserDAS().find(userId);

		Criteria criteria = getSession().createCriteria(PaymentDTO.class);
		criteria.add(Restrictions.eq("baseUser", user));
		criteria.add(Restrictions.ge("balance", new Float(0.01)));
		criteria.add(Restrictions.eq("isRefund", 0));
		criteria.add(Restrictions.eq("isPreauth", 1));
		criteria.add(Restrictions.eq("deleted", 0));

		return criteria.list();

	}

}
