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

package com.sapienter.jbilling.server.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Calendar;

import com.sapienter.jbilling.common.JNDILookup;
import com.sapienter.jbilling.common.Util;
import com.sapienter.jbilling.server.entity.ContactDTO;
import com.sapienter.jbilling.server.util.Constants;

/**
 * @author emilc
 */
public final class EntitySignup {

    private String entityName = null;
    private Connection conn = null;
    private UserDTOEx user;
    private ContactDTO contact;
    private Integer languageId;

    class Table {
        String name;
        String columns[];
        String data[][];
        String international_columns[][][];
        boolean isMassive;
        int maxRows;
        int minRows;
        Column columnsMetaData[];
        int nextId;
        int index;
    }
    
    class Column {
        String dataType;
        int intRange1;
        int intRange2;
        String dateRange1;
        int dateRangeDays;
        boolean isNull;
        String constantValue;
        float floatFactor;
    }

    /**
     * 
     * @param user
     * It uses only the user name and password
     * @param contact
     * @param languageId
     */
    public EntitySignup(UserDTOEx user, ContactDTO contact,
            Integer languageId) {
        this.user = user;
        this.contact = contact;
        this.languageId = languageId;
    }

    public int process() throws Exception {
        
        try {

            JNDILookup jndi = JNDILookup.getFactory();
            // the connection will be closed by the RowSet as soon as it
            // finished executing the command
            conn = jndi.lookUpDataSource().getConnection();

            int newEntity = initData();

            conn.close();
			return newEntity;
			
        } catch (Exception e) {
        	try {
        		conn.close();
        	} catch(Exception x) {}
			throw new Exception(e);
        }
    }
    
    
    void processTable(Table table) 
        	throws Exception {

        StringBuffer sql = new StringBuffer();
        if (table.columns[0].equals("id")) {
            initTable(table);
        }
        int rowIdx = table.nextId;

        try {

            System.out.println("Now processing " + 
                    table.name + " [" + table.index + "]");

            // generate the INSERT string with this table's columns
            sql.append("insert into " + table.name + " (");
            for (int columnsIdx = 0; columnsIdx < table.columns.length;) {
                sql.append(table.columns[columnsIdx]);
                columnsIdx++;
                if (columnsIdx < table.columns.length) {
                    sql.append(",");
                }
            }
            sql.append(") values (");
            for (int columnsIdx = 0; columnsIdx < table.columns.length;) {
                sql.append("?");
                columnsIdx++;
                if (columnsIdx < table.columns.length) {
                    sql.append(",");
                }
            }
            sql.append(")");

            System.out.println(sql.toString());

            PreparedStatement stmt = conn.prepareStatement(sql.toString());
            // for each row to be inserted, apply the data to the '?' 
            int rowCount = 0;
            for (rowCount = 0; table.data != null && rowCount < table.data.length;
            		rowCount++, rowIdx++) {

                // normal tables don't have data for the first column (the id)
                // but map tables have data for every column
                int idxDifference = 0; // this will be for a map table
                for (int columnIdx = 0;
                        columnIdx < table.columns.length;
                        columnIdx++) {
                    String field;
                    if (table.columns[columnIdx].equals("id")) {
                        // this is the id, which is automatically generated
                        field = String.valueOf(rowIdx);
                        idxDifference = 1; // this is a normal table
                    } else {
                        // this is just a normal column
                        field = table.data[rowCount][columnIdx - idxDifference];
                    }
                    stmt.setString(columnIdx + 1, field);

                }

                if (stmt.executeUpdate() != 1) {
                    throw new Exception(
                            "insert failed. Row "
                            + rowIdx
                            + " table "
                            + table.name);
                }

                // now take care of the pseudo columns with international
                // text
                if (table.international_columns != null) {
                    insertPseudoColumns(
                            table.index,
                            rowIdx,
                            table.international_columns[rowCount]);
                }

            }
            System.out.println("inserted " + rowCount + " rows");
            
            stmt.close();
            updateBettyTablesRows(table.index, rowIdx);
            table.nextId = rowIdx;
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println(e.getMessage());
            throw new Exception("Error inserting table " + table.name + 
                    " row " + (rowIdx + 1));
        } 
    }

    Table addTable(String name, String columns[], 
            String data[][], boolean massive) {
        return addTable(name, columns, data, null, massive);
    }

    Table addTable(String name, String columns[], String data[][],
            String intColumns[][][], boolean massive) {
        return addTable(name, columns, data, intColumns, massive, null, 0, 0);            
    }
    
    Table addTable(
            String name,
            String columns[],
            String data[][],
            String intColumns[][][],
            boolean massive,
            Column metaData[],
            int min, int max) {
            
        Table table;
        table = new Table();
        table.name = name;
        table.columns = columns;
        table.data = data;
        table.international_columns = intColumns;
        table.isMassive = massive;
        table.columnsMetaData = metaData;
        table.maxRows = max;
        table.minRows = min;
        return table;
    }


    void updateBettyTablesRows(int tableId, int totalRows)
        throws SQLException {
        PreparedStatement stmt =
            conn.prepareStatement(
                    "update jbilling_table set next_id = ? " + " where id = ?");
        stmt.setInt(1, totalRows);
        stmt.setInt(2, tableId);
        stmt.executeUpdate();
        stmt.close();

        }
    
    void initTable(Table table) 
    		throws SQLException {
    	PreparedStatement stmt = conn.prepareStatement(
    			"select next_id, id from jbilling_table " +
                " where name = ?");
        stmt.setString(1, table.name);
        ResultSet res = stmt.executeQuery();
        if (res.next()) {
        	table.nextId = res.getInt(1);
        	table.index = res.getInt(2);
            
            stmt = conn.prepareStatement(
                    "select max(id) from " + table.name);
            res = stmt.executeQuery();
            res.next();
            int maxId = res.getInt(1);
            if (table.nextId <= maxId) {
                table.nextId = maxId + 1;
            }
        } else {
        	throw new SQLException("No rows for table " + table.name);
        }
        res.close();
        stmt.close();  	
    }

    void insertPseudoColumns(int tableId, int rowId, String data[][])
            throws SQLException {

        String sql = "insert into international_description "
                + "(table_id, foreign_id, psudo_column,language_id,content) "
                + "values (?, ?, ?, ?, ?)";

        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, tableId);
        stmt.setInt(2, rowId);

        for (int entry = 0; entry < data.length; entry++) {
            // this would be the pseudo column
            stmt.setString(3, data[entry][0]);
            // and this the actual content
            stmt.setString(5, data[entry][1]);
            String language = null;
            if (data[entry].length < 3 || data[entry][2] == null) {
                language = "1"; //defaults to english
            } else {
                language = data[entry][2];
            }
            stmt.setString(4, language);

            if (stmt.executeUpdate() != 1) {
                throw new SQLException("Should've insterted one row into international_description");
            }
        }

        stmt.close();

    }

    // idealy, this should be loaded from betty-schema.xml
    int initData() throws Exception {

        String now = Util.parseDate(Calendar.getInstance().getTime());
        //ENTITY
        // defaults currency to US dollars
        String entityColumns[] =
        { "id", "external_id", "description", "create_datetime", "language_id", "currency_id" };
        String entityData[][] = { 
            { null, contact.getOrganizationName(), now, languageId.toString(), "1" }, 
        };
        Table table = addTable(Constants.TABLE_ENTITY, entityColumns, 
        		entityData, false);
        processTable(table);
        int newEntityId = table.nextId - 1;
        
        //BASE_USER
        String userColumns[] = {
            "id",
            "entity_id",
            "user_name",
            "password",
            "deleted",
            "status_id",
            "currency_id",
            "create_datetime",
            "last_status_change",
            "language_id"
        };
        String userData[][] = { 
            { String.valueOf(newEntityId), user.getUserName(), 
                user.getPassword(), "0", "1", "1", now, null, 
                languageId.toString() },  //1
        };
        table = addTable(Constants.TABLE_BASE_USER, userColumns, userData, false);
        processTable(table);
        int rootUserId = table.nextId - 1;
        
        //USER_ROLE_MAP
        String userRoleColumns[] =
        {
            "user_id",
            "role_id",
        };
        String userRoleData[][] = {
            { String.valueOf(rootUserId), "2"}, 
        };
        table = addTable(Constants.TABLE_USER_ROLE_MAP, 
                userRoleColumns, userRoleData, false);
        processTable(table);
        
        //CONTACT_TYPE
        String contactType[] = { "id", "entity_id", "is_primary" };
        String contactTypeData[][] = new String[1][2];
        String contactTypeIntColumns[][][] = new String [1][1][2];
        contactTypeData[0][0] = String.valueOf(newEntityId);
        contactTypeData[0][1] = "1";
        contactTypeIntColumns[0][0][0] = "description";
        contactTypeIntColumns[0][0][1] = "Primary"; 
        table = addTable(Constants.TABLE_CONTACT_TYPE, contactType, contactTypeData,
                contactTypeIntColumns, false);
        processTable(table);
        int pContactType = table.nextId - 1;
        
        //CONTACT
        String contactColumns[] = {
            "id",
            "ORGANIZATION_NAME",
            "STREET_ADDRES1",
            "STREET_ADDRES2",
            "CITY",
            "STATE_PROVINCE",
            "POSTAL_CODE",
            "COUNTRY_CODE",
            "LAST_NAME",
            "FIRST_NAME",
            "PERSON_INITIAL",
            "PERSON_TITLE",
            "PHONE_COUNTRY_CODE",
            "PHONE_AREA_CODE",
            "PHONE_PHONE_NUMBER",
            "FAX_COUNTRY_CODE",
            "FAX_AREA_CODE",
            "FAX_PHONE_NUMBER",
            "EMAIL",
            "CREATE_DATETIME",
            "deleted",
            "user_id"
        };
        String contactData[][] = {
            {
                contact.getOrganizationName(),
                contact.getAddress1(),
                contact.getAddress2(),
                contact.getCity(),
                contact.getStateProvince(),
                contact.getPostalCode(),
                contact.getCountryCode(),
                null,
                null,
                null,
                null,
                (contact.getPhoneCountryCode() == null) ? null :
                    contact.getPhoneCountryCode().toString(),
                (contact.getPhoneAreaCode() == null) ? null :
                    contact.getPhoneAreaCode().toString(),
                contact.getPhoneNumber(),
                null, //fax
                null,
                null,
                contact.getEmail(),
                now,
                "0",
                null
            },
            {
                contact.getOrganizationName(),
                contact.getAddress1(),
                contact.getAddress2(),
                contact.getCity(),
                contact.getStateProvince(),
                contact.getPostalCode(),
                contact.getCountryCode(),
                contact.getLastName(),
                contact.getFirstName(),
                null,
                null,
                (contact.getPhoneCountryCode() == null) ? null :
                    contact.getPhoneCountryCode().toString(),
                (contact.getPhoneAreaCode() == null) ? null :
                    contact.getPhoneAreaCode().toString(),
                contact.getPhoneNumber(),
                null, //fax
                null,
                null,
                contact.getEmail(),
                now,
                "0",
                String.valueOf(rootUserId)
            },
        };
        table = addTable(Constants.TABLE_CONTACT, contactColumns, contactData, false);
        processTable(table);
        int contactId = table.nextId - 2;
        
        //CONTACT_MAP
        String contactMapColumns[] =
        { "id", "contact_id", "type_id", "table_id", "foreign_id" };
        String contactMapData[][] = { 
			{ String.valueOf(contactId), "1", "5", String.valueOf(newEntityId) }, // the contact for the entity
            { String.valueOf(contactId + 1), String.valueOf(pContactType), "10", String.valueOf(rootUserId) }, 
        };
        table = addTable(Constants.TABLE_CONTACT_MAP, contactMapColumns, contactMapData, false);
        processTable(table);
        
        //ORDER_PERIODS
        // puts only monthly now
        String orderPeriod[] = { "id", "entity_id", "value", "unit_id" };
        String orderPeriodData[][] = new String[1][3];
        String orderPeriodIntColumns[][][] = new String [1][1][2];
        orderPeriodData[0][0] = String.valueOf(newEntityId);
        orderPeriodData[0][1] = "1"; 
        orderPeriodData[0][2] = "1"; // month 
        orderPeriodIntColumns[0][0][0] = "description";
        orderPeriodIntColumns[0][0][1] = "Monthly"; 
        
        table = addTable(Constants.TABLE_ORDER_PERIOD, orderPeriod, orderPeriodData,
                orderPeriodIntColumns, false);
        processTable(table);
        
        //PLUGGABLE_TASK
        String pluggableTaskColumns[] =
        { "id", "entity_id", "type_id", "processing_order" };
        String pluggableTaskData[][] =
        { 
            { String.valueOf(newEntityId), "1", "1" }, // BasicLineTotalTask
            { String.valueOf(newEntityId), "3", "1" }, // CalculateDueDate
            { String.valueOf(newEntityId), "4", "2" }, // BasicCompositionTask
            { String.valueOf(newEntityId), "5", "1" }, // BasicOrderFilterTask
            { String.valueOf(newEntityId), "6", "1" }, // BasicInvoiceFilterTask
            { String.valueOf(newEntityId), "7", "1" }, // BasicOrderPeriodTask
            { String.valueOf(newEntityId), "9", "1" }, // BasicEmailNotificationTask
            { String.valueOf(newEntityId), "10","1" }, // BasicPaymentInfoTask cc info fetcher
            { String.valueOf(newEntityId), "12","2" }, // Paper invoice (for download PDF).
        };
        table = addTable(Constants.TABLE_PLUGGABLE_TASK, pluggableTaskColumns, pluggableTaskData, false);
        processTable(table);
        int lastCommonPT = table.nextId - 1;
        
        updateBettyTablesRows(table.index, table.nextId);
        
        // the parameters of these tasks
        //PLUGGABLE_TASK_PARAMETER
        String pluggableTaskParameterColumns[] =
        {
            "id",
            "task_id",
            "name",
            "int_value",
            "str_value",
            "float_value" 
        };
        String pluggableTaskParameterData[][] = {
            { String.valueOf(lastCommonPT), "design", null, "simple_invoice_b2b", null},
        };
        table = addTable(Constants.TABLE_PLUGGABLE_TASK_PARAMETER, pluggableTaskParameterColumns, 
                pluggableTaskParameterData, false);
        processTable(table);
        
        // email parameters. They are all optional
		addTaskParameter(table, lastCommonPT - 2, "smtp_server", null, 
    			null, null);
		addTaskParameter(table, lastCommonPT - 2, "from", null, 
    			contact.getEmail(), null);
		addTaskParameter(table, lastCommonPT - 2, "username", null, 
                null, null);
		addTaskParameter(table, lastCommonPT - 2, "password", null, 
                null, null);
		addTaskParameter(table, lastCommonPT - 2, "port", null, 
                null, null);
		addTaskParameter(table, lastCommonPT - 2, "reply_to", null, 
                null, null);
        addTaskParameter(table, lastCommonPT - 2, "bcc_to", null, 
                null, null);
        addTaskParameter(table, lastCommonPT - 2, "from_name", null, 
                contact.getOrganizationName(), null);
        
        updateBettyTablesRows(table.index, table.nextId);
        
        // PAYMENT METHODS
        //ENTITY_PAYMENT_METHOD_MAP
        String entityPaymentMethodMapColumns[] =
        {
            "entity_id",
            "payment_method_id",
        };
        
        String entityPaymentMethodMapData[][] = new String[3][2];
    	entityPaymentMethodMapData[0][0] = String.valueOf(newEntityId);
    	entityPaymentMethodMapData[0][1] = "1"; // cheque
        entityPaymentMethodMapData[1][0] = String.valueOf(newEntityId);
        entityPaymentMethodMapData[1][1] = "2"; // visa
        entityPaymentMethodMapData[2][0] = String.valueOf(newEntityId);
        entityPaymentMethodMapData[2][1] = "3"; // mc
        
        table = addTable(Constants.TABLE_ENTITY_PAYMENT_METHOD_MAP, 
                entityPaymentMethodMapColumns, 
                entityPaymentMethodMapData, false);
        processTable(table);
        
        //PREFERENCE
        String preferenceColumns[] =
        {
            "id",
            "type_id",
            "table_id",
            "foreign_id",
            "int_value",
            "str_value",
            "float_value"
        };
        // the table_id = 5, foregin_id = 1, means entity = 1
        String preferenceData[][] = {
            {"1", "5", String.valueOf(newEntityId), "0", null, null }, // no automatic processing by default
            {"2", "5", String.valueOf(newEntityId), null, "/billing/css/jbilling.css", null },
            {"3", "5", String.valueOf(newEntityId), null, "/billing/graphics/jbilling.jpg", null },
            {"4", "5", String.valueOf(newEntityId), "5", null, null }, // grace period
            {"5", "5", String.valueOf(newEntityId), null, null, "10" },
            {"6", "5", String.valueOf(newEntityId), null, null, "0" },
            {"7", "5", String.valueOf(newEntityId), "0", null, null },
            {"8", "5", String.valueOf(newEntityId), "1", null, null },
            {"9", "5", String.valueOf(newEntityId), "1", null, null },
            {"10","5", String.valueOf(newEntityId), "0", null, null },
            {"11","5", String.valueOf(newEntityId), String.valueOf(rootUserId), null, null },
            {"12","5", String.valueOf(newEntityId), "1", null, null },
            {"13","5", String.valueOf(newEntityId), "1", null, null },
			{"14","5", String.valueOf(newEntityId), "0", null, null },
        };
        table = addTable(Constants.TABLE_PREFERENCE, preferenceColumns, 
                preferenceData, false);
        processTable(table);

        //REPORT_ENTITY_MAP
        String reportEntityColumns[] =
        {
            "entity_id",
            "report_id",
        };
        String reportEntityData[][] = {
            {String.valueOf(newEntityId),"1"},
            {String.valueOf(newEntityId),"2"},
            {String.valueOf(newEntityId),"3"},
            {String.valueOf(newEntityId),"4"},
            {String.valueOf(newEntityId),"5"},
            {String.valueOf(newEntityId),"6"},            
            {String.valueOf(newEntityId),"7"},            
            {String.valueOf(newEntityId),"8"},            
            {String.valueOf(newEntityId),"9"},
            {String.valueOf(newEntityId),"10"},
            {String.valueOf(newEntityId),"11"},
            {String.valueOf(newEntityId),"12"},
            {String.valueOf(newEntityId),"13"},
            {String.valueOf(newEntityId),"14"},
            {String.valueOf(newEntityId),"15"},
            {String.valueOf(newEntityId),"16"},
            {String.valueOf(newEntityId),"17"},
            {String.valueOf(newEntityId),"18"},
        };
        table = addTable(Constants.TABLE_REPORT_ENTITY_MAP, 
                reportEntityColumns, 
                reportEntityData, false);
        processTable(table);
        
        //AGEING_ENTITY_STEP
        String ageingEntityStepColumns[] =
                {"id", "entity_id", "status_id", "days"};
        String ageingEntityStepMessageData[][] = {
            {String.valueOf(newEntityId), "1", "0"}, // active (for the welcome message) 
        };
        String ageingEntityStepIntColumns[][][] =
        { 
            { { "welcome_message", "<div> <br/> <p style='font-size:19px; font-weight: bold;'>Welcome to " + 
                contact.getOrganizationName() + " Billing!</p> <br/> <p style='font-size:14px; text-align=left; padding-left: 15;'>From here, you can review your latest invoice and get it paid instantly. You can also view all your previous invoices and payments, and set up the system for automatic payment with your credit card.</p> <p style='font-size:14px; text-align=left; padding-left: 15;'>What would you like to do today? </p> <ul style='font-size:13px; text-align=left; padding-left: 25;'> <li >To submit a credit card payment, follow the link on the left bar.</li> <li >To view a list of your invoices, click on the �Invoices� menu option. The first invoice on the list is your latest invoice. Click on it to see its details.</li> <li>To view a list of your payments, click on the �Payments� menu option. The first payment on the list is your latest payment. Click on it to see its details.</li> <li>To provide a credit card to enable automatic payment, click on the menu option 'Account', and then on 'Edit Credit Card'.</li> </ul> </div>" }, }, // act
        };
        table = addTable(Constants.TABLE_AGEING_ENTITY_STEP, 
                ageingEntityStepColumns, 
                ageingEntityStepMessageData, 
                ageingEntityStepIntColumns, false);
        processTable(table);
        
        //BILLING_PROCESS_CONFIGURATION
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, 1);
        String inAMonth = Util.parseDate(cal.getTime());
        String billingProcessConfigurationColumns[] =
        {
            "id",
            "entity_id",
            "next_run_date",
            "generate_report",
            "retries",
            "days_for_retry",
            "days_for_report",
            "review_status",
            "period_unit_id",
            "period_value",
            "due_date_unit_id",
            "due_date_value",
            "only_recurring",
            "invoice_date_process",
            "auto_payment"
        };
        String billingProcessConfigurationData[][] = {
            { String.valueOf(newEntityId), inAMonth, 
                "1", "0", "1", "3", "1", "2", "1", "1", "1", "1", "0", "0" },
        };
        
        table = addTable(Constants.TABLE_BILLING_PROCESS_CONFIGURATION, 
                billingProcessConfigurationColumns, 
                billingProcessConfigurationData, false);
        processTable(table);
        
        // CURRENCY_ENTITY_MAP
        String currencyEntityMapColumns[] =
        { "entity_id", "currency_id", };
        String currencyEntityMapData[][] = { 
            { String.valueOf(newEntityId), "1", }, 
        };
        table = addTable(Constants.TABLE_CURRENCY_ENTITY_MAP, currencyEntityMapColumns,
                currencyEntityMapData, false);
        processTable(table);
        
        //NOTIFICATION_MESSAGE
        String messageColumns[] = {
            "id",
            "type_id",
            "entity_id",
            "language_id",
        };
        // we provide at least those for english
        String messageData[][] = { 
            { "1", String.valueOf(newEntityId), "1"},  // invoice email
            { "2", String.valueOf(newEntityId), "1"},  // user reactivatesd
            { "3", String.valueOf(newEntityId), "1"},  // user overdue
            { "13", String.valueOf(newEntityId), "1"}, // order expiring
            { "16", String.valueOf(newEntityId), "1"}, // payment ok
            { "17", String.valueOf(newEntityId), "1"}, // payment failed
            { "18", String.valueOf(newEntityId), "1"}, // invoice reminder
            { "19", String.valueOf(newEntityId), "1"}, // credit card expi
        };
        table = addTable(Constants.TABLE_NOTIFICATION_MESSAGE, messageColumns, 
                messageData, false);
        processTable(table);
        int messageId = table.nextId - 8;

        //NOTIFICATION_MESSAGE_SECTION
        String sectionColumns[] = {
            "id",
            "message_id",
            "section",
        };
        String sectionData[][] = { 
            { String.valueOf(messageId), "1"},
            { String.valueOf(messageId), "2"},  
            { String.valueOf(messageId + 1), "1"},
            { String.valueOf(messageId + 1), "2"},  
            { String.valueOf(messageId + 2), "1"},
            { String.valueOf(messageId + 2), "2"},  
            { String.valueOf(messageId + 3), "1"},
            { String.valueOf(messageId + 3), "2"},  
            { String.valueOf(messageId + 4), "1"},
            { String.valueOf(messageId + 4), "2"},  
            { String.valueOf(messageId + 5), "1"},
            { String.valueOf(messageId + 5), "2"},  
            { String.valueOf(messageId + 6), "1"},
            { String.valueOf(messageId + 6), "2"},  
            { String.valueOf(messageId + 7), "1"},
            { String.valueOf(messageId + 7), "2"},  
        };
        table = addTable(Constants.TABLE_NOTIFICATION_MESSAGE_SECTION,
                sectionColumns, sectionData, false);
        processTable(table);
        int sectionId = table.nextId - 16;

        //NOTIFICATION_MESSAGE_LINE
        String lineColumns[] = {
            "id",
            "message_section_id",
            "content",
        };
        String lineData[][] = { 
            { String.valueOf(sectionId), "Billing Statement from |company_name|"},
            { String.valueOf(sectionId + 1), "Dear |first_name| |last_name|,\n\n This is to notify you that your latest invoice (number |number|) is now available. The total amount due is: |total|. You can view it by login in to:\n\n" + Util.getSysProp("url") + "/billing/user/login.jsp?entityId=|company_id|\n\nFor security reasons, your statement is password protected.\nTo login in, you will need your user name: |username| and your account password: |password|\n \n After logging in, please click on the menu option  �List�, to see all your invoices.  You can also see your payment history, your current purchase orders, as well as update your payment information and submit online payments.\n\n\nThank you for choosing |company_name|, we appreciate your business,\n\nBilling Department\n|company_name|"},
            { String.valueOf(sectionId + 2), "You account is now up to date"},
            { String.valueOf(sectionId + 3), "Dear |first_name| |last_name|,\n\n  This email is to notify you that we have received your latest payment and your account no longer has an overdue balance.\n\n  Thank you for keeping your account up to date,\n\n\nBilling Department\n|company_name|"},  
            { String.valueOf(sectionId + 4), "Overdue Balance"},
            { String.valueOf(sectionId + 5), "Dear |first_name| |last_name|,\n\nOur records show that you have an overdue balance on your account. Please submit a payment as soon as possible.\n\nBest regards,\n\nBilling Department\n|company_name|"},  
            { String.valueOf(sectionId + 6), "Your service from |company_name| is about to expire"},
            { String.valueOf(sectionId + 7), "Dear |first_name| |last_name|,\n\nYour service with us will expire on |period_end|. Please make sure to contact customer service for a renewal.\n\nRegards,\n\nBilling Department\n|company_name|"},  
            { String.valueOf(sectionId + 8), "Thank you for your payment"},
            { String.valueOf(sectionId + 9), "Dear |first_name| |last_name|\n\n   We have received your payment made with |method| for a total of |total|.\n\n   Thank you, we appreciate your business,\n\nBilling Department\n|company_name|"},  
            { String.valueOf(sectionId + 10), "Payment failed"},
            { String.valueOf(sectionId + 11), "Dear |first_name| |last_name|\n\n   A payment with |method| was attempted for a total of |total|, but it has been rejected by the payment processor.\nYou can update your payment information and submit an online payment by login into :\n" + Util.getSysProp("url") + "/billing/user/login.jsp?entityId=|company_id|\n\nFor security reasons, your statement is password protected.\nTo login in, you will need your user name: |username| and your account password: |password|\n\nThank you,\n\nBilling Department\n|company_name|"},  
            { String.valueOf(sectionId + 12), "Invoice reminder"},
            { String.valueOf(sectionId + 13), "Dear |first_name| |last_name|\n\n   This is a reminder that the invoice number |number| remains unpaid. It was sent to you on |date|, and its total is |total|. Although you still have |days| days to pay it (its due date is |dueDate|), we would greatly appreciate if you can pay it at your earliest convenience.\n\nYours truly,\n\nBilling Department\n|company_name|"},  
            { String.valueOf(sectionId + 14), "It is time to update your credit card"},
            { String.valueOf(sectionId + 15), "Dear |first_name| |last_name|,\n\nWe want to remind you that the credit card that we have in our records for your account is about to expire. Its expiration date is |expiry_date|.\n\nUpdating your credit card is easy. Just login into " + Util.getSysProp("url") + "/billing/user/login.jsp?entityId=|company_id|. using your user name: |username| and password: |password|. After logging in, click on 'Account' and then 'Edit Credit Card'. \nThank you for keeping your account up to date.\n\nBilling Department\n|company_name|"},  
        };
        table = addTable(Constants.TABLE_NOTIFICATION_MESSAGE_LINE,
                lineColumns, lineData, false);
        processTable(table);
        
        //ENTITY_DELIVERY_METHOD_MAP
        String methodsColumns[] = {
                "entity_id",
                "method_id",
            };
            String methodsData[][] = { 
                { String.valueOf(newEntityId), "1"},
                { String.valueOf(newEntityId), "2"},
                { String.valueOf(newEntityId), "3"},
            };
            table = addTable(Constants.TABLE_ENTITY_DELIVERY_METHOD_MAP,
                    methodsColumns, methodsData, false);
            processTable(table);

        return newEntityId;
    }
    
    void addTaskParameter(Table ptTable, int taskId, 
    		String desc, Integer intP, String strP, Float floP)
			throws SQLException {
		PreparedStatement stmt = conn.prepareStatement(
				"insert into pluggable_task_parameter " +
				"(id, task_id, name, int_value, str_value, float_value)" +
				" values(?, ?, ?, ?, ?, ?)");
		stmt.setInt(1, ptTable.nextId);
		stmt.setInt(2, taskId);
		stmt.setString(3, desc);
		if (intP != null) {
			stmt.setInt(4, intP.intValue());
		} else {
			stmt.setNull(4, Types.INTEGER);
		}
		stmt.setString(5, strP);
		if (floP != null) {
			stmt.setFloat(6, floP.floatValue());
		} else {
			stmt.setNull(6, Types.FLOAT);
		}
		stmt.executeUpdate();
		stmt.close();
		ptTable.nextId++;
	}
    
    void addTask(Table ptTable, int entityId, int type, int position) 
    		throws SQLException {
        PreparedStatement stmt = conn.prepareStatement(
        		"insert into pluggable_task (id, entity_id, type_id, processing_order)" +
        		" values(?, ?, ?, ?)");
        stmt.setInt(1, ptTable.nextId);
        stmt.setInt(2, entityId);
        stmt.setInt(3, type);
        stmt.setInt(4, position);
        stmt.executeUpdate();
        stmt.close();
    	ptTable.nextId++;
    }
}
