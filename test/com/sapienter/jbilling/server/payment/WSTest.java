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
package com.sapienter.jbilling.server.payment;

import java.util.Calendar;

import javax.xml.namespace.QName;

import junit.framework.TestCase;

import org.apache.axis.client.Call;
import org.apache.axis.client.Service;
import org.apache.axis.encoding.ser.BeanDeserializerFactory;
import org.apache.axis.encoding.ser.BeanSerializerFactory;

import com.sapienter.jbilling.server.entity.PaymentAuthorizationDTO;
import com.sapienter.jbilling.server.entity.PaymentInfoChequeDTO;
import com.sapienter.jbilling.server.util.Constants;

/**
 * @author Emil
 */
public class WSTest extends TestCase {
      
    public void testApplyGet() {
        try {
            String endpoint = "https://localhost/jboss-net/services/billing";
            
            Service  service = new Service();
            Call  call = (Call) service.createCall();
            call.setTargetEndpointAddress( new java.net.URL(endpoint) );
            call.setUsername("testapi");
            call.setPassword("asdfasdf");
            

            // PaymentWS
            QName qn = new QName("http://www.sapienter.com/billing", "PaymentWS");
            BeanSerializerFactory ser1 = new BeanSerializerFactory(
                    PaymentWS.class, qn);
            BeanDeserializerFactory ser2 = new BeanDeserializerFactory (
                    PaymentWS.class, qn);
            call.registerTypeMapping(PaymentWS.class, qn, ser1, ser2); 

            // PaymentInfoChequeDTO            
            qn = new QName("http://www.sapienter.com/billing", "PaymentInfoChequeDTO");
            ser1 = new BeanSerializerFactory(
                    PaymentInfoChequeDTO.class, qn);
            ser2 = new BeanDeserializerFactory (
                    PaymentInfoChequeDTO.class, qn);
            call.registerTypeMapping(PaymentInfoChequeDTO.class, qn, ser1, ser2); 

            // PaymentAuthorizationDTO            
            qn = new QName("http://www.sapienter.com/billing", "PaymentAuthorizationDTO");
            ser1 = new BeanSerializerFactory(PaymentAuthorizationDTO.class, qn);
            ser2 = new BeanDeserializerFactory ( PaymentAuthorizationDTO.class,
                     qn);
            call.registerTypeMapping(PaymentAuthorizationDTO.class, qn, ser1, ser2); 
           
            /*
             * apply payment
             */
            call.setOperationName("applyPayment");
            PaymentWS payment = new PaymentWS();
            payment.setAmount(new Float(4.32));
            payment.setIsRefund(new Integer(0));
            payment.setMethodId(Constants.PAYMENT_METHOD_CHEQUE);
            payment.setPaymentDate(Calendar.getInstance().getTime());
            payment.setResultId(Constants.RESULT_ENTERED);
            payment.setCurrencyId(new Integer(1));
            payment.setUserId(new Integer(1906));
            
            PaymentInfoChequeDTO cheque = new PaymentInfoChequeDTO();
            cheque.setBank("ws bank");
            cheque.setDate(Calendar.getInstance().getTime());
            cheque.setNumber("2232-2323-2323");
            payment.setCheque(cheque);
           
            System.out.println("Applying payment");
            Integer ret = (Integer) call.invoke( new Object[] { 
                        payment, new Integer(1168) } );
            System.out.println("Created payemnt " + ret);
            assertNotNull("Didn't get the payment id", ret);
            
            /*
             * get
             */
            //verify the created payment       
            call.setOperationName("getPayment");
            System.out.println("Getting created payment");
            PaymentWS retPayment = (PaymentWS) call.invoke( new Object[] { ret } );
            assertNotNull("didn't get payment ", retPayment);
            assertEquals("created payment result", retPayment.getResultId(),
                    payment.getResultId());
            assertEquals("created payment cheque ", retPayment.getCheque().getNumber(),
                    payment.getCheque().getNumber());
            assertEquals("created payment user ", retPayment.getUserId(), 
                    payment.getUserId());
            
            /*
             * get latest
             */
            //verify the created payment       
            call.setOperationName("getLatestPayment");
            System.out.println("Getting latest");
            retPayment = (PaymentWS) call.invoke( new Object[] { 
                    new Integer(1906)} );
            assertNotNull("didn't get payment ", retPayment);
            assertEquals("latest id", ret, retPayment.getId());
            assertEquals("created payment result", retPayment.getResultId(),
                    payment.getResultId());
            assertEquals("created payment cheque ", retPayment.getCheque().getNumber(),
                    payment.getCheque().getNumber());
            assertEquals("created payment user ", retPayment.getUserId(), 
                    payment.getUserId());
            try {
                System.out.println("Getting latest - invalid");
                retPayment = (PaymentWS) call.invoke( new Object[] { 
                        new Integer(1736)} );
                fail("User 1736 belongs to entity 301");
            } catch (Exception e) {
            }
            
            /*
             * get last
             */
            call.setOperationName("getLastPayments");
            System.out.println("Getting last");
            int retPayments[] = (int[]) call.invoke( new Object[] { 
                    new Integer(1906), new Integer(2)} );
            assertNotNull("didn't get payment ", retPayments);
            // fetch the payment
            call.setOperationName("getPayment");
            retPayment = (PaymentWS) call.invoke( new Object[] { new Integer(retPayments[0]) } );
            assertEquals("created payment result", retPayment.getResultId(),
                    payment.getResultId());
            assertEquals("created payment cheque ", retPayment.getCheque().getNumber(),
                    payment.getCheque().getNumber());
            assertEquals("created payment user ", retPayment.getUserId(), 
                    payment.getUserId());
            assertTrue("No more than two records", retPayments.length <= 2);
            try {
                System.out.println("Getting last - invalid");
                retPayment = (PaymentWS) call.invoke( new Object[] { 
                        new Integer(1736), new Integer(2)} );
                fail("User 1736 belongs to entity 301");
            } catch (Exception e) {
            }
            
            
            /*
             * create refund
             */
            call.setOperationName("applyPayment");
            PaymentWS refund = new PaymentWS();
            refund.setAmount(new Float(4.32));
            refund.setIsRefund(new Integer(1));
            refund.setMethodId(Constants.PAYMENT_METHOD_CHEQUE);
            refund.setPaymentDate(Calendar.getInstance().getTime());
            refund.setResultId(Constants.RESULT_OK);
            refund.setUserId(new Integer(1906));
            refund.setCurrencyId(new Integer(1));

            refund.setPaymentId(retPayment.getId());
            
            cheque = new PaymentInfoChequeDTO();
            cheque.setBank("our bank");
            cheque.setDate(Calendar.getInstance().getTime());
            cheque.setNumber("22999-2323-2323");
            refund.setCheque(cheque);
           
            System.out.println("Applying refund");
            ret = (Integer) call.invoke( new Object[] { 
                        refund, null } );
            System.out.println("Created refund " + ret);
            assertNotNull("Didn't get the refund id", ret);
            
            /*
             * get refund
             */
            //verify the created payment       
            call.setOperationName("getPayment");
            System.out.println("Getting created refund");
            retPayment = (PaymentWS) call.invoke( new Object[] { ret } );
            assertNotNull("didn't get payment ", retPayment);
            assertEquals("created refund flag", retPayment.getIsRefund(),
                    refund.getIsRefund());
            assertEquals("created refund cheque ", retPayment.getCheque().getNumber(),
                    refund.getCheque().getNumber());
            assertEquals("created refund user ", retPayment.getUserId(), 
                    refund.getUserId());

 
        } catch (Exception e) {
            e.printStackTrace();
            fail("Exception caught:" + e);
        }
    }


}
