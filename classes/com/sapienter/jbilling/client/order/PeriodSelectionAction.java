/*
The contents of this file are subject to the Jbilling Public License
Version 1.1 (the "License"); you may not use this file except in
compliance with the License. You may obtain a copy of the License at
http://www.jbilling.com/JPL/

Software distributed under the License is distributed on an "AS IS"
basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
License for the specific language governing rights and limitations
under the License.

The Original Code is jbilling.

The Initial Developer of the Original Code is Emiliano Conde.
Portions created by Sapienter Billing Software Corp. are Copyright 
(C) Sapienter Billing Software Corp. All Rights Reserved.

Contributor(s): ______________________________________.
*/

package com.sapienter.jbilling.client.order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.sapienter.jbilling.client.util.Constants;
import com.sapienter.jbilling.server.order.NewOrderDTO;

/**
 * Now this just takes the period from the request and puts it
 * in the NewOrderDTO that is already in the session
 * @author emilc
 *
 */
public class PeriodSelectionAction extends Action {
    public ActionForward execute(
        ActionMapping mapping,
        ActionForm form,
        HttpServletRequest request,
        HttpServletResponse response)
        throws IOException, ServletException {

        Logger log = Logger.getLogger(ReviewOrderAction.class);

        HttpSession session = request.getSession(false);
        NewOrderDTO summary =
            (NewOrderDTO) session.getAttribute(Constants.SESSION_ORDER_SUMMARY);

		
        Integer period =
            Integer.valueOf(
                (String)request.getParameter(Constants.REQUEST_ORDER_PERIOD));
        log.debug("got period =" + period);        
        
        summary.setPeriod(period);
        

        return mapping.findForward("showOrderItems");
    }

}
