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

package com.sapienter.jbilling.server.util;

import java.io.Serializable;

/**
 * @author Emil
 */
public class OptionDTO implements Serializable {
    private String code = null;
    private String description = null;
    
    /**
     * @return
     */
    public String getCode() {
        return code;
    }

    /**
     * @return
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param string
     */
    public void setCode(String string) {
        code = string;
    }

    /**
     * @param string
     */
    public void setDescription(String string) {
        description = string;
    }

}
