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

<html:errors/>
<html:messages message="true" id="myMessage">
	<p><bean:write name="myMessage"/></p>
</html:messages>

<logic:present parameter="create">
    <%-- removal of the form bean from the session is necessary to
         avoid old data to show up later in creation/edition --%>
	<logic:messagesNotPresent>
		<%-- when a validation error happens, the bean shouldn't be
		     removed --%>
	    <% session.removeAttribute("item"); %>
    </logic:messagesNotPresent>
</logic:present>

<html:form action="/itemMaintain?action=edit&mode=item" >
      <logic:present parameter="create">                
  	      <logic:present parameter="promotion">                
               <html:hidden property="create" value="promotion"/>
          </logic:present>                
  	      <logic:notPresent parameter="promotion">                
               <html:hidden property="create" value="item"/>
          </logic:notPresent>                
          <!-- the prices this entity operates have to be initialized -->
          <jbilling:getOptions currencies="true"/>
          <jbilling:populateCurrencies/>
      </logic:present>
	
	  <table class="form">
	  <logic:notPresent parameter="create">   
	  	<tr class="form">
	  		<td></td>
	  		<td class="form_prompt"><bean:message key="item.prompt.id"/></td>
	  		<td><bean:write name="item" property="id"/></td>
	  	</tr>
	  </logic:notPresent>
	    <tr class="form">
  		  <td>
  		  	 <jbilling:help page="items" anchor="number">
  		  	 	<img border="0" src="/billing/graphics/help.gif"/>
  		  	 </jbilling:help>
  		  </td>
	      <td class="form_prompt"><bean:message key="item.prompt.internalNumber"/></td>
	      <jbilling:permission permission='<%=Constants.P_ITEM_EDIT%>'>
		      <td><html:text property="internalNumber" /></td>
	      </jbilling:permission>
		  <jbilling:permission permission='<%=Constants.P_ITEM_EDIT%>' negative="true">
		      <td><bean:write name="item" property="internalNumber" /></td>
	      </jbilling:permission>	      
    	</tr>
    	<logic:notPresent parameter="create">  
   		<jbilling:getOptions language="true"/>
    	<tr class="form">
  		  <td>
  		  	 <jbilling:help page="items" anchor="language">
  		  	 	<img border="0" src="/billing/graphics/help.gif"/>
  		  	 </jbilling:help>
  		  </td>
    		<td class="form_prompt"><bean:message key="item.prompt.language"/></td>
    		<td>
    			<table><tr>
					<td align="right">
						<html:select property="language">
						 	<html:options collection='<%=Constants.PAGE_LANGUAGES%>' 
				                    property="code"
				                    labelProperty="description"/>
					    </html:select>
					</td>
					<td align="left">
						<html:submit styleClass="form_button" property="reload">
							<bean:message key="all.prompt.reload"/>
						</html:submit>						
					</td>
				</tr></table>
    		</td>
    	</tr>
   		</logic:notPresent>
    	
	    <tr class="form">
  		  <td>
  		  	 <jbilling:help page="items" anchor="description">
  		  	 	<img border="0" src="/billing/graphics/help.gif"/>
  		  	 </jbilling:help>
  		  </td>
	      <td class="form_prompt"><bean:message key="item.prompt.description"/></td>
	      <jbilling:permission permission='<%=Constants.P_ITEM_EDIT%>'>	      
	          <td><html:textarea property="description" rows="3" cols="50"/></td>
	      </jbilling:permission>	      
	      <jbilling:permission permission='<%=Constants.P_ITEM_EDIT%>' negative="true">	      
	          <td><bean:write name="item" property="description" /></td>
	      </jbilling:permission>	      
    	</tr>
	    <tr class="form">
  		  <td>
  		  	 <jbilling:help page="items" anchor="types">
  		  	 	<img border="0" src="/billing/graphics/help.gif"/>
  		  	 </jbilling:help>
  		  </td>
	      <td class="form_prompt"><bean:message key="item.prompt.types"/></td>
	      <td>
	      	    <jbilling:getOptions itemType="true"/>
	      	    <html:select property="types" multiple="yes" size="3">
 			 	      <html:options collection='<%=Constants.PAGE_ITEM_TYPES%>' 
				                 property="code"
				                 labelProperty="description"/>
	      	    </html:select> 
	      </td>
    	</tr>
	      
	    <tr class="form">
  		  <td>
  		  	 <jbilling:help page="items" anchor="percentage">
  		  	 	<img border="0" src="/billing/graphics/help.gif"/>
  		  	 </jbilling:help>
  		  </td>
	      <td class="form_prompt"><bean:message key="item.prompt.percentage"/></td>
	      <jbilling:permission permission='<%=Constants.P_ITEM_EDIT%>'>	      
	          <td><html:text property="percentage" size="10"/></td>
	      </jbilling:permission>	      
	      <jbilling:permission permission='<%=Constants.P_ITEM_EDIT%>' negative="true">	      
	          <td><bean:write name="item" property="percentage" /></td>
	      </jbilling:permission>	      
    	</tr>
    	
    	 <logic:notPresent parameter="promotion">
	        <tr class="form">
				<td>
					 <jbilling:help page="items" anchor="manual">
						 <img border="0" src="/billing/graphics/help.gif"/>
					 </jbilling:help>
				</td>
	           <td class="form_prompt"><bean:message key="item.prompt.priceManual"/></td>
	           <td><html:checkbox property="chbx_priceManual" /></td>
    	   </tr>
    	</logic:notPresent>

	    <tr class="form">
  		  <td>
  		  	 <jbilling:help page="items" anchor="price">
  		  	 	<img border="0" src="/billing/graphics/help.gif"/>
  		  	 </jbilling:help>
  		  </td>
	      <td class="form_prompt" colspan="2"><bean:message key="item.prompt.prices"/></td>
    	</tr>
    	
        <logic:iterate id="itemPrice" name="item" property="prices" indexId="index">
	      <tr class="form">
	      	<td></td>
	      	<td class="form_prompt">
	      		<bean:write name="itemPrice" property="name"/>
	      	</td>
	      <jbilling:permission permission='<%=Constants.P_ITEM_EDIT%>'>	      
	          <td><html:text property='<%= "prices[" + index + "].priceForm" %>' size="10"/></td>
	      </jbilling:permission>	      
	      <jbilling:permission permission='<%=Constants.P_ITEM_EDIT%>' negative="true">	      
	          <td><bean:write name="item" property='<%= "prices[" + index + "].priceForm" %>'/></td>
	      </jbilling:permission>	      
	      </tr>
        </logic:iterate>

      <jbilling:permission permission='<%=Constants.P_ITEM_EDIT%>'>
	    <tr class="form">
    	  <td colspan="3" class="form_button">
            <logic:present parameter="create">
                <html:submit styleClass="form_button" property="create">
                    <bean:message key="item.prompt.create"/>
                </html:submit>
            </logic:present>
           <logic:notPresent parameter="create">
                <html:submit styleClass="form_button">
                    <bean:message key="all.prompt.submit"/>                
                </html:submit>
            </logic:notPresent>
         </td>
    	</tr>
      </jbilling:permission>    	
	  </table>
</html:form>
