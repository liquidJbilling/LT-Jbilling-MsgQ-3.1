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
 * Created on Sep 16, 2004
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package com.sapienter.jbilling.server.entity;

import java.rmi.RemoteException;

import javax.ejb.CreateException;
import javax.ejb.EJBException;
import javax.ejb.EntityBean;
import javax.ejb.EntityContext;
import javax.ejb.RemoveException;

import com.sapienter.jbilling.common.JNDILookup;
import com.sapienter.jbilling.interfaces.ContactEntityLocal;
import com.sapienter.jbilling.interfaces.SequenceSessionLocal;
import com.sapienter.jbilling.interfaces.SequenceSessionLocalHome;
import com.sapienter.jbilling.server.util.Constants;

/**
 * @ejb:bean name="ContactFieldEntity" 
 *          display-name="Object representation of the table CONTACT_FIELD" 
 *          view-type="local" 
 *          type="CMP" 
 *          local-jndi-name="com/sapienter/jbilling/server/entity/ContactFieldEntityLocal"
 *          jndi-name="com/sapienter/jbilling/server/entity/ContactFieldEntity"
 *          reentrant="false"
 *          cmp-version="2.x"
 *          primkey-field="id"
 *          schema="contact_field"
 * 
 * @ejb:finder signature="ContacFieldtEntityLocal findByType(java.lang.Integer typeId, java.lang.Integer contactId) "
 *             query="SELECT OBJECT(a)
 *                      FROM contact_field a
 *                     WHERE a.contact.id = ?2
 *                       AND a.typeId = ?1"
 *
 * @ejb:pk class="java.lang.Integer"
 *         generate="false"
 * 
 * @ejb.value-object name="ContactField"
 * 
 * @jboss:table-name "contact_field"
 * 
 * @jboss:create-table create="false"
 * @jboss:remove-table remove="false"
 */
public abstract class ContactFieldEntityBean implements EntityBean {
    /**
     * @ejb:create-method view-type="local"
     */
    public Integer ejbCreate(Integer type, String content) 
            throws CreateException {
        Integer newId;
        try {
            JNDILookup EJBFactory = JNDILookup.getFactory(false);
            SequenceSessionLocalHome generatorHome =
                    (SequenceSessionLocalHome) EJBFactory.lookUpLocalHome(
                    SequenceSessionLocalHome.class,
                    SequenceSessionLocalHome.JNDI_NAME);

            SequenceSessionLocal generator = generatorHome.create();
            newId = new Integer( generator.getNextSequenceNumber(
                    Constants.TABLE_CONTACT_FIELD));

        } catch (Exception e) {
            throw new CreateException(
                    "Problems generating the primary key "
                    + "for the contact_field table");
        }
        setId(newId);
        setContent(content);
        setTypeId(type);

        return newId;
    }

    public void ejbPostCreate(Integer type, String content) {
    }

    //  CMP field accessors -----------------------------------------------------
    /**
     * @ejb:interface-method view-type="local"
     * @ejb:persistent-field
     * @ejb:pk-field
     * @jboss:column-name name="id"
     * @jboss.method-attributes read-only="true"
     */
    public abstract Integer getId();
    public abstract void setId(Integer ruleId);

    /**
     * @ejb:interface-method view-type="local"
     * @ejb:persistent-field
     * @jboss:column-name name="content"
     * @jboss.method-attributes read-only="true"
     */
    public abstract String getContent();
    /**
     * @ejb:interface-method view-type="local"
     */
    public abstract void setContent(String content);

    /**
     * @ejb:interface-method view-type="local"
     * @ejb:persistent-field
     * @jboss:column-name name="type_id"
     * @jboss.method-attributes read-only="true"
     */
    public abstract Integer getTypeId();
    /**
     * @ejb:interface-method view-type="local"
     */
    public abstract void setTypeId(Integer typeId);
    
    // CMR
    
    /**
     * @ejb:interface-method view-type="local"
     * @ejb.relation name="contact-contact_field"
     *               role-name="field-belongs_to-contact"
     * @jboss.relation related-pk-field="id"  
     *               fk-column="contact_id"            
     */
    public abstract ContactEntityLocal getContact();
    public abstract void setContact(ContactEntityLocal contact);

    // EJB Callbacks ------------------------------------------------------
    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#ejbActivate()
     */
    public void ejbActivate() throws EJBException, RemoteException {
        // TODO Auto-generated method stub

    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#ejbLoad()
     */
    public void ejbLoad() throws EJBException, RemoteException {
        // TODO Auto-generated method stub

    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#ejbPassivate()
     */
    public void ejbPassivate() throws EJBException, RemoteException {
        // TODO Auto-generated method stub

    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#ejbRemove()
     */
    public void ejbRemove() throws RemoveException, EJBException,
            RemoteException {
        // TODO Auto-generated method stub

    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#ejbStore()
     */
    public void ejbStore() throws EJBException, RemoteException {
        // TODO Auto-generated method stub

    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#setEntityContext(javax.ejb.EntityContext)
     */
    public void setEntityContext(EntityContext arg0) throws EJBException,
            RemoteException {
        // TODO Auto-generated method stub

    }

    /* (non-Javadoc)
     * @see javax.ejb.EntityBean#unsetEntityContext()
     */
    public void unsetEntityContext() throws EJBException, RemoteException {
        // TODO Auto-generated method stub

    }

}
