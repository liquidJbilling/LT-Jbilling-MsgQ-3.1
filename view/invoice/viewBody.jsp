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


<logic:notPresent parameter="noTitle">
	<p class="title"> <bean:message key="invoice.title"/> </p>
	<p class="instr"> 
		<bean:message key="invoice.instr"/><br/>
		<bean:message key="all.prompt.help" />
	    <jbilling:help page="invoices" anchor="details">
			 <bean:message key="all.prompt.here" />
	    </jbilling:help>
	</p>
	
	<html:messages message="true" id="myMessage">
		<p><bean:write name="myMessage"/></p>
	</html:messages>
</logic:notPresent>

<logic:present name='<%=Constants.SESSION_INVOICE_DTO%>' scope="session">
<logic:equal name='<%=Constants.SESSION_USER_DTO%>'
					 property="mainRoleId"
					 scope="session"
					 value='<%=Constants.TYPE_CUSTOMER.toString()%>'>
	<logic:equal name='<%=Constants.SESSION_INVOICE_DTO%>' 
		         property="toProcess"
		         value="1"
		         scope="session">
	<p>
		<html:link page="/paymentMaintain.do?action=current_invoice">
		   <bean:message key="invoice.pay.link"/>
		</html:link>
	</p>
	</logic:equal>
</logic:equal>
</logic:present>
	

<logic:present parameter="confirm">
	<logic:equal parameter="confirm" value="do">
		  <p>
		      <bean:message key="invoice.delete.confirm"/> <br/>
              <html:link page="/invoiceMaintain.do?action=delete">
              	   <bean:message key="all.prompt.yes"/>
              </html:link><br/>
              <html:link page="/invoice/view.jsp?confirm=no">
              	   <bean:message key="all.prompt.no"/>
              </html:link><br/>
   	    </p>
	</logic:equal>
	
	<logic:equal parameter="confirm" value="no">
          <p><bean:message key="invoice.delete.notDone"/></p>
	</logic:equal>	
</logic:present>

<table class="info">
	<tr>
		<th class="info" colspan="2"><bean:message key="invoice.info.title"/></th>
	</tr>
<logic:present name='<%=Constants.SESSION_INVOICE_DTO%>' scope="session">
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="invoice.number.prompt"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="number"
                        scope="session"/>
        </td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="invoice.id.prompt"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="id"
                        scope="session"/>
        </td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="invoice.createDateTime.prompt"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="createDateTime"
                        scope="session"
                        formatKey="format.date"/>
        </td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="invoice.dueDate.prompt"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="dueDate"
                        scope="session"
                        formatKey="format.date"/>
        </td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="invoice.total.prompt"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="total"
                        scope="session"
                        formatKey="format.money"/>
        </td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="invoice.is_payable.prompt"/></td>
		<td class="infodata">	
			<logic:equal name='<%=Constants.SESSION_INVOICE_DTO%>' 
                         property="toProcess"
				         scope="session"
				         value="1">
					<bean:message key="invoice.status.notPaid"/>
			</logic:equal>
			<logic:equal name='<%=Constants.SESSION_INVOICE_DTO%>' 
                         property="toProcess"
				         scope="session"
				         value="0">
					<bean:message key="invoice.status.paid"/>
			</logic:equal>
                        
        </td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="invoice.balance.prompt"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="balance"
                        scope="session"
                        formatKey="format.money"/>
        </td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="invoice.carriedBalance.prompt"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="carriedBalance"
                        scope="session"
                        formatKey="format.money"/>
        </td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="invoice.attempts.prompt"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="paymentAttempts"
                        scope="session"/>
        </td>
	</tr>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="invoice.userId.prompt"/></td>
		<td class="infodata">	
			<%-- customers don't see a link to themselves --%>
			<logic:notEqual name='<%=Constants.SESSION_USER_DTO%>'
								 property="mainRoleId"
								 scope="session"
								 value='<%=Constants.TYPE_CUSTOMER.toString()%>'>
			<html:link page="/userMaintain.do?action=setup" 
				       paramId="id" 
					   paramName='<%=Constants.SESSION_INVOICE_DTO%>' 
					   paramProperty="userId">
					<bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="userId"
                        scope="session"/>
            </html:link>
		    </logic:notEqual>
		    
		    <logic:equal name='<%=Constants.SESSION_USER_DTO%>'
								 property="mainRoleId"
								 scope="session"
								 value='<%=Constants.TYPE_CUSTOMER.toString()%>'>
            <bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="userId"
                        scope="session"/>
		    </logic:equal>
			
        </td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="currency.external.prompt.name"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="currencyName"
                        scope="session"/>
        </td>
	</tr>

    <%-- now go through each related payment and display a link to it --%>
	<tr class="infoB">
		<td class="infoprompt"><bean:message key="invoice.payments.prompt"/></td>
		<td></td>
	</tr>
	<logic:iterate name='<%=Constants.SESSION_INVOICE_DTO%>' 
					   scope="session"
					   id="payment"
					   property="payments">

		<tr class="infoB">
			<td class="infoprompt"></td>
			<td>
				<table>
				<tr class="infoB">
				<td class="infodata">
				<html:link page="/paymentMaintain.do?action=view" paramId="id" 
					       paramName="payment"
					       paramProperty="id">
					<bean:write name="payment" property="id"/>
				</html:link>
				</td>
				<td class="infodata">
				<bean:write name="payment" 
                        property="paymentDate"
                        scope="page"
                        formatKey="format.date"/>
                </td>
                <td class="infodata">
                	<bean:define id="index" name="payment"
					  property="currencyId"/>
					<bean:write name='<%= Constants.APP_CURRENCY_SYMBOLS %>'
				   		property='<%= "symbols[" + index + "].symbol" %>'
					    scope="application"
				   		filter="false"/>
            		<bean:write name="payment" 
                        property="amount"
                        scope="page"
                        formatKey="format.money"/>
                	
               	</td>
				</tr>
				</table>
			</td>
        </tr>			
	</logic:iterate>
	
    <%-- now go through each included order and display a link to it --%>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="invoice.payments.orders"/></td>
		<td></td>
	</tr>
	<tr class="infoA">
		<td class="infoprompt"></td>
		<td>
		<table>
		<logic:iterate name='<%=Constants.SESSION_INVOICE_DTO%>' 
						   scope="session"
						   id="order"
						   property="orders">
		  <tr class="infoA">
			<td class="infodata">
				<html:link page="/orderMaintain.do?action=view" paramId="id" 
						   paramName="order"
						   paramProperty="id">
					<bean:write name="order" property="id"/>
				</html:link>
			</td>
			<td class="infodata">
				<bean:write name="order" property="createDate" formatKey="format.date"/>
			</td>
		  </tr>	
		</logic:iterate>
		</table>		
		</td>
	</tr>

	<tr class="infoB">
		<td class="infoprompt"><bean:message key="invoice.delegated.prompt"/></td>
		<td class="infodata">	
			<html:link action="invoiceMaintain" paramId="id" 
					   paramName='<%=Constants.SESSION_INVOICE_DTO%>'
					   paramProperty="delegatedInvoiceId"
					   paramScope="session">
				<bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
							property="delegatedInvoiceId"
							scope="session" />
			</html:link>
			
        </td>
	</tr>
	
    <%-- now go through each included invoice and display a link to it --%>
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="invoice.included.prompt"/></td>
		<td></td>
	</tr>
	<logic:present name='<%=Constants.SESSION_INVOICE_DTO%>' property="invoicesIncluded">
	<tr class="infoA">
		<td class="infoprompt"></td>
		<td>
		<table>
		<logic:iterate name='<%=Constants.SESSION_INVOICE_DTO%>' 
						   scope="session"
						   id="incInvoice"
						   property="invoicesIncluded">
		  <tr class="infoA">
			<td class="infodata">
				<html:link page="/invoiceMaintain.do?action=view" paramId="id" 
						   paramName="incInvoice">
					<bean:write name="incInvoice"/>
				</html:link>
			</td>
		  </tr>	
		</logic:iterate>
		</table>		
		</td>
	</tr>
	</logic:present>

	<tr class="infoB">
		<td class="infoprompt"><bean:message key="invoice.notes.prompt"/></td>
		<td class="infodata">	
            <bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
                        property="customerNotes"
                        scope="session"
                        filter="false"/>
        </td>
	</tr>
	<%-- customers don't see a link to self-send an email --%>
	<logic:notEqual name='<%=Constants.SESSION_USER_DTO%>'
						 property="mainRoleId"
						 scope="session"
						 value='<%=Constants.TYPE_CUSTOMER.toString()%>'>
	
	<tr>
		<td class="infocommands" colspan="2">
			<html:link page="/invoiceMaintain.do?action=notify"
				       paramId="id"
				       paramName='<%=Constants.SESSION_INVOICE_DTO%>' 
				       paramProperty="id"
				       paramScope="session">
				<bean:message key="invoice.notify.link"/>
			</html:link>
	    </td>
	</tr>
	</logic:notEqual>
	
</table>
<p><bean:message key="invoice.lines.title"/></p>
<table class="list">
	<tr class="listH">
		<td><bean:message key="invoice.line.description.prompt"/></td>
		<td><bean:message key="invoice.line.quantity.prompt"/></td>
		<td/> <!-- room for the currency symbol -->
		<td><bean:message key="invoice.line.price.prompt"/></td>
		<td><bean:message key="invoice.line.amount.prompt"/></td>
	</tr>
	<logic:iterate id="line" name='<%=Constants.SESSION_INVOICE_DTO%>' 
		           property="invoiceLines"
		           scope="session">
		<logic:present name="line" property="typeId">
		<c:choose>
			<c:when test="${colorFlag == 1}">
				<tr class="listB">
				<c:remove var="colorFlag"/>
			</c:when>
			<c:otherwise>
				<tr class="listA">
				<c:set var="colorFlag" value="1"/>
			</c:otherwise>
		</c:choose>
		</logic:present>
		<logic:notPresent name="line" property="typeId">
			<tr class="listSubaccount">
		</logic:notPresent>
		
			<td class="list"><bean:write name="line" property="description"/></td>
			<td class="list" align="right"><bean:write name="line" property="quantity"/></td>
			<td class="list">
				<logic:present name="line" property="amount">
				<bean:write name='<%=Constants.SESSION_INVOICE_DTO%>' 
							property="currencySymbol"
							scope="session"
							filter="false" />
				</logic:present>
			</td>
			<td class="list" align="right"><bean:write name="line" property="price" formatKey="format.money"/></td>
			<td class="list" align="right"><bean:write name="line" property="amount" formatKey="format.money"/></td>									
		</tr>
	</logic:iterate>
</logic:present>

<logic:notPresent name='<%=Constants.SESSION_INVOICE_DTO%>' scope="session">
	<tr class="infoA">
		<td class="infoprompt"><bean:message key="invoice.notPresent"/></td>
	</tr>
</logic:notPresent>
</table>	
