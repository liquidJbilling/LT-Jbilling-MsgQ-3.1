/*
    jbilling - The Enterprise Open Source Billing System
    Copyright (C) 2003-2007 Sapienter Billing Software Corp. and Emiliano Conde

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


import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="order_period"
    ,schema="public"
)
public class OrderPeriod  implements java.io.Serializable {


     private int id;
     private Company entity;
     private PeriodUnit periodUnit;
     private Integer value;
     private Set<PurchaseOrder> purchaseOrders = new HashSet<PurchaseOrder>(0);

    public OrderPeriod() {
    }

	
    public OrderPeriod(int id) {
        this.id = id;
    }
    public OrderPeriod(int id, Company entity, PeriodUnit periodUnit, Integer value, Set<PurchaseOrder> purchaseOrders) {
       this.id = id;
       this.entity = entity;
       this.periodUnit = periodUnit;
       this.value = value;
       this.purchaseOrders = purchaseOrders;
    }
   
     @Id 
    
    @Column(name="id", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="entity_id")
    public Company getEntity() {
        return this.entity;
    }
    
    public void setEntity(Company entity) {
        this.entity = entity;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="unit_id")
    public PeriodUnit getPeriodUnit() {
        return this.periodUnit;
    }
    
    public void setPeriodUnit(PeriodUnit periodUnit) {
        this.periodUnit = periodUnit;
    }
    
    @Column(name="value")
    public Integer getValue() {
        return this.value;
    }
    
    public void setValue(Integer value) {
        this.value = value;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="orderPeriod")
    public Set<PurchaseOrder> getPurchaseOrders() {
        return this.purchaseOrders;
    }
    
    public void setPurchaseOrders(Set<PurchaseOrder> purchaseOrders) {
        this.purchaseOrders = purchaseOrders;
    }




}

