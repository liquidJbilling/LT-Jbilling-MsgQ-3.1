/*
 * JBILLING CONFIDENTIAL
 * _____________________
 *
 * [2003] - [2012] Enterprise jBilling Software Ltd.
 * All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Enterprise jBilling Software.
 * The intellectual and technical concepts contained
 * herein are proprietary to Enterprise jBilling Software
 * and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden.
 */

package com.sapienter.jbilling.server.mediation.cache;

import org.springframework.jdbc.core.JdbcTemplate;

/**
 * RateCardFinder
 *
 * @author Brian Cowdery
 * @since 18-02-2012
 */
public class RateCardFinder extends AbstractFinder {

    public RateCardFinder(JdbcTemplate template, ILoader loader) {
        super(template, loader);
    }

    public void init() {
        // noop
    }


}
