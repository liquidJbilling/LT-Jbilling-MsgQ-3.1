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
package com.sapienter.jbilling.server.payment.event;

import com.sapienter.jbilling.server.system.event.Event;

public class ProcessPaymentEvent implements Event {
    private final Integer invoiceId;
    private final Integer processId;
    private final Integer runId;
    private final Integer entityId;
    
    public ProcessPaymentEvent(Integer invoiceId,Integer processId,Integer runId,Integer entityId) {
        this.runId = runId;
        this.invoiceId = invoiceId;
        this.processId = processId;
        this.entityId= entityId;
    }

    public Integer getEntityId() {
        return entityId;
    }

    public String getName() {
        return "Process Payment";
    }

    public final Integer getInvoiceId() {
        return invoiceId;
    }

    public final Integer getProcessId() {
        return processId;
    }

    public final Integer getRunId() {
        return runId;
    }

}