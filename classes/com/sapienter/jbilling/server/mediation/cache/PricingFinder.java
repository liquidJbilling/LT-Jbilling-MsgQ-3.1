package com.sapienter.jbilling.server.mediation.cache;

import java.math.BigDecimal;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.util.StopWatch;

import com.sapienter.jbilling.server.item.PricingField;
import com.sapienter.jbilling.server.item.tasks.PricingResult;
import com.sapienter.jbilling.server.util.Context;

public class PricingFinder extends AbstractFinder {

    private static final Logger LOG = Logger.getLogger(PricingFinder.class);

    private static final String SPACE = " ";
    private static final String COMMA = ", ";

    public static final PricingFinder getInstance() {
        Object bean = Context.getBean(Context.Name.PRICING_FINDER);
        LOG.debug("Method: getInstance() found: " + bean);
        return (PricingFinder) bean;
    }

    PricingFinder(JdbcTemplate template, ILoader loader) {
        super(template, loader);
    }

    /**
     * 
     */
    private void init() {
        StopWatch watch = new StopWatch();
        watch.start();
        LOG.debug("Finder Initialized successfully.");
        watch.stop();
        LOG.debug("Watch: " + watch.toString());
    }

    public BigDecimal getPriceForDestination(String digits) {
        BigDecimal retVal = null;
        try {
            String query = "Select TOP 1 price from " + loader.getTableName()
                    + " Where '" + digits
                    + "' like CONCAT(dgts, '%') order by dgts desc;";
            LOG.debug("Method: getPriceForDestination - Select query:\n"
                    + query);
            retVal = (BigDecimal) this.jdbcTemplate.queryForObject(query,
                    BigDecimal.class);
            LOG.debug("Method: getPriceForDestination - Best Match: " + retVal);
        } catch (Exception e) {
            LOG
                    .error("ERROR occurred in PricingFinder.getPriceForDestination. "
                            + digits + " output " + retVal);
        }
        return retVal;
    }

    public BigDecimal getPriceForItemAndNumber(PricingField pricingField) {
        return getPricingResultForItemNumber(pricingField).getPrice();
    }

    public PricingResult getPricingResultForItemNumber(PricingField pricingField) {
        PricingResult result = null;
        String strSql = null;
        if ("dst".equalsIgnoreCase(pricingField.getName())) {
            String query = "Select TOP 1 price from " + loader.getTableName()
                    + " Where " + pricingField.getStrValue()
                    + " like CONCAT(dgts, '%') order by dgts desc;";
        }

        // this.jdbcTemplate.query("", new PricingResultMapper());

        return result;
    }

}
