<%--
The contents of this file are subject to the Jbilling Public License
 (the "License"); you may not use this file except in
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
--%>

<%@ page language="java" import="com.sapienter.jbilling.client.util.Constants, com.sapienter.jbilling.server.user.MenuOption"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>

<table>
<logic:iterate name='<%=Constants.SESSION_USER_DTO%>'
	                       property="menu.LMOptions"
	                       scope="session"
	                       id="option">

	<tr>
		<td class="leftMenuOption">
			<html:link styleClass="leftMenu" page='<%= ((MenuOption) pageContext.getAttribute("option")).getLink() %>'>
				<bean:write name="option" property="display"/>
			</html:link>
		</td>
	</tr>	                       
</logic:iterate>
</table>
