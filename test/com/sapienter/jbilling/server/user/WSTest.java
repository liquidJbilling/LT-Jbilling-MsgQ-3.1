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

/*
 * Created on Dec 18, 2003
 *
 * Copyright Sapienter Enterprise Software
 */
package com.sapienter.jbilling.server.user;

import java.util.Calendar;
import java.util.Random;

import javax.xml.namespace.QName;

import junit.framework.TestCase;

import org.apache.axis.client.Call;
import org.apache.axis.client.Service;
import org.apache.axis.encoding.ser.BeanDeserializerFactory;
import org.apache.axis.encoding.ser.BeanSerializerFactory;

import com.sapienter.jbilling.server.entity.ContactDTO;
import com.sapienter.jbilling.server.entity.CreditCardDTO;
import com.sapienter.jbilling.server.entity.InvoiceLineDTO;
import com.sapienter.jbilling.server.invoice.InvoiceLineDTOEx;
import com.sapienter.jbilling.server.invoice.InvoiceWS;
import com.sapienter.jbilling.server.order.OrderLineWS;
import com.sapienter.jbilling.server.order.OrderWS;
import com.sapienter.jbilling.server.util.Constants;

/**
 * @author Emil
 */
public class WSTest extends TestCase {
      
    public void testGetUser() {
        try {
            /* If using https, you need an ssh key. You can configure ANT to
             * pass on the java properties like this:
             * export ANT_OPTS="-Djavax.net.ssl.trustStore=c:\\\\sapienter\\\\ssl\\\\client.keystore -Djavax.net.ssl.trustStorePassword=pass"
             */
            String endpoint = "http://localhost/jboss-net/services/billing";
            
            Service  service = new Service();
            Call  call = (Call) service.createCall();
            call.setTargetEndpointAddress( new java.net.URL(endpoint) );
            call.setOperationName("getUserWS");
            call.setReturnClass(UserWS.class);
            call.setUsername("admin");
            call.setPassword("asdfasdf");

            // UserWS            
            QName qn = new QName("http://www.sapienter.com/billing", "UserWS");
            BeanSerializerFactory ser1 = new BeanSerializerFactory(
                    UserWS.class, qn);
            BeanDeserializerFactory ser2 = new BeanDeserializerFactory (
                    UserWS.class, qn);
            call.registerTypeMapping(UserWS.class, qn, ser1, ser2); 

            // ContactWS
            qn = new QName("http://www.sapienter.com/billing", "ContactWS");
            ser1 = new BeanSerializerFactory(
                    ContactWS.class, qn);
            ser2 = new BeanDeserializerFactory (
                    ContactWS.class, qn);
            call.registerTypeMapping(ContactWS.class, qn, ser1, ser2); 

            // CreditCardDTO            
            qn = new QName("http://www.sapienter.com/billing", "CreditCardDTO");
            ser1 = new BeanSerializerFactory(
                    CreditCardDTO.class, qn);
            ser2 = new BeanDeserializerFactory (
                    CreditCardDTO.class, qn);
            call.registerTypeMapping(CreditCardDTO.class, qn, ser1, ser2); 

            System.out.println("Getting user 2");
            UserWS ret = (UserWS) call.invoke( new Object[] { new Integer(2) } );
            assertEquals(new Integer(2), ret.getUserId());
            try {
                System.out.println("Getting invalid user 13");
                ret = (UserWS) call.invoke( new Object[] { new Integer(13) } );
                fail("Shouldn't be able to access user 13");
            } catch(Exception e) {
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            fail("Exception caught:" + e);
        }
    }


    public void testCreateUpdateDeleteUser() {
        try {
            String endpoint = "http://localhost/jboss-net/services/billing";
            
            Service  service = new Service();
            Call  call = (Call) service.createCall();
            call.setTargetEndpointAddress( new java.net.URL(endpoint) );
            call.setOperationName("createUser");
            //call.setReturnClass(Integer.class);
            call.setUsername("admin");
            call.setPassword("asdfasdf");
            

            // UserWS            
            QName qn = new QName("http://www.sapienter.com/billing", "UserWS");
            BeanSerializerFactory ser1 = new BeanSerializerFactory(
                    UserWS.class, qn);
            BeanDeserializerFactory ser2 = new BeanDeserializerFactory (
                    UserWS.class, qn);
            call.registerTypeMapping(UserWS.class, qn, ser1, ser2); 

            // ContactWS            
            qn = new QName("http://www.sapienter.com/billing", "ContactWS");
            ser1 = new BeanSerializerFactory(
                    ContactWS.class, qn);
            ser2 = new BeanDeserializerFactory (
                    ContactWS.class, qn);
            call.registerTypeMapping(ContactDTO.class, qn, ser1, ser2); 

            // CreditCardDTO            
            qn = new QName("http://www.sapienter.com/billing", "CreditCardDTO");
            ser1 = new BeanSerializerFactory(
                    CreditCardDTO.class, qn);
            ser2 = new BeanDeserializerFactory (
                    CreditCardDTO.class, qn);
            call.registerTypeMapping(CreditCardDTO.class, qn, ser1, ser2); 

            // OrderWS            
            qn = new QName("http://www.sapienter.com/billing", "OrderWS");
            ser1 = new BeanSerializerFactory(
                    OrderWS.class, qn);
            ser2 = new BeanDeserializerFactory (
                    OrderWS.class, qn);
            call.registerTypeMapping(OrderWS.class, qn, ser1, ser2); 

            // OrderLineWS            
            qn = new QName("http://www.sapienter.com/billing", "OrderLineWS");
            ser1 = new BeanSerializerFactory(
                    OrderLineWS.class, qn);
            ser2 = new BeanDeserializerFactory (
                    OrderLineWS.class, qn);
            call.registerTypeMapping(OrderLineWS.class, qn, ser1, ser2); 

            // CreateResponseWS            
            qn = new QName("http://www.sapienter.com/billing", "CreateResponseWS");
            ser1 = new BeanSerializerFactory(
                    CreateResponseWS.class, qn);
            ser2 = new BeanDeserializerFactory (
                    CreateResponseWS.class, qn);
            call.registerTypeMapping(CreateResponseWS.class, qn, ser1, ser2); 
            
            // InvoiceWS            
            qn = new QName("http://www.sapienter.com/billing", "InvoiceWS");
            ser1 = new BeanSerializerFactory(
                    InvoiceWS.class, qn);
            ser2 = new BeanDeserializerFactory (
                    InvoiceWS.class, qn);
            call.registerTypeMapping(InvoiceWS.class, qn, ser1, ser2); 

            // InvoiceLineDTO            
            qn = new QName("http://www.sapienter.com/billing", "InvoiceLineDTO");
            ser1 = new BeanSerializerFactory(
                    InvoiceLineDTO.class, qn);
            ser2 = new BeanDeserializerFactory (
                    InvoiceLineDTO.class, qn);
            call.registerTypeMapping(InvoiceLineDTO.class, qn, ser1, ser2); 

            // InvoiceLineDTOEx            
            qn = new QName("http://www.sapienter.com/billing", "InvoiceLineDTOEx");
            ser1 = new BeanSerializerFactory(
                    InvoiceLineDTOEx.class, qn);
            ser2 = new BeanDeserializerFactory (
                    InvoiceLineDTOEx.class, qn);
            call.registerTypeMapping(InvoiceLineDTOEx.class, qn, ser1, ser2); 

            
            /*
             * Create
             */
            Random rnd = new Random();
            UserWS newUser = new UserWS();
            newUser.setUserName("webServicesUserNameCreated" + rnd.nextInt(100));
            String newUserName = newUser.getUserName();
            newUser.setPassword("asdfasdf");
            newUser.setLanguageId(new Integer(1));
            newUser.setMainRoleId(new Integer(5));
            newUser.setStatusId(UserDTOEx.STATUS_ACTIVE);
            
            // add a contact
            ContactWS contact = new ContactWS();
            contact.setEmail("frodo@shire.com");
            contact.setFirstName("Frodo");
            contact.setLastName("Baggins");
            String fields[] = new String[2];
            fields[0] = "1";
            fields[1] = "2"; // the ID of the CCF for the processor
            String fieldValues[] = new String[2];
            fieldValues[0] = "serial-from-ws";
            fieldValues[1] = "FAKE_2"; // the plug-in parameter of the processor
            contact.setFieldNames(fields);
            contact.setFieldValues(fieldValues);
            newUser.setContact(contact);
            
            // add a credit card
            CreditCardDTO cc = new CreditCardDTO();
            cc.setName("Frodo Baggins");
            cc.setNumber("4111111111111152");
            cc.setExpiry(Calendar.getInstance().getTime());
            newUser.setCreditCard(cc);
            
            System.out.println("Creating user ...");
            Integer newUserId = (Integer) call.invoke( new Object[] { newUser } );
            assertNotNull("The user was not created", newUserId);
            
            System.out.println("Getting the id of the new user");
            call.setOperationName("getUserId");
            Integer ret = (Integer) call.invoke( new Object[] { newUserName} );
            assertEquals("Id of new user found", newUserId, ret);
            
            //verify the created user       
            call.setOperationName("getUserWS");
            //call.setReturnClass(UserWS.class);
            System.out.println("Getting created user ");
            UserWS retUser = (UserWS) call.invoke( new Object[] { newUserId } );
            assertEquals("created username", retUser.getUserName(),
                    newUser.getUserName());
            assertEquals("created user first name", retUser.getContact().getFirstName(),
                    newUser.getContact().getFirstName());     
            System.out.println("My user: " + retUser);
            
            
            /*
             * Make a create mega call
             */
            System.out.println("Making mega call");
            call.setOperationName("create");
            retUser.setUserName("megaUser");
            // need to reset the password, it came encrypted
            // let's use a long one
            retUser.setPassword("0fu3js8wl1;a$e2w)xRQ"); 
            
            // need an order for it
            OrderWS newOrder = new OrderWS();
            newOrder.setUserId(new Integer(-1)); // it does not matter, the user will be created
            newOrder.setBillingTypeId(Constants.ORDER_BILLING_PRE_PAID);
            newOrder.setPeriod(new Integer(1)); // once
            newOrder.setCurrencyId(new Integer(1));
            
            // now add some lines
            OrderLineWS lines[] = new OrderLineWS[2];
            OrderLineWS line;
            
            line = new OrderLineWS();
            line.setPrice(new Float(10));
            line.setTypeId(Constants.ORDER_LINE_TYPE_ITEM);
            line.setQuantity(new Integer(1));
            line.setAmount(new Float(10));
            line.setDescription("Fist line");
            line.setItemId(new Integer(1));
            lines[0] = line;
            
            line = new OrderLineWS();
            line.setPrice(new Float(10));
            line.setTypeId(Constants.ORDER_LINE_TYPE_ITEM);
            line.setQuantity(new Integer(1));
            line.setAmount(new Float(10));
            line.setDescription("Second line");
            line.setItemId(new Integer(2));
            lines[1] = line;
            
            newOrder.setOrderLines(lines);
            
            CreateResponseWS mcRet = (CreateResponseWS) call.invoke(
                    new Object[] { retUser, newOrder} );
            
            System.out.println("Validating new invoice");
            // validate that the results are reasonable
            assertNotNull("Mega call result can't be null", mcRet);
            assertNotNull("Mega call invoice result can't be null", mcRet.getInvoiceId());
            // get the invoice
            call.setOperationName("getInvoiceWS");
            InvoiceWS retInvoice = (InvoiceWS) call.invoke( 
                    new Object[] { mcRet.getInvoiceId() } );
            assertNotNull("New invoice not present", retInvoice);
            assertEquals("Balance of invoice should be zero, is paid", retInvoice.getBalance(),
                    new Float(0));
            assertEquals("Total of invoice should be total of order", retInvoice.getTotal(),
                    new Float(20));
            assertEquals("New invoice paid", retInvoice.getToProcess(), new Integer(0));
            
            // TO-DO test that the invoice total is equal to the order total
 
            /*
             * Update
             */
            // now update the created user
            retUser.setPassword("newPassword");
            call.setOperationName("updateUser");
            call.setReturnClass(null);
            System.out.println("Updating user...");
            call.invoke( new Object[] { retUser } );
            // and ask for it to verify the modification
            call.setOperationName("getUserWS");
            System.out.println("Getting updated user ");
            retUser = (UserWS) call.invoke( new Object[] { newUserId } );
            assertNotNull("Didn't get updated user", retUser);
            assertEquals("Password ", retUser.getPassword(), 
                    "Kg8kTBrB5Mr.y.SNPmHXr"); // this is how it translates after encryption
            assertEquals("Contact name", retUser.getContact().getFirstName(),
                    newUser.getContact().getFirstName());

            // again, for the contact info, and no cc
            retUser.getContact().setFirstName("New Name");
            retUser.getContact().setLastName("New L.Name");
            retUser.setCreditCard(null);
            // call the update
            call.setOperationName("updateUser");
            retUser.setPassword("newPassword"); // reset, the one I have is crypted
            call.invoke( new Object[] { retUser } );
            // fetch the user
            call.setOperationName("getUserWS");
            UserWS updatedUser = (UserWS) call.invoke( new Object[] { newUserId } );
            assertEquals("updated f name", retUser.getContact().getFirstName(),
                    updatedUser.getContact().getFirstName());
            assertEquals("updated l name", retUser.getContact().getLastName(),
                    updatedUser.getContact().getLastName());
            System.out.println("Update result:" + updatedUser);

            // now update the contact only
            retUser.getContact().setFirstName("New Name2");
            call.setOperationName("updateUserContact");
            call.invoke( new Object[] { retUser.getUserId(), new Integer(2), retUser.getContact() } );
             // fetch the user
            call.setOperationName("getUserWS");
            updatedUser = (UserWS) call.invoke( new Object[] { newUserId } );
            assertEquals("updated contact f name", retUser.getContact().getFirstName(),
                    updatedUser.getContact().getFirstName());

            /*
             * Delete
             */
            // now delete this new guy
            call.setOperationName("deleteUser");
            call.setReturnClass(null);
            System.out.println("Deleting user..." + newUserId);
            call.invoke( new Object[] { newUserId } );
            
            // try to fetch the deleted user
            System.out.println("Getting deleted user " + newUserId);
            call.setOperationName("getUserWS");
            updatedUser = (UserWS) call.invoke( new Object[] { newUserId } );
            assertEquals(updatedUser.getDeleted(), new Integer(1));
            
            // verify I can't delete users from another company 
            try {
                System.out.println("Deleting user base user ... 13");
                call.invoke( new Object[] { new Integer(13) } );
                fail("Shouldn't be able to access user 13");
            } catch(Exception e) {
            }
            
            
            /*
             * Get list of active customers
             */
            call.setOperationName("getUsersInStatus");
            System.out.println("Getting active users...");
            int[] users = (int[]) call.invoke( 
                    new Object[] { new Integer(1) } );
            assertEquals(users.length, 3);
            for (int f = 0; f < users.length; f++) {
                System.out.println("Got user " + users[f]);
            }

            /*
             * Get list of not active customers
             */
            call.setOperationName("getUsersNotInStatus");
            System.out.println("Getting NOTactive users...");
            users = (int[]) call.invoke( 
                    new Object[] { new Integer(1) } );
            assertEquals(users.length, 1);
            for (int f = 0; f < users.length; f++) {
                System.out.println("Got user " + users[f]);
            }

            /*
             * Get list using a custom field
             */
            call.setOperationName("getUsersByCustomField");
            System.out.println("Getting by custom field...");
            users = (int[]) call.invoke( 
                    new Object[] { new Integer(1), new String("serial-from-ws") } );
            
            // only the one from the megacall is not deleted and has the custom field
            assertEquals(users.length, 1); 
            assertEquals(users[0], mcRet.getUserId().intValue());
            
            System.out.println("Done");
        } catch (Exception e) {
            e.printStackTrace();
            fail("Exception caught:" + e);
        }
    }
}
