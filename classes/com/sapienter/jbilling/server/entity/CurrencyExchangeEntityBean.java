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
 * Created on Mar 9, 2004
 *
 * Copyright Sapienter Enterprise Software
 */
package com.sapienter.jbilling.server.entity;

import java.rmi.RemoteException;
import java.util.Calendar;
import java.util.Date;

import javax.ejb.CreateException;
import javax.ejb.EJBException;
import javax.ejb.EntityBean;
import javax.ejb.EntityContext;
import javax.ejb.RemoveException;

import org.apache.log4j.Logger;

import com.sapienter.jbilling.common.JNDILookup;
import com.sapienter.jbilling.interfaces.SequenceSessionLocal;
import com.sapienter.jbilling.interfaces.SequenceSessionLocalHome;
import com.sapienter.jbilling.server.util.Constants;

/**
 * @ejb:bean name="CurrencyExchangeEntity" 
 *          display-name="Object representation of the table CURRENCY_EXCHAGE"
 *          view-type="local" 
 *          type="CMP" 
 *          local-jndi-name="com/sapienter/jbilling/server/entity/CurrencyExchangeEntityLocal"
 *          jndi-name="com/sapienter/jbilling/server/entity/CurrencyExchangeEntity"
 *          reentrant="false"
 *          cmp-version="2.x"
 *          primkey-field="id"
 *          schema="currency_exchange"
 *
 * @ejb:finder signature="CurrencyExchangeEntityLocal find(java.lang.Integer entityId, java.lang.Integer currencyId) "
 *             query="SELECT OBJECT(a)
 *                      FROM currency_exchange a
 *                     WHERE a.entityId = ?1
 *                       AND a.currencyId = ?2"
 *
 * @ejb:finder signature="Collection findByEntity(java.lang.Integer entityId) "
 *             query="SELECT OBJECT(a)
 *                      FROM currency_exchange a
 *                     WHERE a.entityId = ?1"
 *
 * @ejb:pk class="java.lang.Integer"
 *         generate="false"
 *
 * @jboss:table-name "currency_exchange"
 * @jboss:create-table create="false"
 * @jboss:remove-table remove="false"
 */
public abstract class CurrencyExchangeEntityBean implements EntityBean {

    private Logger log = null;

    /**
     * @ejb:create-method view-type="local"
     */
    public Integer ejbCreate(Integer entityId, Integer currencyId, Float rate) 
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
                    Constants.TABLE_CURRENCY_EXCHANGE));

        } catch (Exception e) {
            throw new CreateException(
                    "Problems generating the primary key "
                    + "for the currency_exchage table");
        }

        setId(newId);
        setCurrencyId(currencyId);
        setEntityId(entityId);
        setRate(rate);
        setCreateDatetime(Calendar.getInstance().getTime());
        
        return newId;
    }
    public void ejbPostCreate(Integer entityId, Integer currencyId, Float rate) {}

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
      * @jboss:column-name name="entity_id"
     * @jboss.method-attributes read-only="true"
      */
    public abstract Integer getEntityId();
    public abstract void setEntityId(Integer entityId);

    /**
      * @ejb:interface-method view-type="local"
      * @ejb:persistent-field
      * @jboss:column-name name="currency_id"
     * @jboss.method-attributes read-only="true"
      */
    public abstract Integer getCurrencyId();
    public abstract void setCurrencyId(Integer currencyId);

    /**
      * @ejb:interface-method view-type="local"
      * @ejb:persistent-field
      * @jboss:column-name name="rate"
     * @jboss.method-attributes read-only="true"
      */
    public abstract Float getRate();
    public abstract void setRate(Float rate);

    /**
      * @ejb:interface-method view-type="local"
      * @ejb:persistent-field
      * @jboss:column-name name="create_datetime"
     * @jboss.method-attributes read-only="true"
      */
    public abstract Date getCreateDatetime();
    public abstract void setCreateDatetime(Date date);


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
    public void setEntityContext(EntityContext context) {
        log = Logger.getLogger(CurrencyExchangeEntityBean.class);
    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#unsetEntityContext()
     */
    public void unsetEntityContext() throws EJBException, RemoteException {
    }

}
