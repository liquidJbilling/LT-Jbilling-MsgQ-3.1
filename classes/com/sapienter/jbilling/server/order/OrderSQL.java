/*
    jbilling - The Enterprise Open Source Billing System
    Copyright (C) 2003-2007 Sapienter Billing Software Corp. and Emiliano Conde

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

package com.sapienter.jbilling.server.order;

import com.sapienter.jbilling.server.util.Constants;

/**
 * @author Emil
 */
public interface OrderSQL {

    // This one is used for root and clerks
    static final String listInternal = 
        "select po.id, po.id, bu.user_name, c.organization_name , po.create_datetime " + 
        "  from purchase_order po, base_user bu, contact c " +
        "  where po.deleted = 0  " +
        "  and bu.entity_id = ? " +
        "  and po.user_id = bu.id " +
        "  and c.user_id = bu.id ";

    // PARTNER: will show only customers that belong to this partner
    static final String listPartner = 
        "select po.id, po.id, bu.user_name, c.organization_name, po.create_datetime " +
        "  from purchase_order po, base_user bu, customer cu, partner pa, contact c " +
        " where po.deleted = 0 " +
        "   and bu.entity_id = ? " +
        "   and po.user_id = bu.id" +
        "   and cu.partner_id = pa.id " +
        "   and pa.user_id = ? " +
        "   and cu.user_id = bu.id " +
        "   and c.user_id = bu.id ";

    static final String listCustomer = 
        "select po.id, po.id, bu.user_name, c.organization_name, po.create_datetime " +
        "  from purchase_order po, base_user bu, contact c " +
        " where po.deleted = 0 " +
        "   and po.user_id = ? " +
        "   and po.user_id = bu.id " +
        "   and c.user_id = bu.id " +
        " order by 1 desc";

    static final String listByProcess = 
        "select po.id, po.id, bu.user_name, po.create_datetime " +
        "  from purchase_order po, base_user bu, billing_process bp, order_process op "+
        " where bp.id = ? " +
        "   and po.user_id = bu.id " +
        "  and op.billing_process_id = bp.id " + 
        "  and op.order_id = po.id " +
        "  order by 1 desc";
    
    static final String getAboutToExpire =
    	"select purchase_order.id, purchase_order.active_until, " +
        "       purchase_order.notification_step " +
    	" from purchase_order, base_user " +
    	"where active_until >= ? " +
    	"  and active_until <= ? " +
    	"  and notify = 1 " +
    	"  and purchase_order.status_id = 1 " +
    	"  and user_id = base_user.id " +
    	"  and entity_id = ? " +
        "  and (notification_step is null or notification_step < ?)";
    
    static final String getLatest =
        "select max(id) " +
        "  from purchase_order " +
        " where user_id = ?" +
        "   and deleted = 0";
    
    static final String getByUserAndPeriod =
        "select id " +
        "  from purchase_order " +
        " where user_id = ? " +
        "   and period_id = ? " +
        "   and deleted = 0";

    static final String getCurrent = 
        "select id " +
        "  from purchase_order " +
        " where user_id = ? " +
        "   and period_id = " + Constants.ORDER_PERIOD_ONCE +
        "   and active_since = ? " +
        "   and deleted = 0";
}
