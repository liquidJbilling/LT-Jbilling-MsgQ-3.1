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
 * Created on Dec 24, 2003
 *
 * Copyright Sapienter Enterprise Software
 */
package com.sapienter.jbilling.server.util;

import java.lang.reflect.Method;
import java.util.ArrayList;

import javax.ejb.FinderException;
import javax.naming.NamingException;

import org.apache.log4j.Logger;

import com.sapienter.jbilling.common.SessionInternalError;
import com.sapienter.jbilling.interfaces.OrderLineEntityLocal;
import com.sapienter.jbilling.server.entity.CreditCardDTO;
import com.sapienter.jbilling.server.invoice.InvoiceBL;
import com.sapienter.jbilling.server.order.OrderBL;
import com.sapienter.jbilling.server.order.OrderLineWS;
import com.sapienter.jbilling.server.order.OrderWS;
import com.sapienter.jbilling.server.payment.PaymentBL;
import com.sapienter.jbilling.server.payment.PaymentWS;
import com.sapienter.jbilling.server.user.ContactWS;
import com.sapienter.jbilling.server.user.UserBL;
import com.sapienter.jbilling.server.user.UserWS;
import com.sapienter.jbilling.server.user.ContactBL;

/**
 * @author Emil
 */
public class WSMethodSecurityProxy extends WSMethodBaseSecurityProxy {
    
    private ArrayList<Method> methods = new ArrayList<Method>();
    private Class local = null;
    private Class remote = null;
    private static Logger LOG = Logger.getLogger(WSMethodSecurityProxy.class);
    
    private void addMethod(String name, Class params[]) throws InstantiationException {
        try {
            methods.add(local.getDeclaredMethod(name, params));
            methods.add(remote.getDeclaredMethod(name, params));
        } catch(NoSuchMethodException e) {
            String msg = "Failed to find method " + name;
            LOG.error(msg, e);
            throw new InstantiationException(msg);
         }
    }


    public void init(Class beanHome, Class beanRemote,
            Class beanLocalHome, Class beanLocal, Object securityMgr)
            throws InstantiationException {

       local = beanLocal;
       remote = beanRemote;
       // getInvoiceWS
       Class params[] = new Class[1];
       params[0] = Integer.class;
       addMethod("getInvoiceWS",params);
       
       // getLatestInvoice
       params = new Class[1];
       params[0] = Integer.class;
       addMethod("getLatestInvoice",params);

       // getLastInvoices
       params = new Class[2];
       params[0] = Integer.class;
       params[1] = Integer.class;
       addMethod("getLastInvoices",params);
       
       // getUserWS
       params = new Class[1];
       params[0] = Integer.class;
       addMethod("getUserWS",params);
       
       // deleteUser
       // the parameters are the same
       addMethod("deleteUser",params);
       
       // updateUser
       params = new Class[1];
       params[0] = UserWS.class;
       addMethod("updateUser",params);

       // updateUserContact
       params = new Class[3];
       params[0] = Integer.class;
       params[1] = Integer.class;
       params[2] = ContactWS.class;
       addMethod("updateUserContact",params);

       // createOrder
       params = new Class[1];
       params[0] = OrderWS.class;
       addMethod("createOrder",params);

       // createOrderPreAuthorize
       params = new Class[1];
       params[0] = OrderWS.class;
       addMethod("createOrderPreAuthorize",params);

       // updateOrder - takes same parameters as create
       addMethod("updateOrder",params);
       
       // getOrder
       params = new Class[1];
       params[0] = Integer.class;
       addMethod("getOrder",params);
       
       // deleteOrder
       params = new Class[1];
       params[0] = Integer.class;
       addMethod("deleteOrder",params);
       
       // getLatestOrder
       params = new Class[1];
       params[0] = Integer.class;
       addMethod("getLatestOrder",params);
       
       // getLastOrders
       params = new Class[2];
       params[0] = Integer.class;
       params[1] = Integer.class;
       addMethod("getLastOrders",params);
       
       // applyPayment
       params = new Class[2];
       params[0] = PaymentWS.class;
       params[1] = Integer.class;
       addMethod("applyPayment",params);
       
       // getPayment
       params = new Class[1];
       params[0] = Integer.class;
       addMethod("getPayment",params);
       
       // getLatestPayment
       params = new Class[1];
       params[0] = Integer.class;
       addMethod("getLatestPayment",params);
       
       // getLastPayments
       params = new Class[2];
       params[0] = Integer.class;
       params[1] = Integer.class;
       addMethod("getLastPayments",params);
       
       // getOrderLine
       params = new Class[1];
       params[0] = Integer.class;
       addMethod("getOrderLine",params);
       
       // updateOrderLine
       params = new Class[1];
       params[0] = OrderLineWS.class;
       addMethod("updateOrderLine",params);

       // getOrderByPeriod
       params = new Class[2];
       params[0] = Integer.class;
       params[1] = Integer.class;
       addMethod("getOrderByPeriod",params);

       // getUserContactsWS
       params = new Class[1];
       params[0] = Integer.class;
       addMethod("getUserContactsWS",params);

       // updateCreditCard
       params = new Class[2];
       params[0] = Integer.class;
       params[1] = CreditCardDTO.class;
       addMethod("updateCreditCard",params);
       
       //payInvoice
       params = new Class[1];
       params[0] = Integer.class;
       addMethod("payInvoice", params);

       // set the parent methods
       setMethods(methods.toArray(new Method[methods.size()]));          

    }
    
    public void invoke(Method m, Object[] args, Object bean)
            throws SecurityException {
        //log.debug("invoke, m=" + m);
        if (!isMethodPresent(m)) {
            return;
        }
        try {
            if(m.getName().equals("getInvoiceWS") || m.getName().equals("payInvoice")) {
                Integer arg = (Integer) args[0];
                
                if (arg != null) {
                    InvoiceBL bl = new InvoiceBL(arg);
                    validate(bl.getEntity().getUser().getUserId());
                }
            } else if (m.getName().equals("getLatestInvoice") || 
                    m.getName().equals("getLastInvoices")) {
                Integer userId = (Integer) args[0];
                
                if (userId != null) {
                    UserBL bl = new UserBL(userId);
                    validate(userId);
                }
            } else if(m.getName().equals("updateUserContact")) {
                Integer userId = (Integer) args[0];
                Integer contactTypeId = (Integer) args[1];
                
                if (userId != null) {
                    validate(userId);
                }
                // check that this is a valid contact type id
                ContactBL con = new ContactBL();
                try {
                    Integer entityId = con.getTypeHome().findByPrimaryKey(
                            contactTypeId).getEntity().getId();
                    UserBL user = new UserBL();
                    user.setRoot(context.getCallerPrincipal().getName());
                    if (!entityId.equals(user.getEntity().getEntity().getId())) {
                        throw new SecurityException("Contact type belongs to entity " + entityId);
                    }
                } catch (Exception e) {
                    throw new SecurityException("Invalid contact type " + contactTypeId);
                }
            } else if(m.getName().equals("getUserWS") || 
                    m.getName().equals("deleteUser") ||
                    m.getName().equals("getUserContactsWS") ||
                    m.getName().equals("updateCreditCard")) {
                Integer arg = (Integer) args[0];
            
                if (arg != null) {
                    validate(arg);
                }
            } else if(m.getName().equals("updateUser")) { // it only takes a UserWS as argument
                UserWS arg = (UserWS) args[0];
                if (arg != null) {
                    validate(arg.getUserId());
                }
            } else if(m.getName().equals("createOrder") || 
                    m.getName().equals("updateOrder") ||
                    m.getName().equals("createOrderPreAuthorize") ) {
                OrderWS arg = (OrderWS) args[0];
                
                if (arg != null) {
                    validate(arg.getUserId());
                    if (m.getName().equals("updateOrder")) {
                        OrderBL bl = new OrderBL(arg.getId());
                        validate(bl.getEntity().getUser().getUserId());
                    }
                }
            } else if(m.getName().equals("getOrder") || 
                    m.getName().equals("deleteOrder")) {
                Integer arg = (Integer) args[0];
                
                if (arg != null) {
                    OrderBL bl = new OrderBL(arg);
                    validate(bl.getEntity().getUser().getUserId());
                }
            } else if(m.getName().equals("getOrderLine")) {
                Integer arg = (Integer) args[0];
                
                if (arg != null) {
                    OrderBL bl = new OrderBL();
                    OrderLineEntityLocal line = bl.getOrderLine(arg);
                    validate(line.getOrder().getUser().getUserId());
                }
            } else if(m.getName().equals("updateOrderLine")) {
                OrderLineWS arg = (OrderLineWS) args[0];
                
                if (arg != null) {
                    OrderBL bl = new OrderBL();
                    OrderLineEntityLocal line = bl.getOrderLine(arg.getId());
                    validate(line.getOrder().getUser().getUserId());
                }
                
            } else if (m.getName().equals("getLatestOrder") || 
                    m.getName().equals("getLastOrders") ||
                    m.getName().equals("getOrderByPeriod")) {
                Integer arg = (Integer) args[0];
                if (arg != null) {
                    validate(arg);
                }
            } else if(m.getName().equals("applyPayment")) {
                PaymentWS arg = (PaymentWS) args[0];
                
                if (arg != null) {
                    validate(arg.getUserId());
                }
            } else if (m.getName().equals("getPayment")) {
                Integer arg = (Integer) args[0];
                
                if (arg != null) {
                    PaymentBL bl = new PaymentBL(arg);
                    validate(bl.getEntity().getUser().getUserId());
                }
            } else if (m.getName().equals("getLatestPayment") ||
                    m.getName().equals("getLastPayments")) {
                Integer arg = (Integer) args[0];
                if (arg != null) {
                    validate(arg);
                }
            }

        } catch (SessionInternalError e) {
            log.error("Exception ", e);
            throw new SecurityException(e.getMessage());
        } catch (NamingException e) {
            log.error("Exception ", e);
            throw new SecurityException(e.getMessage());
        } catch (FinderException e) {
            // no need to log, this simply means that the request is rejected
            throw new SecurityException(e.getMessage());
        }
    }
}
