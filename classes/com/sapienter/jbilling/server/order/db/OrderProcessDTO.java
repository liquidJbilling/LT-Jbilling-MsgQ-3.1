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
package com.sapienter.jbilling.server.order.db;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Version;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.sapienter.jbilling.server.util.db.generated.BillingProcess;

@Entity
@TableGenerator(
        name="order_process_GEN",
        table="jbilling_table",
        pkColumnName = "name",
        valueColumnName = "next_id",
        pkColumnValue="order_process",
        allocationSize=10
        )
@Table(name="order_process")
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class OrderProcessDTO  implements java.io.Serializable {


     private int id;
     private BillingProcess billingProcess;
     private PurchaseOrder purchaseOrder;
     private Integer invoiceId;
     private Integer periodsIncluded;
     private Date periodStart;
     private Date periodEnd;
     private int isReview;
     private Integer origin;
     private Integer versionNum;


    public OrderProcessDTO() {
    }

	
    public OrderProcessDTO(int id, int isReview) {
        this.id = id;
        this.isReview = isReview;
    }
    public OrderProcessDTO(int id, BillingProcess billingProcess, PurchaseOrder purchaseOrder, Integer invoiceId, Integer periodsIncluded, Date periodStart, Date periodEnd, int isReview, Integer origin) {
       this.id = id;
       this.billingProcess = billingProcess;
       this.purchaseOrder = purchaseOrder;
       this.invoiceId = invoiceId;
       this.periodsIncluded = periodsIncluded;
       this.periodStart = periodStart;
       this.periodEnd = periodEnd;
       this.isReview = isReview;
       this.origin = origin;
    }
   
    @Id @GeneratedValue(strategy=GenerationType.TABLE, generator="order_process_GEN")
    @Column(name="id", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="billing_process_id")
    public BillingProcess getBillingProcess() {
        return this.billingProcess;
    }
    
    public void setBillingProcess(BillingProcess billingProcess) {
        this.billingProcess = billingProcess;
    }
    
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="order_id")
    public PurchaseOrder getPurchaseOrder() {
        return this.purchaseOrder;
    }
    
    public void setPurchaseOrder(PurchaseOrder purchaseOrder) {
        this.purchaseOrder = purchaseOrder;
    }
    
    @Column(name="invoice_id")
    public Integer getInvoiceId() {
        return this.invoiceId;
    }
    
    public void setInvoiceId(Integer invoiceId) {
        this.invoiceId = invoiceId;
    }
    
    @Column(name="periods_included")
    public Integer getPeriodsIncluded() {
        return this.periodsIncluded;
    }
    
    public void setPeriodsIncluded(Integer periodsIncluded) {
        this.periodsIncluded = periodsIncluded;
    }
    
    @Column(name="period_start", length=13)
    public Date getPeriodStart() {
        return this.periodStart;
    }
    
    public void setPeriodStart(Date periodStart) {
        this.periodStart = periodStart;
    }
    
    @Column(name="period_end", length=13)
    public Date getPeriodEnd() {
        return this.periodEnd;
    }
    
    public void setPeriodEnd(Date periodEnd) {
        this.periodEnd = periodEnd;
    }
    
    @Column(name="is_review", nullable=false)
    public int getIsReview() {
        return this.isReview;
    }
    
    public void setIsReview(int isReview) {
        this.isReview = isReview;
    }
    
    @Column(name="origin")
    public Integer getOrigin() {
        return this.origin;
    }
    
    public void setOrigin(Integer origin) {
        this.origin = origin;
    }

    @Version
    @Column(name="OPTLOCK")
	public Integer getVersionNum() {
		return versionNum;
	}

	protected void setVersionNum(Integer versionNum) {
		this.versionNum = versionNum;
	}
}

