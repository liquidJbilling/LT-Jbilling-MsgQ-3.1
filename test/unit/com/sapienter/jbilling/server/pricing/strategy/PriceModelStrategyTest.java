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

import com.sapienter.jbilling.server.pricing.PriceModelWS;
import junit.framework.TestCase;

/**
 * @author Brian Cowdery
 * @since 09-08-2010
 */
public class PriceModelStrategyTest extends TestCase {

    public PriceModelStrategyTest() {
    }

    public PriceModelStrategyTest(String name) {
        super(name);
    }

    public void testGetStrategy() {
        assertTrue(PriceModelStrategy.FLAT.getStrategy() instanceof FlatPricingStrategy);
        assertTrue(PriceModelStrategy.METERED.getStrategy() instanceof MeteredPricingStrategy);
        assertTrue(PriceModelStrategy.GRADUATED.getStrategy() instanceof GraduatedPricingStrategy);
    }

    public void testPlanPricingStrategyFromWS() {
        assertEquals(PriceModelStrategy.valueOf(PriceModelWS.PLAN_TYPE_FLAT), PriceModelStrategy.FLAT);
        assertEquals(PriceModelStrategy.valueOf(PriceModelWS.PLAN_TYPE_METERED), PriceModelStrategy.METERED);
        assertEquals(PriceModelStrategy.valueOf(PriceModelWS.PLAN_TYPE_GRADUATED), PriceModelStrategy.GRADUATED);
    }     
}