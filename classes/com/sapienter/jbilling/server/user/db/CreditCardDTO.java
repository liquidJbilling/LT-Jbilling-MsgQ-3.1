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
package com.sapienter.jbilling.server.user.db;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Transient;
import javax.persistence.Version;

import com.sapienter.jbilling.common.JBCrypto;
import com.sapienter.jbilling.server.payment.db.PaymentDTO;
import org.apache.log4j.Logger;

@Entity
@TableGenerator(
		name = "credit_card_GEN", 
		table = "jbilling_table", 
		pkColumnName = "name", 
		valueColumnName = "next_id", 
		pkColumnValue = "credit_card", 
		allocationSize = 100)
@Table(name = "credit_card")
public class CreditCardDTO implements Serializable {

    private static final Logger LOG = Logger.getLogger(CreditCardDTO.class);
    private int id;
    private String ccNumber;
    private Date ccExpiry;
    private String name;
    private Integer ccType;
    private int deleted;
    private Integer securityCode;
    private String ccNumberPlain;
    private Set<PaymentDTO> payments = new HashSet<PaymentDTO>(0);
    private Set<UserDTO> baseUsers = new HashSet<UserDTO>(0);
    private Integer versionNum;

    public CreditCardDTO() {
    }

    public CreditCardDTO(int id, String ccNumber, Date ccExpiry, int ccType,
            int deleted) {
        this.id = id;
        this.ccNumber = ccNumber;
        this.ccExpiry = ccExpiry;
        this.ccType = ccType;
        this.deleted = deleted;
    }

    public CreditCardDTO(int id, String ccNumber, Date ccExpiry, String name,
            int ccType, int deleted, Integer securityCode,
            String ccNumberPlain) {
        this.id = id;
        this.ccNumber = ccNumber;
        this.ccExpiry = ccExpiry;
        this.name = name;
        this.ccType = ccType;
        this.deleted = deleted;
        this.securityCode = securityCode;
        this.ccNumberPlain = ccNumberPlain;
    }
    
    public CreditCardDTO(com.sapienter.jbilling.server.entity.CreditCardDTO oldCC) {
        this.id = oldCC.getId() == null ? 0 : oldCC.getId();
        setName(oldCC.getName());
        this.ccExpiry = oldCC.getExpiry();
        setNumber(oldCC.getNumber());
        this.ccType = oldCC.getType();
        this.deleted = oldCC.getDeleted() == null ? 0 : oldCC.getDeleted();
        this.securityCode = oldCC.getSecurityCode();
    }

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "credit_card_GEN")
    @Column(name = "id", unique = true, nullable = false)
    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    /**
     * Do not use unless you know what you are doing. User getNumber() instead.
     * @return
     */
    @Column(name = "cc_number", nullable = false, length = 100)
    public String getRawNumber() {
        return this.ccNumber;
    }

    protected void setRawNumber(String ccNumber) {
        this.ccNumber = ccNumber;
    }

    @Column(name = "cc_expiry", nullable = false, length = 13)
    public Date getCcExpiry() {
        return this.ccExpiry;
    }

    public void setCcExpiry(Date ccExpiry) {
        this.ccExpiry = ccExpiry;
    }

    @Transient
    public Date getExpiry() {
        return getCcExpiry();
    }

    public void setExpiry(Date ccExpiry) {
        setCcExpiry(ccExpiry);
    }

    @Transient
    public String getName() {
        if (getRawName() == null) return null;
        return JBCrypto.getCreditCardCrypto().decrypt(getRawName());
    }

    public void setName(String name) {
        if (name == null) {
            setRawName(null);
            return;
        }
    	setRawName(JBCrypto.getCreditCardCrypto().encrypt(name));
        // validate that the saved name is retrivable and valid
        try {
            if (!getName().equals(name)) {
                LOG.error("The credit card name " + name + " was wrongly encrypted to " + getName());
            }
        } catch (Exception e) {
            LOG.error("The credit card name " + name + " was wrongly encrypted to " + getName());
        }
    }

    @Column(name = "name", length = 150)
    protected String getRawName() {
        return this.name;
    }

    protected void setRawName(String name) {
        this.name = name;
    }

    @Column(name = "cc_type", nullable = false)
    public Integer getCcType() {
        return this.ccType;
    }

    public void setCcType(Integer ccType) {
        this.ccType = ccType;
    }

    @Column(name = "deleted", nullable = false)
    public int getDeleted() {
        return this.deleted;
    }

    public void setDeleted(int deleted) {
        this.deleted = deleted;
    }

    @Column(name = "security_code")
    public Integer getSecurityCode() {
        return this.securityCode;
    }

    public void setSecurityCode(Integer securityCode) {
        this.securityCode = securityCode;
    }

    @Column(name = "cc_number_plain", length = 20)
    public String getCcNumberPlain() {
        return this.ccNumberPlain;
    }

    public void setCcNumberPlain(String ccNumberPlain) {
        this.ccNumberPlain = ccNumberPlain;
    }

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "creditCard")
    public Set<PaymentDTO> getPayments() {
        return this.payments;
    }

    public void setPayments(Set<PaymentDTO> payments) {
        this.payments = payments;
    }

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "user_credit_card_map", joinColumns = {@JoinColumn(name = "credit_card_id", updatable = false)}, inverseJoinColumns = {@JoinColumn(name = "user_id", updatable = false)})
    public Set<UserDTO> getBaseUsers() {
        return this.baseUsers;
    }

    public void setBaseUsers(Set<UserDTO> baseUsers) {
        this.baseUsers = baseUsers;
    }

    @Version
    @Column(name = "OPTLOCK")
    public Integer getVersionNum() {
        return versionNum;
    }

    public void setVersionNum(Integer versionNum) {
        this.versionNum = versionNum;
    }

    @Transient
    public String getNumber() {
        if (getRawNumber() == null) return null;
        return JBCrypto.getCreditCardCrypto().decrypt(getRawNumber());
    }

    @Transient
    public void setNumber(String number) {
        if (number == null) {
            setRawNumber(null);
            setCcNumberPlain(null);
        } else {
            String crip = JBCrypto.getCreditCardCrypto().encrypt(number);
            setRawNumber(crip);
            setCcNumberPlain(number.substring(number.length() - 4));
        }
    }
    
    @Transient
    public com.sapienter.jbilling.server.entity.CreditCardDTO getOldDTO() {
        com.sapienter.jbilling.server.entity.CreditCardDTO oldCC =
                new com.sapienter.jbilling.server.entity.CreditCardDTO();

        oldCC.setDeleted(this.getDeleted());
        oldCC.setExpiry(this.getExpiry());
        oldCC.setId(this.getId());
        oldCC.setName(this.getName());
        oldCC.setNumber(this.getNumber());
        oldCC.setSecurityCode(this.getSecurityCode());
        oldCC.setType(this.getCcType());

        return oldCC;
    }

    @Transient
    public Integer getType() {
        return getCcType();
    }
}
