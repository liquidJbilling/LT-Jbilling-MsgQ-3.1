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
 * Created on Jun 13, 2004
 *
 * Copyright Sapienter Enterprise Software
 */
package com.sapienter.jbilling.server.entity;

import java.rmi.RemoteException;
import java.util.Collection;
import java.util.Date;

import javax.ejb.CreateException;
import javax.ejb.EJBException;
import javax.ejb.EntityBean;
import javax.ejb.EntityContext;
import javax.ejb.RemoveException;
import javax.naming.NamingException;

import org.apache.log4j.Logger;

import com.sapienter.jbilling.common.JNDILookup;
import com.sapienter.jbilling.interfaces.BillingProcessEntityLocal;
import com.sapienter.jbilling.interfaces.SequenceSessionLocal;
import com.sapienter.jbilling.interfaces.SequenceSessionLocalHome;
import com.sapienter.jbilling.server.util.Constants;

/**
 * @ejb:bean name="PaperInvoiceBatchEntity" 
 *          display-name="Object representation of the table PATER_INVOICE_BATCH"
 *          view-type="local" 
 *          type="CMP" 
 *          local-jndi-name="com/sapienter/jbilling/server/entity/PaperInvoiceBatchEntityLocal"
 *          jndi-name="com/sapienter/jbilling/server/entity/PaperInvoiceBatchEntity"
 *          reentrant="false"
 *          cmp-version="2.x"
 *          primkey-field="id"
 *          schema="paper_invoice_batch"
 *
 * @ejb.value-object name="PaperInvoiceBatch"
 *
 * @ejb:pk class="java.lang.Integer"
 *         generate="false"
 *
 * @jboss:table-name "paper_invoice_batch"
 * @jboss:create-table create="false"
 * @jboss:remove-table remove="false"
 */
public abstract class PaperInvoiceBatchEntityBean implements EntityBean {

    private Logger log = null;
    /**
     * @ejb:create-method view-type="local"
     */
    public Integer ejbCreate(Integer totalInvoices, Integer isSelfManaged) 
            throws CreateException {
        Integer newId;
        try {
            JNDILookup EJBFactory = JNDILookup.getFactory(false); 
            
            SequenceSessionLocalHome generatorHome =
                    (SequenceSessionLocalHome) EJBFactory.lookUpLocalHome(
                    SequenceSessionLocalHome.class,
                    SequenceSessionLocalHome.JNDI_NAME);

            SequenceSessionLocal generator = generatorHome.create();
            newId = new Integer(generator.getNextSequenceNumber(
                    Constants.TABLE_PAPER_INVOICE_BATCH));

        } catch (Exception e) {
            log.error("Exception creating item price", e);
            throw new CreateException(
                    "Problems generating the primary key "
                    + "for the item_price table");
        }
        setId(newId);
        setTotalInvoices(totalInvoices);
        setIsSelfManaged(isSelfManaged);

        return newId;
    }
    
    public void ejbPostCreate(Integer totalInvoices, Integer isSelfManaged) {
    }

    // CMP field accessors -----------------------------------------------------
    /**
     * @ejb:interface-method view-type="local"
     * @ejb:persistent-field
     * @ejb:pk-field
     * @jboss:column-name name="id"
     * @jboss.method-attributes read-only="true"
     */
    public abstract Integer getId();
    public abstract void setId(Integer itemId);

    /**
      * @ejb:interface-method view-type="local"
      * @ejb:persistent-field
      * @jboss:column-name name="total_invoices"
     * @jboss.method-attributes read-only="true"
      */
    public abstract Integer getTotalInvoices();
    /**
      * @ejb:interface-method view-type="local"
      */
    public abstract void setTotalInvoices(Integer total);

    /**
      * @ejb:interface-method view-type="local"
      * @ejb:persistent-field
      * @jboss:column-name name="delivery_date"
     * @jboss.method-attributes read-only="true"
      */
    public abstract Date getDeliveryDate();
    /**
      * @ejb:interface-method view-type="local"
      */
    public abstract void setDeliveryDate(Date date);

    /**
      * @ejb:interface-method view-type="local"
      * @ejb:persistent-field
      * @jboss:column-name name="is_self_managed"
     * @jboss.method-attributes read-only="true"
      */
    public abstract Integer getIsSelfManaged();
    /**
      * @ejb:interface-method view-type="local"
      */
    public abstract void setIsSelfManaged(Integer flag);

    // CMR field accessors -----------------------------------------------------
    /**
     * @ejb:interface-method view-type="local"
     * @ejb.relation name="invoices-paper_batch"
     *               role-name="paper_batch-has-invoices"
     */
    public abstract Collection getInvoices();
    public abstract void setInvoices(Collection invoices);

    /**
     * @ejb:interface-method view-type="local"
     * @ejb.relation name="process-paper_batch"
     *               role-name="paper_batch-belongs_to-process"
     */
    public abstract BillingProcessEntityLocal getProcess();
    public abstract void setProcess(BillingProcessEntityLocal process);

    // EJB Callbacks
    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#ejbActivate()
     */
    public void ejbActivate() throws EJBException, RemoteException {
    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#ejbLoad()
     */
    public void ejbLoad() throws EJBException, RemoteException {
    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#ejbPassivate()
     */
    public void ejbPassivate() throws EJBException, RemoteException {
    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#ejbRemove()
     */
    public void ejbRemove()
        throws RemoveException, EJBException, RemoteException {
    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#ejbStore()
     */
    public void ejbStore() throws EJBException, RemoteException {
    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#setEntityContext(javax.ejb.EntityContext)
     */
    public void setEntityContext(EntityContext arg0)
            throws EJBException, RemoteException {
        log = Logger.getLogger(PaperInvoiceBatchEntityBean.class);
    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#unsetEntityContext()
     */
    public void unsetEntityContext() throws EJBException, RemoteException {
        // TODO Auto-generated method stub

    }

}
