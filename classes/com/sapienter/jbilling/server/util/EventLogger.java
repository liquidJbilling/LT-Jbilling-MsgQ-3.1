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

package com.sapienter.jbilling.server.util;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import javax.ejb.CreateException;
import javax.naming.NamingException;

import org.apache.log4j.Logger;

import sun.jdbc.rowset.CachedRowSet;

import com.sapienter.jbilling.common.JNDILookup;
import com.sapienter.jbilling.common.SessionInternalError;
import com.sapienter.jbilling.interfaces.EventLogEntityLocal;
import com.sapienter.jbilling.interfaces.EventLogEntityLocalHome;
import com.sapienter.jbilling.interfaces.UserEntityLocal;
import com.sapienter.jbilling.server.user.UserBL;

public class EventLogger {
    
    // these are the messages constants, in synch with the db (event_log_message)
    // billing process
    public static final Integer BILLING_PROCESS_UNBILLED_PERIOD = new Integer(1);
    public static final Integer BILLING_PROCESS_NOT_ACTIVE_YET = new Integer(2);
    public static final Integer BILLING_PROCESS_ONE_PERIOD_NEEDED = new Integer(3);
    public static final Integer BILLING_PROCESS_RECENTLY_BILLED = new Integer(4);
    public static final Integer BILLING_PROCESS_WRONG_FLAG_ON = new Integer(5);
    public static final Integer BILLING_PROCESS_EXPIRED = new Integer(6);
    public static final Integer BILLING_REVIEW_NOT_APPROVED = new Integer(10);
    public static final Integer BILLING_REVIEW_NOT_GENERATED = new Integer(11);
    // user maintenance
    public static final Integer PASSWORD_CHANGE = new Integer(8);
    public static final Integer STATUS_CHANGE = new Integer(12);
    public static final Integer NO_FURTHER_STEP = new Integer(14);
    public static final Integer CANT_PAY_PARTNER = new Integer(15);
    public static final Integer SUBSCRIPTION_STATUS_CHANGE = new Integer(20);
    public static final Integer ACCOUNT_LOCKED = new Integer(21);
    // order maintenance
    public static final Integer ORDER_STATUS_CHANGE = new Integer(13);
    public static final Integer ORDER_LINE_UPDATED = new Integer(17);
    public static final Integer ORDER_NEXT_BILL_DATE_UPDATED = new Integer(18);
    // invoice related message
    public static final Integer INVOICE_ORDER_APPLIED = new Integer(16);
    // others
    public static final Integer ROW_DELETED = new Integer(7);
    public static final Integer ROW_UPDATED= new Integer(9); // field not specified
    public static final Integer USER_TRANSITIONS_LIST = new Integer(19);


    // event log modules in synch with db (event_log_module)
    public static final Integer MODULE_BILLING_PROCESS = new Integer(1);
    public static final Integer MODULE_USER_MAINTENANCE = new Integer(2);
    public static final Integer MODULE_ITEM_MAINTENANCE = new Integer(3);
    public static final Integer MODULE_ITEM_TYPE_MAINTENANCE = new Integer(4);
    public static final Integer MODULE_ITEM_USER_PRICE_MAINTENANCE = new Integer(5);
    public static final Integer MODULE_PROMOTION_MAINTENANCE = new Integer(6);
    public static final Integer MODULE_ORDER_MAINTENANCE = new Integer(7);
    public static final Integer MODULE_CREDIT_CARD_MAINTENANCE = new Integer(8);
    public static final Integer MODULE_INVOICE_MAINTENANCE = new Integer(9);
    public static final Integer MODULE_PAYMENT_MAINTENANCE = new Integer(10);
    public static final Integer MODULE_TASK_MAINTENANCE = new Integer(11);
    public static final Integer MODULE_WEBSERVICES = new Integer(12);
    public static final Integer MODULE_MEDIATION = new Integer(13);

    
    // levels of logging    
    public static final Integer LEVEL_DEBUG = new Integer(1);
    public static final Integer LEVEL_INFO = new Integer(2);
    public static final Integer LEVEL_WARNING = new Integer(3);
    public static final Integer LEVEL_ERROR = new Integer(4);
    public static final Integer LEVEL_FATAL = new Integer(5);
    
    private static EventLogger theInstance = null;
    private EventLogEntityLocalHome eventLogHome = null;
    private Logger log = null;
    
    /*
     * The constructor is private, no one should instantiate this class
     */
    private EventLogger() throws NamingException{
        JNDILookup EJBFactory = JNDILookup.getFactory(false);
        eventLogHome =
                (EventLogEntityLocalHome) EJBFactory.lookUpLocalHome(
                EventLogEntityLocalHome.class,
                EventLogEntityLocalHome.JNDI_NAME);            
        log = Logger.getLogger(EventLogger.class);

    }
    
    public static EventLogger getInstance() {
        if (theInstance == null) {
            try {
                theInstance = new EventLogger();
            } catch (NamingException e) {
                throw new SessionInternalError("Creating event logger", EventLogger.class, e);
            }
        }
        
        return theInstance;
    }
    
    public void log(Integer level, Integer entity, Integer rowId, Integer module, 
            Integer message, String table)  {
        try {
            eventLogHome.create(entity, rowId, level, module, message, table);
        } catch (CreateException e) {
            throw new SessionInternalError(e);
        }            
    }
    
    public void debug(Integer entity, Integer rowId, Integer module, 
            Integer message, String table)   {
        log(LEVEL_DEBUG, entity, rowId, module, message, table);
    }
    
    public void info(Integer entity, Integer rowId, Integer module, 
            Integer message, String table) {
        log(LEVEL_INFO, entity, rowId, module, message, table);
    }
    
    public void warning(Integer entity, Integer rowId, Integer module, 
            Integer message, String table)   {
        log(LEVEL_WARNING, entity, rowId, module, message, table);
    }
    
    public void error(Integer entity, Integer rowId, Integer module, 
            Integer message, String table)   {
        log(LEVEL_ERROR, entity, rowId, module, message, table);
    }
    
    public void fatal(Integer entity, Integer rowId, Integer module, 
            Integer message, String table)   {
        log(LEVEL_FATAL, entity, rowId, module, message, table);
    } 
    
    /*
     * This is intended for loggin a change in the database, where we want to 
     * keep track of what changed
     */
    public void audit(Integer userExecutingId, String table, Integer rowId,
            Integer module, Integer message, Integer oldInt, String oldStr,
            Date oldDate) {
        try {
            /*
             * Logging was switched from the db to file because of
             * transaction locks and performance.
             * Still, transactions where rearranged and inserts should not
             * have a performance issue.
            log.info("Audit row->" + "userExecutingId:" + userExecutingId + 
                    " table:" + table + " rowId:" + rowId + " module: " + module + 
                    " message:" + message + " oldInt:" + oldInt + " oldStr:" + 
                    oldStr + " oldDate:" + oldDate);
            */
            UserEntityLocal user = UserBL.getUserEntity(userExecutingId);
                    
            EventLogEntityLocal event = eventLogHome.create(user.getEntity().getId(),
                    rowId, LEVEL_INFO, module, message, table);
            event.setUser(user);
            event.setOldDate(oldDate);
            event.setOldNum(oldInt);
            event.setOldStr(oldStr);
        } catch (Exception e) {
            log.error("Can't create an eventLog audit record.", e);
        }
    }   


    /*
     * Same as previous but the change its not being done by any given user
     * (no executor) but by a batch process.
     */
    public void auditBySystem(Integer entityId, String table, Integer rowId,
            Integer module, Integer message, Integer oldInt, String oldStr,
            Date oldDate) {
        try {
            /*
             * Logging was switched from the db to file because of
             * transaction locks and performance.
             * Still, transactions where rearranged and inserts should not
             * have a performance issue.
            log.info("Audit row->" + "entityId:" + entityId + 
                    " table:" + table + " rowId:" + rowId + " module: " + module + 
                    " message:" + message + " oldInt:" + oldInt + " oldStr:" + 
                    oldStr + " oldDate:" + oldDate);
             */
            EventLogEntityLocal event = eventLogHome.create(entityId,
                    rowId, LEVEL_INFO, module, message, table);
            event.setOldDate(oldDate);
            event.setOldNum(oldInt);
            event.setOldStr(oldStr);
        } catch (Exception e) {
            log.error("Can't create an eventLog audit record.", e);
        }
    }
    
    /**
     * Queries the event_log table to determine the position where the last query
     * of the user transitions ended. This is called if the user passes
     * <code>null</code> as the <code>from</code> parameter to the getUserTransitions
     * webservice call.
     * @return the id of the last queried transitions list.
     */
    public Integer getLastTransitionEvent(Integer entityId) 
    		throws SQLException, NamingException {
    	
    	/*
    	 * Extract the last id logged (the one with higher id) and return it.
    	 * 
    	 * TODO: this is a potential performance problem: the query above extracts
    	 * all logged events and sorts them in descending order (so that the newest
    	 * log event is on top of the list). A better solution would be to extract
    	 * only the last event in the db, or limit the extraction based on a date,
    	 * or put the last id somewhere else.
    	 */
    	CachedRowSet cachedResults = new CachedRowSet();
    	Integer result = new Integer(0);
    	JNDILookup jndi = JNDILookup.getFactory();
    	Connection conn = jndi.lookUpDataSource().getConnection();
    	cachedResults.setCommand(EventLoggerSQL.searchLog);
    	cachedResults.setInt(1, entityId);
    	cachedResults.execute(conn);
    	
    	if (cachedResults.next()) {
    		result = Integer.valueOf(cachedResults.getInt(1));
    	}
		conn.close();
		return new Integer(result);
    }
}
