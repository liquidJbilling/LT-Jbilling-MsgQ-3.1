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

/*
 * Created on Dec 15, 2004
 *
 */
package com.sapienter.jbilling.server.pluggableTask;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.apache.log4j.Logger;

import com.sapienter.jbilling.server.order.db.OrderDTO;
import com.sapienter.jbilling.server.util.Constants;
import com.sapienter.jbilling.server.util.MapPeriodToCalendar;

/**
 * @author Emil
 *
 */
public class OrderPeriodAnticipateTask extends BasicOrderPeriodTask {
    

	private static final Logger LOG = Logger.getLogger(OrderPeriodAnticipateTask.class);
	
    public Date calculateEnd(OrderDTO order, Date processDate,
            int maxPeriods, Date periodStarts) 
            throws TaskException {
        viewLimit = null;

        if (order.getAnticipatePeriods() != null &&
                order.getAnticipatePeriods().intValue() > 0) {
            try {
                Integer periodUnitId = order.getOrderPeriod().getUnitId();
                Integer periodValue = order.getOrderPeriod().getValue();
                
                Calendar cal = Calendar.getInstance();
                cal.setTime(processDate);
                if (order.getOrderPeriod().getId() != Constants.ORDER_PERIOD_ONCE) {
                    cal.add(MapPeriodToCalendar.map(periodUnitId),
                            periodValue.intValue());
                }
                LOG.debug("Ant periods:" + order.getAnticipatePeriods() + " " +
                        "view limit: " + cal.getTime());
                // now add the months that this order is getting anticipated
                cal.add(GregorianCalendar.MONTH,
                        order.getAnticipatePeriods().intValue());
                viewLimit = cal.getTime();
            } catch (Exception e) {
                throw new TaskException(e);
            } 
        } 
        
        return super.calculateEnd(order, processDate, maxPeriods, periodStarts);
    }
}
