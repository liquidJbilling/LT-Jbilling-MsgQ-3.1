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
package com.sapienter.jbilling.server.util;

import org.springframework.context.ApplicationContext;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Context {

    private static final ApplicationContext spring = 
            new ClassPathXmlApplicationContext( new String[] {"/jbilling-beans.xml", 
            "/jbilling-database.xml", "jbilling-provisioning.xml"});
    
    // all the managed beans
    //
    // those that act as session facade, mostly for transaction demarcation
    public static final String ITEM_SESSION = "itemSession";
    public static final String NOTIFICATION_SESSION = "norificationSession";
    
    // other simple beans
    public static final String PROVISIONING = "provisioning";
    public static final String VELOCITY = "velocityEngine";

    // should not be instantiated
    private Context() {
    }
    
    public static Object getBean(String bean) {
        return spring.getBean(bean);
    }
}
