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

/*
 * Created on Mar 20, 2004
 *
 * Copyright Sapienter Enterprise Software
 */
package com.sapienter.jbilling.client.system;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import com.sapienter.jbilling.server.util.db.CurrencyDTO;

/**
 * @author Emil
 */
public class CurrencyArrayForm extends ActionForm {

    private CurrencyDTO[] lines = null;
    private Integer defaultCurrencyId = null;
    /**
     * 
     */
    public CurrencyArrayForm() {
        super();
    }

    /**
     * @return
     */
    public CurrencyDTO[] getLines() {
        return lines;
    }

    /**
     * @param line
     */
    public void setLines(CurrencyDTO[] lines) {
        this.lines = lines;
    }

    // with the booldy checkboxes, I've got to reset them all
    public void reset(ActionMapping mapping,
            javax.servlet.http.HttpServletRequest request) {
        if (lines != null) {
            for (int f = 0; f < lines.length; f++) {
                lines[f].setInUse(new Boolean(false));
            }
        }    
    }  
    /**
     * @return
     */
    public Integer getDefaultCurrencyId() {
        return defaultCurrencyId;
    }

    /**
     * @param defaultCurrencyId
     */
    public void setDefaultCurrencyId(Integer defaultCurrencyId) {
        this.defaultCurrencyId = defaultCurrencyId;
    }

}
