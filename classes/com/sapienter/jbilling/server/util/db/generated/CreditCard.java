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
package com.sapienter.jbilling.server.util.db.generated;


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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.persistence.Version;

import com.sapienter.jbilling.common.JBCrypto;
import com.sapienter.jbilling.server.user.db.UserDTO;

@Entity
@TableGenerator(
        name="credit_card_GEN",
        table="jbilling_table",
        pkColumnName = "name",
        valueColumnName = "next_id",
        pkColumnValue="credit_card",
        allocationSize=10
        )
@Table(name="credit_card")
public class CreditCard  implements java.io.Serializable {


     private int id;
     private String ccNumber;
     private Date ccExpiry;
     private String name;
     private int ccType;
     private int deleted;
     private Integer securityCode;
     private String ccNumberPlain;
     private Set<Payment> payments = new HashSet<Payment>(0);
     private Set<UserDTO> baseUsers = new HashSet<UserDTO>(0);
     private Integer versionNum;

    public CreditCard() {
    }

	
    public CreditCard(int id, String ccNumber, Date ccExpiry, int ccType, int deleted) {
        this.id = id;
        this.ccNumber = ccNumber;
        this.ccExpiry = ccExpiry;
        this.ccType = ccType;
        this.deleted = deleted;
    }
    public CreditCard(int id, String ccNumber, Date ccExpiry, String name, int ccType, int deleted, Integer securityCode, String ccNumberPlain, Set<Payment> payments, Set<UserDTO> baseUsers) {
       this.id = id;
       this.ccNumber = ccNumber;
       this.ccExpiry = ccExpiry;
       this.name = name;
       this.ccType = ccType;
       this.deleted = deleted;
       this.securityCode = securityCode;
       this.ccNumberPlain = ccNumberPlain;
       this.payments = payments;
       this.baseUsers = baseUsers;
    }
   
     @Id @GeneratedValue(strategy=GenerationType.TABLE, generator="credit_card_GEN")
    
    @Column(name="id", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    @Column(name="cc_number", nullable=false, length=100)
    public String getCcNumber() {
        return this.ccNumber;
    }
    
    public void setCcNumber(String ccNumber) {
        this.ccNumber = ccNumber;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="cc_expiry", nullable=false, length=13)
    public Date getCcExpiry() {
        return this.ccExpiry;
    }
    
    public void setCcExpiry(Date ccExpiry) {
        this.ccExpiry = ccExpiry;
    }
    
    @Column(name="name", length=150)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    @Column(name="cc_type", nullable=false)
    public int getCcType() {
        return this.ccType;
    }
    
    public void setCcType(int ccType) {
        this.ccType = ccType;
    }
    
    @Column(name="deleted", nullable=false)
    public int getDeleted() {
        return this.deleted;
    }
    
    public void setDeleted(int deleted) {
        this.deleted = deleted;
    }
    
    @Column(name="security_code")
    public Integer getSecurityCode() {
        return this.securityCode;
    }
    
    public void setSecurityCode(Integer securityCode) {
        this.securityCode = securityCode;
    }
    
    @Column(name="cc_number_plain", length=20)
    public String getCcNumberPlain() {
        return this.ccNumberPlain;
    }
    
    public void setCcNumberPlain(String ccNumberPlain) {
        this.ccNumberPlain = ccNumberPlain;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="creditCard")
    public Set<Payment> getPayments() {
        return this.payments;
    }
    
    public void setPayments(Set<Payment> payments) {
        this.payments = payments;
    }
@ManyToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    @JoinTable(name="user_credit_card_map", joinColumns = { 
        @JoinColumn(name="credit_card_id", updatable=false) }, inverseJoinColumns = { 
        @JoinColumn(name="user_id", updatable=false) })
    public Set<UserDTO> getBaseUsers() {
        return this.baseUsers;
    }
    
    public void setBaseUsers(Set<UserDTO> baseUsers) {
        this.baseUsers = baseUsers;
    }

    @Version
    @Column(name="OPTLOCK")
    public Integer getVersionNum() {
        return versionNum;
    }

    public void setVersionNum(Integer versionNum) {
        this.versionNum = versionNum;
    }

    @Transient
    public String getNumber() {
    	return JBCrypto.getCreditCardCrypto().decrypt(getCcNumber());
    }

    @Transient
    public void setNumber(String number) {
    	setCcNumber(JBCrypto.getCreditCardCrypto().encrypt(number));
        setCcNumberPlain(number.substring(number.length()-4));
    }
}


