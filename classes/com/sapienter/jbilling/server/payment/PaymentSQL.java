/*
The contents of this file are subject to the Jbilling Public License
Version 1.1 (the "License"); you may not use this file except in
compliance with the License. You may obtain a copy of the License at
http://www.jbilling.com/JPL/

Software distributed under the License is distributed on an "AS IS"
basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
License for the specific language governing rights and limitations
under the License.

The Original Code is jbilling.

The Initial Developer of the Original Code is Emiliano Conde.
Portions created by Sapienter Billing Software Corp. are Copyright 
(C) Sapienter Billing Software Corp. All Rights Reserved.

Contributor(s): ______________________________________.
*/

package com.sapienter.jbilling.server.payment;

public interface PaymentSQL {
    // Internal gets all the payments ever
    static final String internalList =         "select p.id, p.id, u.user_name, c.symbol, p.amount, p.create_datetime, i.content " +
        "  from payment p, base_user u, international_description i, " +        "       payment_method pm, jbilling_table bt, currency c " +        " where p.user_id = u.id " +        "   and p.is_refund = ?" +
        "   and p.method_id = pm.id " +
        "   and p.currency_id = c.id " +
        "   and i.table_id = bt.id " +
        "   and bt.name = 'payment_method' " +
        "   and i.foreign_id = pm.id " +
        "   and i.language_id = ? " +
        "   and i.psudo_column = 'description' " +        "   and p.deleted = 0 ";
        
    // Root-Clerk gets all the entity's payments
    static final String rootClerkList = 
        "select p.id, p.id, u.user_name, co.organization_name, c.symbol, " +
        "       p.amount, p.create_datetime, i.content " +
        "  from payment p, base_user u, international_description i, " +
        "       payment_method pm, jbilling_table bt, currency c, contact co " +
        " where p.user_id = u.id " +
        "   and p.is_refund = ?" +
        "   and p.method_id = pm.id " +
        "   and p.currency_id = c.id " +
        "   and u.entity_id = ? " +
        "   and i.table_id = bt.id " +
        "   and bt.name = 'payment_method' " +
        "   and i.foreign_id = pm.id " +
        "   and i.language_id = ? " +
        "   and i.psudo_column = 'description' " +
        "   and co.user_id = u.id " +
        "   and p.id not in (select payment_id from partner_payout where payment_id is not null) " +
        "   and p.deleted = 0 ";

    // The partner get's only its users
    static final String partnerList = 
        "select p.id, p.id, u.user_name, co.organization_name, c.symbol, " +
        "       p.amount, p.create_datetime, i.content " +
        "  from payment p, base_user u, international_description i, " +
        "       payment_method pm, jbilling_table bt, partner pa, " +
        "       customer cu, currency c, contact co " +
        " where p.user_id = u.id " +
        "   and p.is_refund = ?" +
        "   and p.method_id = pm.id " +
        "   and p.currency_id = c.id " +
        "   and u.entity_id = ? " +
        "   and cu.partner_id = pa.id " +
        "   and pa.user_id = ? " +
        "   and cu.user_id = u.id " +        
        "   and i.table_id = bt.id " +
        "   and bt.name = 'payment_method' " +
        "   and i.foreign_id = pm.id " +
        "   and i.language_id = ? " +
        "   and i.psudo_column = 'description' " +
        "   and p.id not in (select payment_id from partner_payout where payment_id is not null) " +
        "   and co.user_id = u.id " +
        "   and p.deleted = 0 ";        

    // A customer only sees its own
    static final String customerList = 
        "select p.id, p.id, u.user_name, co.organization_name, c.symbol, " +
        "       p.amount, p.create_datetime, i.content " +
        "  from payment p, base_user u, international_description i, " +
        "       payment_method pm, jbilling_table bt, currency c, contact co " +
        " where p.user_id = u.id " +
        "   and p.is_refund = ?" +
        "   and p.method_id = pm.id " +
        "   and p.currency_id = c.id " +
        "   and u.id = ? " +
        "   and i.table_id = bt.id " +
        "   and bt.name = 'payment_method' " +
        "   and i.foreign_id = pm.id " +
        "   and i.language_id = ? " +
        "   and i.psudo_column = 'description' " +
        "   and co.user_id = u.id " +
        "   and p.deleted = 0 ";        

    // The refundable payments are those only of a customer (like customerList)
    // but that have been not refunded previously
    static final String refundableList = 
        "select p.id, p.id, u.user_name, c.symbol, p.amount, p.create_datetime, i.content " +
        "  from payment p, base_user u, international_description i, " +
        "       payment_method pm, jbilling_table bt, currency c " +
        " where p.user_id = u.id " +
        "   and p.is_refund = ?" +
        "   and p.method_id = pm.id " +
        "   and p.currency_id = c.id " +
        "   and u.id = ? " +
        "   and i.table_id = bt.id " +
        "   and bt.name = 'payment_method' " +
        "   and i.foreign_id = pm.id " +
        "   and i.language_id = ? " +
        "   and i.psudo_column = 'description' " +
        "   and p.deleted = 0 " +    
        "   and p.id not in ( " +
        "        select payment_id " +
        "          from payment " +
        "         where is_refund = 1 " +
        "           and payment_id is not null " +
        "   )" +
        " order by 1 desc";    
    
    static final String getLatest = 
        "select max(id) " +
        "  from payment " +
        " where deleted = 0 " +
        "   and user_id = ?";
    
}
