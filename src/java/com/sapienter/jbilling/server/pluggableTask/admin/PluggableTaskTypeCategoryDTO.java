/*
    jBilling - The Enterprise Open Source Billing System
    Copyright (C) 2003-2009 Enterprise jBilling Software Ltd. and Emiliano Conde

    This file is part of jbilling.

    jbilling is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    jbilling is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with jbilling.  If not, see <http://www.gnu.org/licenses/>.
*/
package com.sapienter.jbilling.server.pluggableTask.admin;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.log4j.Logger;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.sapienter.jbilling.server.util.Constants;
import com.sapienter.jbilling.server.util.db.AbstractDescription;

@Entity
@Table(name = "pluggable_task_type_category")
@Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class PluggableTaskTypeCategoryDTO extends AbstractDescription implements Serializable {

    @Id
    public Integer Id;

    @Column(name = "interface_name")
    private String interfaceName;

    @Transient
    protected String getTable() {
        return Constants.TABLE_PLUGGABLE_TASK_TYPE_CATEGORY;
    }


    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getInterfaceName() {
        return interfaceName;
    }

    public void setInterfaceName(String interfaceName) {
        this.interfaceName = interfaceName;
    }
    
    public String toString() {
        StringBuffer str = new StringBuffer("{");
        str.append("-" + this.getClass().getName() + "-");
        str.append("id=" + getId() + " " + "interfaceName=" + getInterfaceName() + " " + 
                " " + "description=" + getDescription());
        str.append('}');

        return(str.toString());

      }
}
