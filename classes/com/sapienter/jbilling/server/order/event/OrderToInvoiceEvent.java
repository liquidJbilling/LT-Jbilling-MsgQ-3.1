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

package com.sapienter.jbilling.server.order.event;

import java.util.Date;

import com.sapienter.jbilling.server.system.event.Event;

/**
 * This event is triggered when an order was added to invoice
 *
 * @author Mary Krylenko
 *
 */
public class OrderToInvoiceEvent implements Event {

    private Integer entityId;
    private Integer userId;
    private Integer orderId;
    private Date start;
    private Date end;

    public OrderToInvoiceEvent(Integer entityId, Integer userId, Integer orderId) {
        this.entityId = entityId;
        this.userId = userId;
        this.orderId = orderId;
    }

    public Integer getEntityId() {
        return entityId;
    }

    public String getName() {
        return "Order to Invoice for Entity " + entityId;
    }

    public Integer getUserId() {
        return userId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    public String toString() {
        return getName();
    }
}