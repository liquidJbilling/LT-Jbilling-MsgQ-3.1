%{--
  jBilling - The Enterprise Open Source Billing System
  Copyright (C) 2003-2011 Enterprise jBilling Software Ltd. and Emiliano Conde

  This file is part of jbilling.

  jbilling is free software: you can redistribute it and/or modify
  it under the terms of the GNU Affero General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  jbilling is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU Affero General Public License for more details.

  You should have received a copy of the GNU Affero General Public License
  along with jbilling.  If not, see <http://www.gnu.org/licenses/>.
  --}%

<%@ page import="com.sapienter.jbilling.server.pricing.db.PriceModelStrategy; com.sapienter.jbilling.server.pricing.db.PriceModelStrategy; com.sapienter.jbilling.server.pricing.db.PriceModelStrategy" %>

<%--
  Editor form for price model attributes.

  This template is not the same as the attribute UI in the plan builder. The plan builder
  uses remote AJAX calls that can only be used in a web-flow. This template is to be used
  for standard .gsp pages.

  @author Brian Cowdery
  @since  02-Feb-2011
--%>

<g:set var="attributeIndex" value="${0}"/>
<g:set var="attributes" value="${model?.attributes ? new TreeMap<String, String>(model.attributes) : new TreeMap<String, String>()}"/>

<!-- all attribute definitions -->
<g:each var="definition" in="${type?.strategy?.attributeDefinitions}">
    <g:set var="attributeIndex" value="${attributeIndex + 1}"/>

    <g:set var="attribute" value="${attributes.remove(definition.name)}"/>

    <g:applyLayout name="form/input">
        <content tag="label"><g:message code="${definition.name}"/></content>
        <content tag="label.for">model.${modelIndex}.attribute.${attributeIndex}.value</content>

        <g:hiddenField name="model.${modelIndex}.attribute.${attributeIndex}.name" value="${definition.name}"/>
        <g:textField class="field" name="model.${modelIndex}.attribute.${attributeIndex}.value" value="${attribute}"/>
    </g:applyLayout>
</g:each>

<!-- remaining user-defined attributes -->
<g:each var="attribute" in="${attributes?.entrySet()}">
    <g:set var="attributeIndex" value="${attributeIndex + 1}"/>

    <g:applyLayout name="form/attribute">
        <g:if test="${attributeIndex == 1}">
            <content tag="label"><g:message code="plan.mode.attributes"/></content>
        </g:if>
        <content tag="name">
            <g:textField class="field" name="model.${modelIndex}.attribute.${attributeIndex}.name" value="${attribute.key}"/>
        </content>
        <content tag="value">
            <g:textField class="field" name="model.${modelIndex}.attribute.${attributeIndex}.value" value="${attribute.value}"/>
        </content>

        <a onclick="removeModelAttribute(this, ${modelIndex}, ${attributeIndex})">
            <img src="${resource(dir:'images', file:'cross.png')}" alt="remove"/>
        </a>
    </g:applyLayout>
</g:each>

<!-- one empty row -->
<g:set var="attributeIndex" value="${attributeIndex + 1}"/>
<g:applyLayout name="form/attribute">
    <g:if test="${attributeIndex == 1}">
        <content tag="label"><g:message code="plan.mode.attributes"/></content>
    </g:if>
    <content tag="name">
        <g:textField class="field" name="model.${modelIndex}.attribute.${attributeIndex}.name"/>
    </content>
    <content tag="value">
        <g:textField class="field" name="model.${modelIndex}.attribute.${attributeIndex}.value"/>
    </content>

    <a onclick="addModelAttribute(this, ${modelIndex}, ${attributeIndex})">
        <img src="${resource(dir:'images', file:'add.png')}" alt="remove"/>
    </a>
</g:applyLayout>

