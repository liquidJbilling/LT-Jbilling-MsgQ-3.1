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
package com.sapienter.jbilling.server.mediation.db;

import com.sapienter.jbilling.server.util.db.AbstractDAS;
import java.util.List;
import org.hibernate.Query;

public class MediationRecordLineDAS extends AbstractDAS<MediationRecordLineDTO> {
    
    private static final String findByOrder =
            " select a " +
            "   from MediationRecordLineDTO a " +
            "  where a.orderLine.purchaseOrder.id = :orderId " +
            "    and a.orderLine.deleted = 0 " +
            "  order by a.orderLine.id, a.id";
    
    public List<MediationRecordLineDTO> getByOrder(Integer orderId) {
        Query query = getSession().createQuery(findByOrder);
        query.setParameter("orderId", orderId);
        return query.list();
    }
}