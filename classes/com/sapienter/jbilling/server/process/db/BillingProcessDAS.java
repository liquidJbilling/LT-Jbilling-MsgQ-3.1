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

package com.sapienter.jbilling.server.process.db;

import com.sapienter.jbilling.server.user.UserDTOEx;
import java.util.Date;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.sapienter.jbilling.server.user.db.CompanyDTO;
import com.sapienter.jbilling.server.user.db.UserDTO;
import com.sapienter.jbilling.server.util.db.AbstractDAS;
import java.math.BigDecimal;
import java.util.Iterator;
import org.hibernate.Query;
import org.hibernate.ScrollableResults;
import org.hibernate.criterion.Projections;

public class BillingProcessDAS extends AbstractDAS<BillingProcessDTO> {

    public BillingProcessDTO create(CompanyDTO entity, Date billingProcess,
            Integer periodId, Integer periodValue, Integer retries) {

        PeriodUnitDTO period = new PeriodUnitDAS().find(periodId);
        BillingProcessDTO dto = new BillingProcessDTO();
        dto.setEntity(entity);
        dto.setBillingDate(billingProcess);
        dto.setPeriodUnit(period);
        dto.setPeriodValue(periodValue);
        dto.setIsReview(0);
        dto.setRetriesToDo(retries);

        return save(dto);
    }

    public BillingProcessDTO findReview(Integer entityId) {
        Criteria criteria = getSession().createCriteria(BillingProcessDTO.class);
        criteria.createAlias("entity", "ent").add(Restrictions.eq("ent.id", entityId));
        criteria.add(Restrictions.eq("isReview", 1));

        return (BillingProcessDTO) criteria.uniqueResult();
    }

    public BillingProcessDTO isPresent(Integer entityId, Integer isReview, Date billingDate) {
        Criteria criteria = getSession().createCriteria(BillingProcessDTO.class);
        criteria.createAlias("entity", "ent").add(Restrictions.eq("ent.id", entityId));
        criteria.add(Restrictions.eq("isReview", isReview));
        criteria.add(Restrictions.eq("billingDate", billingDate));

        return (BillingProcessDTO) criteria.uniqueResult();
    }

    public ScrollableResults findUsersToProcess(int entityId) {
        Criteria criteria = getSession().createCriteria(UserDTO.class)
                .add(Restrictions.eq("deleted", 0))
                .createAlias("company", "c")
                    .add(Restrictions.eq("c.id", entityId))
                .createAlias("userStatus", "us")
                    .add(Restrictions.lt("us.id", UserDTOEx.STATUS_SUSPENDED))
                .setProjection(Projections.id())
                .setComment("BillingProcessDAS.findUsersToProcess " + entityId);
        return criteria.scroll();
    }

    public void reset() {
        getSession().flush();
        getSession().clear();
    }
    
    public Iterator getCountAndSum(Integer processId) {
        final String hql =
                "select count(id), sum(total), currency.id " +
                "  from InvoiceDTO " +
                " where billingProcess.id = :processId " +
                " group by currency.id";

        Query query = getSession().createQuery(hql);
        query.setParameter("processId", processId);
        return query.iterate();
    }

}
