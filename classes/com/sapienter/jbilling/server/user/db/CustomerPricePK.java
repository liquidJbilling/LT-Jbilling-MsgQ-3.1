/*
 jBilling - The Enterprise Open Source Billing System
 Copyright (C) 2003-2010 Enterprise jBilling Software Ltd. and Emiliano Conde

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

package com.sapienter.jbilling.server.user.db;

import com.sapienter.jbilling.server.item.db.PlanItemDTO;

import javax.persistence.CascadeType;
import javax.persistence.Embeddable;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.io.Serializable;

/**
 * CustomerPriceDTO composite primary key
 *
 * @author Brian Cowdery
 * @since 26-08-2010
 */
@Embeddable
public class CustomerPricePK implements Serializable {

    private PlanItemDTO planItem;
    private UserDTO baseUser;

    public CustomerPricePK() {
    }

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "plan_item_id", nullable = false)
    public PlanItemDTO getPlanItem() {
        return planItem;
    }

    public void setPlanItem(PlanItemDTO planItem) {
        this.planItem = planItem;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    public UserDTO getBaseUser() {
        return baseUser;
    }

    public void setBaseUser(UserDTO baseUser) {
        this.baseUser = baseUser;

    }
}
