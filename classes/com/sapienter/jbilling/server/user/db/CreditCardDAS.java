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
package com.sapienter.jbilling.server.user.db;

import java.util.List;


import com.sapienter.jbilling.server.util.db.AbstractDAS;
import org.hibernate.Query;

public class CreditCardDAS extends AbstractDAS<CreditCardDTO> {

    private static final String findByLastDigits =
            " select b.id " +
            "   from UserDTO b join b.creditCards c " +
            "  where b.company.id = :entity " +
            "    and c.ccNumberPlain = :plain " +
            "    and b.deleted = 0 " +
            "    and c.deleted = 0";

    public List<Integer> findByLastDigits(Integer entityId, String plain) {
        Query query = getSession().createQuery(findByLastDigits);
        query.setParameter("entity", entityId);
        query.setParameter("plain", plain);
        query.setComment("CreditCardDAS.findByLastDigits " + entityId + " " + plain);
        return query.list();
    }
}
