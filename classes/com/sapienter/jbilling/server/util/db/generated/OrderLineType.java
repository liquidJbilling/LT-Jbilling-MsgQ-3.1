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
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="order_line_type"
    ,schema="public"
)
public class OrderLineType  implements java.io.Serializable {


     private int id;
     private short editable;
     private Set<OrderLine> orderLines = new HashSet<OrderLine>(0);

    public OrderLineType() {
    }

	
    public OrderLineType(int id, short editable) {
        this.id = id;
        this.editable = editable;
    }
    public OrderLineType(int id, short editable, Set<OrderLine> orderLines) {
       this.id = id;
       this.editable = editable;
       this.orderLines = orderLines;
    }
   
     @Id 
    
    @Column(name="id", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    @Column(name="editable", nullable=false)
    public short getEditable() {
        return this.editable;
    }
    
    public void setEditable(short editable) {
        this.editable = editable;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="orderLineType")
    public Set<OrderLine> getOrderLines() {
        return this.orderLines;
    }
    
    public void setOrderLines(Set<OrderLine> orderLines) {
        this.orderLines = orderLines;
    }




}

