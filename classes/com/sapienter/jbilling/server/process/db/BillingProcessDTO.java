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
package com.sapienter.jbilling.server.process.db;


import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.sapienter.jbilling.server.invoice.db.Invoice;
import com.sapienter.jbilling.server.order.db.OrderProcessDTO;
import com.sapienter.jbilling.server.util.db.generated.Company;
import com.sapienter.jbilling.server.util.db.generated.PaperInvoiceBatch;
import com.sapienter.jbilling.server.util.db.generated.ProcessRun;

@Entity
@Table(name="billing_process")
public class BillingProcessDTO  implements java.io.Serializable {


     private int id;
     private PeriodUnitDTO periodUnitDTO;
     private PaperInvoiceBatch paperInvoiceBatch;
     private Company entity;
     private Date billingDate;
     private int periodValue;
     private int isReview;
     private int retriesToDo;
     private Set<OrderProcessDTO> orderProcesses = new HashSet<OrderProcessDTO>(0);
     private Set<Invoice> invoices = new HashSet<Invoice>(0);
     private Set<ProcessRun> processRuns = new HashSet<ProcessRun>(0);

    public BillingProcessDTO() {
    }

	
    public BillingProcessDTO(int id, PeriodUnitDTO periodUnitDTO, Company entity, Date billingDate, int periodValue, int isReview, int retriesToDo) {
        this.id = id;
        this.periodUnitDTO = periodUnitDTO;
        this.entity = entity;
        this.billingDate = billingDate;
        this.periodValue = periodValue;
        this.isReview = isReview;
        this.retriesToDo = retriesToDo;
    }
    public BillingProcessDTO(int id, PeriodUnitDTO periodUnitDTO, PaperInvoiceBatch paperInvoiceBatch, Company entity, Date billingDate, int periodValue, int isReview, int retriesToDo, Set<OrderProcessDTO> orderProcesses, Set<Invoice> invoices, Set<ProcessRun> processRuns) {
       this.id = id;
       this.periodUnitDTO = periodUnitDTO;
       this.paperInvoiceBatch = paperInvoiceBatch;
       this.entity = entity;
       this.billingDate = billingDate;
       this.periodValue = periodValue;
       this.isReview = isReview;
       this.retriesToDo = retriesToDo;
       this.orderProcesses = orderProcesses;
       this.invoices = invoices;
       this.processRuns = processRuns;
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
    @JoinColumn(name="period_unit_id", nullable=false)
    public PeriodUnitDTO getPeriodUnit() {
        return this.periodUnitDTO;
    }
    
    public void setPeriodUnit(PeriodUnitDTO periodUnitDTO) {
        this.periodUnitDTO = periodUnitDTO;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="paper_invoice_batch_id")
    public PaperInvoiceBatch getPaperInvoiceBatch() {
        return this.paperInvoiceBatch;
    }
    
    public void setPaperInvoiceBatch(PaperInvoiceBatch paperInvoiceBatch) {
        this.paperInvoiceBatch = paperInvoiceBatch;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="entity_id", nullable=false)
    public Company getEntity() {
        return this.entity;
    }
    
    public void setEntity(Company entity) {
        this.entity = entity;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="billing_date", nullable=false, length=13)
    public Date getBillingDate() {
        return this.billingDate;
    }
    
    public void setBillingDate(Date billingDate) {
        this.billingDate = billingDate;
    }
    
    @Column(name="period_value", nullable=false)
    public int getPeriodValue() {
        return this.periodValue;
    }
    
    public void setPeriodValue(int periodValue) {
        this.periodValue = periodValue;
    }
    
    @Column(name="is_review", nullable=false)
    public int getIsReview() {
        return this.isReview;
    }
    
    public void setIsReview(int isReview) {
        this.isReview = isReview;
    }
    
    @Column(name="retries_to_do", nullable=false)
    public int getRetriesToDo() {
        return this.retriesToDo;
    }
    
    public void setRetriesToDo(int retriesToDo) {
        this.retriesToDo = retriesToDo;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="billingProcess")
    public Set<OrderProcessDTO> getOrderProcesses() {
        return this.orderProcesses;
    }
    
    public void setOrderProcesses(Set<OrderProcessDTO> orderProcesses) {
        this.orderProcesses = orderProcesses;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="billingProcess")
    public Set<Invoice> getInvoices() {
        return this.invoices;
    }
    
    public void setInvoices(Set<Invoice> invoices) {
        this.invoices = invoices;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="billingProcess")
    public Set<ProcessRun> getProcessRuns() {
        return this.processRuns;
    }
    
    public void setProcessRuns(Set<ProcessRun> processRuns) {
        this.processRuns = processRuns;
    }




}

