/*
 jBilling - The Enterprise Open Source Billing System
 Copyright (C) 2003-2011 Enterprise jBilling Software Ltd. and Emiliano Conde

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

package com.sapienter.jbilling.server.item;

import com.sapienter.jbilling.server.item.db.PlanItemDTO;
import com.sapienter.jbilling.server.pricing.PriceModelBL;
import com.sapienter.jbilling.server.pricing.PriceModelWS;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @author Brian Cowdery
 * @since 20-09-2010
 */
public class PlanItemWS implements Serializable {

    public static final Integer DEFAULT_PRECEDENCE = -1;

    private Integer id;
    private Integer itemId; // affected item
    private PriceModelWS model;
    private PlanItemBundleWS bundle;
    private Integer precedence = DEFAULT_PRECEDENCE;

    public PlanItemWS() {
    }

    public PlanItemWS(Integer itemId, PriceModelWS model, PlanItemBundleWS bundle) {
        this.itemId = itemId;
        this.model = model;
        this.bundle = bundle;
    }

    public PlanItemWS(PlanItemDTO dto) {
        this.id = dto.getId();
        this.precedence = dto.getPrecedence();

        if (dto.getModel() != null) this.model = new PriceModelWS(dto.getModel());
        if (dto.getBundle() != null) this.bundle = new PlanItemBundleWS(dto.getBundle());
        if (dto.getItem() != null) this.itemId = dto.getItem().getId();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Integer getAffectedItemId() {
        return getItemId();
    }

    public void setAffectedItemId(Integer affectedItemId) {
        setItemId(affectedItemId);
    }

    public PriceModelWS getModel() {
        return model;
    }

    public void setModel(PriceModelWS model) {
        this.model = model;
    }

    public PlanItemBundleWS getBundle() {
        return bundle;
    }

    public void setBundle(PlanItemBundleWS bundle) {
        this.bundle = bundle;
    }

    public Integer getPrecedence() {
        return precedence;
    }

    public void setPrecedence(Integer precedence) {
        this.precedence = precedence;
    }

    @Override
    public String toString() {
        return "PlanItemWS{"
               + "id=" + id
               + ", itemId=" + itemId
               + ", model=" + model
               + ", bundle=" + bundle
               + ", precedence=" + precedence
               + '}';
    }
}

