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

<%@ page language="java" import="com.sapienter.jbilling.client.util.Constants"%>

<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/taglib.tld" prefix="jbilling" %>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="http://jakarta.apache.org/taglibs/session-1.0" prefix="sess" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<p class="title"><bean:message key="order.view.title"/></p>
<p class="instr">
   <bean:message key="all.prompt.help" />
   <jbilling:help page="orders" anchor="details">
		 <bean:message key="all.prompt.here" />
   </jbilling:help><br/>
   <bean:message key="order.help.generateInvoice" />
   <jbilling:help page="orders" anchor="generateInvoice">
		 <bean:message key="all.prompt.here" />
   </jbilling:help>
</p>

<html:errors/>
<html:messages message="true" id="myMessage">
	<p><bean:write name="myMessage"/></p>
</html:messages>

<logic:present parameter="confirmApply">
	<p><bean:message key="order.apply.no"/></p>
</logic:present>

<table class="info">
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="order.prompt.id"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
                        property="id"
                        scope="session"/>
        </td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="order.prompt.status"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
                        property="statusStr"
                        scope="session"/>
        </td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="order.prompt.period"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="periodStr" 
				                    scope="session"/>
		</td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="order.prompt.billingType"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="billingTypeStr" 
				                    scope="session"/>
		</td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="order.prompt.promotion"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="promoCode" 
				                    scope="session"/>
		</td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="order.prompt.activeSince"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="activeSince" 
				                    scope="session"
				                    formatKey="format.date"/>
		</td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="order.prompt.activeUntil"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="activeUntil" 
				                    scope="session"
				                    formatKey="format.date"/>
		</td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="user.prompt.number"/></td>
		<td class="infodata">
			<%-- customers don't see a link to themselves --%>
			<logic:notEqual name='<%=Constants.SESSION_USER_DTO%>'
								 property="mainRoleId"
								 scope="session"
								 value='<%=Constants.TYPE_CUSTOMER.toString()%>'>
			<html:link page="/userMaintain.do?action=setup" 
				       paramId="id" 
					   paramName='<%=Constants.SESSION_ORDER_DTO%>'
					   paramProperty="user.userId">
                 <bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				             property="user.userId" 
				             scope="session"/>
		    </html:link>
		    </logic:notEqual>
		    
		    <logic:equal name='<%=Constants.SESSION_USER_DTO%>'
								 property="mainRoleId"
								 scope="session"
								 value='<%=Constants.TYPE_CUSTOMER.toString()%>'>
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				             property="user.userId" 
				             scope="session"/>
		    </logic:equal>
			
		</td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="user.prompt.username"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="user.userName" 
				                    scope="session"/>
		</td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="order.prompt.created"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="createDate" 
				                    scope="session"
				                    formatKey="format.timestamp"/>
		</td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="order.prompt.nextBillableDay"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="nextBillableDay" 
				                    scope="session"
				                    formatKey="format.date"/>
		</td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="order.prompt.createBy"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="createdBy" 
				                    scope="session" />
		</td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="currency.external.prompt.name"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="currencyName" 
				                    scope="session"/>
		</td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="order.prompt.notify"/></td>
		<td class="infodata">
			<logic:equal name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="notify" 
				         scope="session"
				         value="1">
					<bean:message key="all.prompt.yes"/>
			</logic:equal>
			<logic:equal name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="notify" 
				         scope="session"
				         value="0">
					<bean:message key="all.prompt.no"/>
			</logic:equal>
			<logic:notPresent name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="notify" 
				         scope="session">
					<bean:message key="all.prompt.no"/>
			</logic:notPresent>			
		</td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="order.prompt.notificationStep"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="notificationStep" 
				                    scope="session"/>
		</td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="order.prompt.lastNotified"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="lastNotified" 
				                    scope="session"
				                    formatKey="format.date"/>
		</td>
	</tr>

	<tr class="infoA">
		<td class="infoprompt"><bean:message key="invoice.dueDate.prompt"/></td>
		<td class="infodata">
	      <table><tr>
			<logic:present name='<%=Constants.SESSION_ORDER_DTO%>' 
				           property="dueDateValue">
		      	<jbilling:getOptions generalPeriod="true"/>
		      	<td class="infodata"> 
				  <bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
					property="dueDateValue" 
					scope="session"/>
		        </td>
		        <td class="infodata">
				  <bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
					property="timeUnitStr" 
					scope="session"/>
		        </td>
            </logic:present>
			<logic:notPresent name='<%=Constants.SESSION_ORDER_DTO%>' 
				           property="dueDateValue">
				 <bean:message key="order.dueDate.default"/>
            </logic:notPresent>
	      </tr></table>
		</td>
	</tr>

	<%-- Since this is an optional one, keep it at the bottom --%>
	<jbilling:getPreference preferenceId='<%=Constants.PREFERENCE_USE_DF_FM%>'
			beanName="preference"/> 
	<logic:equal name="preference" value="1">

	<tr class="infoB">
		<td class="infoprompt"><bean:message key="process.configuration.prompt.df_fm"/></td>
		<td class="infodata">
			<logic:equal name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="dfFm" 
				         scope="session"
				         value="1">
					<bean:message key="all.prompt.yes"/>
			</logic:equal>
			<logic:equal name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="dfFm" 
				         scope="session"
				         value="0">
					<bean:message key="all.prompt.no"/>
			</logic:equal>
			<logic:notPresent name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="dfFm" 
				         scope="session">
					<bean:message key="all.prompt.no"/>
			</logic:notPresent>			
		</td>
	</tr>
	</logic:equal>
	
	<jbilling:getPreference preferenceId='<%=Constants.PREFERENCE_USE_ORDER_ANTICIPATION%>'
			beanName="preference"/> 
	<logic:equal name="preference" value="1">

	<tr class="infoA">
		<td class="infoprompt"><bean:message key="order.prompt.anticipate"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="anticipatePeriods" 
				                    scope="session"/>
		</td>
	</tr>
	</logic:equal>

	<%-- Since this is an optional one, keep it at the bottom --%>
	<jbilling:getPreference preferenceId='<%=Constants.PREFERENCE_ORDER_OWN_INVOICE%>'
			beanName="preference"/> 
	<logic:equal name="preference" value="1">

	<tr class="infoB">
		<td class="infoprompt"><bean:message key="process.configuration.prompt.own_invoice"/></td>
		<td class="infodata">
			<logic:equal name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="ownInvoice" 
				         scope="session"
				         value="1">
					<bean:message key="all.prompt.yes"/>
			</logic:equal>
			<logic:equal name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="ownInvoice" 
				         scope="session"
				         value="0">
					<bean:message key="all.prompt.no"/>
			</logic:equal>
			<logic:notPresent name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="ownInvoice" 
				         scope="session">
					<bean:message key="all.prompt.no"/>
			</logic:notPresent>			
		</td>
	</tr>
	</logic:equal>

	<!-- Customers don't see their notes -->
	<logic:notEqual name='<%=Constants.SESSION_USER_DTO%>'
					 property="mainRoleId"
					 scope="session"
					 value='<%=Constants.TYPE_CUSTOMER.toString()%>'>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="order.prompt.notes"/></td>
		<td class="infodata">
			<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
				                    property="notes" 
				                    scope="session"/>
		</td>
	</tr>
	
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="order.prompt.notesInInvoice"/></td>
		<td class="infodata">
			<logic:equal name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="notesInInvoice" 
				         scope="session"
				         value="1">
					<bean:message key="all.prompt.yes"/>
			</logic:equal>
			<logic:equal name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="notesInInvoice" 
				         scope="session"
				         value="0">
					<bean:message key="all.prompt.no"/>
			</logic:equal>
			<logic:notPresent name='<%=Constants.SESSION_ORDER_DTO%>' 
				         property="notesInInvoice" 
				         scope="session">
					<bean:message key="all.prompt.no"/>
			</logic:notPresent>			
		</td>
	</tr>
	</logic:notEqual>

</table>	

<%-- all the lines of the order --%>
<table class="list">
		<%-- print the headers of the columns --%>
		<tr class="listH">
			<td><bean:message key="item.prompt.number"/></td>
			<td><bean:message key="item.prompt.internalNumber"/></td>
			<td><bean:message key="item.prompt.description"/></td>
			<td><bean:message key="item.list.quantity"/></td>
			<td><bean:message key="item.prompt.price"/></td>
			<td><bean:message key="order.summary.total"/></td>
		</tr>
		<%-- now each of the lines --%>
		<logic:iterate name='<%=Constants.SESSION_ORDER_DTO%>' 
						   scope="session"
						   id="line"
						   property="orderLines"
						   indexId="index">
			<c:choose>
				<c:when test="${flag == 1}">
					<tr class="listB">
					<c:remove var="flag"/>
				</c:when>
				<c:otherwise>
					<tr class="listA">
					<c:set var="flag" value="1"/>
				</c:otherwise>
		    </c:choose>
				<td align="right" class="list">
					<bean:write name="line" property="itemId"/>
				</td>
				<td align="right" class="list">
					<logic:present name="line" property="item">
						<bean:write name="line" property="item.number"/>
					</logic:present>
				</td>
				<td class="list">
					<bean:write name="line" property="description"/>
				</td>
				<td align="right" class="list">
					<logic:present name="line" property="item">
					<logic:notPresent name="line" 
				              property="item.percentage">
						<bean:write name="line" property="quantity"/>
					</logic:notPresent>			
					</logic:present>	
				</td>
				<td align="right" class="list">
					<logic:present name="line" property="item">
					<logic:notPresent name="line" 
				              property="item.percentage">
						<bean:write name="line" property="price" formatKey="format.money"/>
					</logic:notPresent>			
					</logic:present>	
					<logic:present name="line" property="item">
					<logic:present name="line" 
				              property="item.percentage">
						<bean:write name="line" property="price" formatKey="format.percentage"/>
					</logic:present>			
					</logic:present>
				</td>
				<td align="right" class="list">
					<bean:write name="line" property="amount" formatKey="format.money"/>
				</td>
			</tr>
		</logic:iterate>	
		<tr class="listH">
			<td></td><td></td><td></td><td></td><td></td>
			<td>
				<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
							property="currencySymbol" 
							scope="session"
							filter="false" />
				<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
							property="total" 
							scope="session" 
							formatKey="format.money"/>
			</td>
		</tr>
</table>		

	<%-- now go through each included invoice and display a link to it --%>

	<p class="title"><bean:message key="order.prompt.invoices"/></p>

<table class="list">
		<%-- print the headers of the columns --%>
		<tr class="listH">
			<td><bean:message key="invoice.periodStart.prompt"/></td>
			<td><bean:message key="invoice.periodEnd.prompt"/></td>
			<td><bean:message key="invoice.periodsIncluded.prompt"/></td>
			<td><bean:message key="invoice.id.prompt"/></td>
			<td><bean:message key="invoice.createDateTime.prompt"/></td>
			<td><bean:message key="invoice.total.prompt"/></td>
			<td><bean:message key="invoice.origin.prompt"/></td>
		</tr>
		<%-- now each invoice row --%>
		<logic:iterate name='<%=Constants.SESSION_ORDER_DTO%>' 
						   scope="session"
						   id="invoice"
						   property="invoices"
						   indexId="index">
			<c:choose>
				<c:when test="${flag == 1}">
					<tr class="listB">
					<c:remove var="flag"/>
				</c:when>
				<c:otherwise>
					<tr class="listA">
					<c:set var="flag" value="1"/>
				</c:otherwise>
		    </c:choose>
				<td class="list">
					<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
								property='<%= "periods[" + index + "].periodStart" %>'
								scope="session"
								formatKey="format.date" />
				</td>
				<td class="list">
					<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
								property='<%= "periods[" + index + "].periodEnd" %>'
								scope="session"
								formatKey="format.date" />
				</td>
				<td class="list" align="right">
					<bean:write name='<%=Constants.SESSION_ORDER_DTO%>' 
								property='<%= "periods[" + index + "].periodsIncluded" %>'
								scope="session" />
				</td>
				
				<td class="list" align="right">
					<html:link action="invoiceMaintain" paramId="id" 
							   paramName="invoice"
							   paramProperty="id">
						<bean:write name="invoice" property="id"/>
					</html:link>
				</td>
				<td class="list">
					<bean:write name="invoice" property="createDateTime"
						        formatKey="format.timestamp"/>
				</td>
				<td class="list" align="right">
					<bean:write name="invoice" property="total"
						        formatKey="format.money"/>
				</td>
				<td class="list" align="left">
					<logic:equal name='<%=Constants.SESSION_ORDER_DTO%>' 
								property='<%= "periods[" + index + "].origin" %>'
								scope="session" 
								value="1">
						<bean:message key="invoice.origin.process"/>
					</logic:equal>
					<logic:equal name='<%=Constants.SESSION_ORDER_DTO%>' 
								property='<%= "periods[" + index + "].origin" %>'
								scope="session" 
								value="2">
						<bean:message key="invioce.origin.manual"/>
					</logic:equal>
				</td>
			</tr>	
		</logic:iterate>
</table>		