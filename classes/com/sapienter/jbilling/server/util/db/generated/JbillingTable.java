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


import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.sapienter.jbilling.server.util.audit.db.EventLogDTO;
import com.sapienter.jbilling.server.util.db.PreferenceDTO;

@Entity
@Table(name="jbilling_table"
    , uniqueConstraints = @UniqueConstraint(columnNames="name") 
)
@Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class JbillingTable  implements java.io.Serializable {


     private int id;
     private String name;
     private int nextId;
     private Set<ContactMap> contactMaps = new HashSet<ContactMap>(0);
     private Set<BettyTableColumn> bettyTableColumns = new HashSet<BettyTableColumn>(0);
     private Set<PreferenceDTO> preferences = new HashSet<PreferenceDTO>(0);
     private Set<EventLogDTO> eventLogs = new HashSet<EventLogDTO>(0);

    public JbillingTable() {
    }

	
    public JbillingTable(int id, String name, int nextId) {
        this.id = id;
        this.name = name;
        this.nextId = nextId;
    }
    public JbillingTable(int id, String name, int nextId, Set<ContactMap> contactMaps, Set<BettyTableColumn> bettyTableColumns, Set<PreferenceDTO> preferences, Set<EventLogDTO> eventLogs) {
       this.id = id;
       this.name = name;
       this.nextId = nextId;
       this.contactMaps = contactMaps;
       this.bettyTableColumns = bettyTableColumns;
       this.preferences = preferences;
       this.eventLogs = eventLogs;
    }
   
    @Id 
    @Column(name="id", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    @Column(name="name", unique=true, nullable=false, length=50)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    @Column(name="next_id", nullable=false)
    public int getNextId() {
        return this.nextId;
    }
    
    public void setNextId(int nextId) {
        this.nextId = nextId;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="jbillingTable")
    public Set<ContactMap> getContactMaps() {
        return this.contactMaps;
    }
    
    public void setContactMaps(Set<ContactMap> contactMaps) {
        this.contactMaps = contactMaps;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="jbillingTable")
    public Set<BettyTableColumn> getBettyTableColumns() {
        return this.bettyTableColumns;
    }
    
    public void setBettyTableColumns(Set<BettyTableColumn> bettyTableColumns) {
        this.bettyTableColumns = bettyTableColumns;
    }
    
    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="jbillingTable")
    public Set<PreferenceDTO> getPreferences() {
        return this.preferences;
    }
    
    public void setPreferences(Set<PreferenceDTO> preferences) {
        this.preferences = preferences;
    }
    
    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="jbillingTable")
    public Set<EventLogDTO> getEventLogs() {
        return this.eventLogs;
    }
    public void setEventLogs(Set<EventLogDTO> eventLogs) {
        this.eventLogs = eventLogs;
    }
}


