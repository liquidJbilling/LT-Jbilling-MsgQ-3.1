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
package com.sapienter.jbilling.server.payment.tasks;

import javax.jms.JMSException;
import javax.jms.MapMessage;

import com.sapienter.jbilling.server.pluggableTask.PluggableTask;
import com.sapienter.jbilling.server.pluggableTask.TaskException;

/**
 * A dummy task that really doesn't add parameters. Useful for those simple cases
 * where concurrent payment processing is not needed.
 *  
 * @author Emiliano Conde
 *
 */
public class NoAsyncParameters extends PluggableTask implements IAsyncPaymentParameters {

    public void addParameters(MapMessage message) throws TaskException {
        try {
            message.setStringProperty("processor", "all");
        } catch (JMSException e) {
            throw new TaskException(e);
        }
    }

}