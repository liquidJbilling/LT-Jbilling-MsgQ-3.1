%{--
  JBILLING CONFIDENTIAL
  _____________________

  [2003] - [2012] Enterprise jBilling Software Ltd.
  All Rights Reserved.

  NOTICE:  All information contained herein is, and remains
  the property of Enterprise jBilling Software.
  The intellectual and technical concepts contained
  herein are proprietary to Enterprise jBilling Software
  and are protected by trade secret or copyright law.
  Dissemination of this information or reproduction of this material
  is strictly forbidden.
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
        <img src="${resource(dir:'images', file:'add.png')}" alt="add"/>
    </a>
</g:applyLayout>

