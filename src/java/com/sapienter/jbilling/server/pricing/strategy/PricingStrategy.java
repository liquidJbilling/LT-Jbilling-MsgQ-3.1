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

package com.sapienter.jbilling.server.pricing.strategy;

import com.sapienter.jbilling.server.item.tasks.PricingResult;
import com.sapienter.jbilling.server.pricing.db.PriceModelDTO;

import java.math.BigDecimal;

/**
 * Interface for pricing strategies. All implemented strategies must be accessible via
 * the {@link PriceModelStrategy} mapping enum. 
 *
 * @author Brian Cowdery
 * @since 05-08-2010
 */
public interface PricingStrategy {

    /**
     * Returns true if this strategy calculates a graduated pricing based on the plan's
     * "included quantity" and the current customer usage.
     *
     * @return true if strategy calculates graduated pricing.
     */
    public boolean isGraduated();

    /**
     * Returns true if this strategy requires the current usage of the item
     * to properly calculate the the price.
     *
     * @return true if this strategy requires the current usage of the item being priced.
     */
    public boolean requiresUsage();

    /**
     * Returns true if this strategy defines a rate that overrides the
     * PlanPriceDTO rate.
     *
     * @return true if strategy has an overriding rate.
     */
    public boolean hasRate();

    /**
     * Returns the strategy specific rate that overrides the PlanPriceDTO rate. This
     * method should return null if the strategy does not define an overriding rate.
     *
     * @return overriding rate for this strategy, or null if strategy does not override the plan rate.
     */
    public BigDecimal getRate();


    /**
     * Applies the plan's pricing strategy to the given pricing request.
     *
     * @param result pricing result to apply pricing to
     * @param planPrice the plan price to apply
     * @param quantity quantity of item being priced
     * @param usage total item usage for this billing period
     * @throws IllegalArgumentException if strategy requires usage, and usage was given as null
     */
    public void applyTo(PricingResult result, PriceModelDTO planPrice, BigDecimal quantity, BigDecimal usage);
}