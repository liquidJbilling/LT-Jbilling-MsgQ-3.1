<%@ page import="com.sapienter.jbilling.common.Constants; com.sapienter.jbilling.server.user.UserBL; com.sapienter.jbilling.server.user.contact.db.ContactDTO" %>

<%--
  Shows details of a selected user.

  @author Brian Cowdery
  @since  23-Nov-2010
--%>

<g:set var="customer" value="${selected.customer}"/>
<g:set var="contact" value="${ContactDTO.findByUserId(selected.id)}"/>

<div class="column-hold">
    <!-- user notes -->
    <div class="heading">
        <strong>
            <g:if test="${contact && (contact.firstName || contact.lastName)}">
                ${contact.firstName} ${contact.lastName}
            </g:if>
            <g:else>
                ${selected.userName}
            </g:else>
            <em><g:if test="${contact}">${contact.organizationName}</g:if></em>
        </strong>
    </div>
    <div class="box edit">
        <g:remoteLink action="show" id="${selected.id}" params="[template: 'notes']" before="register(this);" onSuccess="render(data, next);" class="edit"/>
        <strong><g:message code="customer.detail.note.title"/></strong>
        <g:if test="${customer && customer.notes}">
            <p>${customer.notes}</p>
        </g:if>
        <g:else>
            <p><em><g:message code="customer.detail.note.empty.message"/></em></p>
        </g:else>
    </div>

    <!-- user details -->
    <div class="heading">
        <strong><g:message code="customer.detail.user.title"/></strong>
    </div>
    <div class="box">
        <table class="dataTable" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td><g:message code="customer.detail.user.user.id"/></td>
                    <td class="value"><g:link controller="customerInspector" action="inspect" id="${selected.id}" title="${message(code: 'customer.inspect.link')}">${selected.id}</g:link></td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.user.username"/></td>
                    <td class="value">${selected.userName}</td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.user.status"/></td>
                    <td class="value">${selected.userStatus.description}</td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.user.created.date"/></td>
                    <td class="value"><g:formatDate format="MMM-dd-yyyy" date="${selected.createDatetime}"/></td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.user.email"/></td>
                    <td class="value"><a href="mailto:${contact?.email}">${contact?.email}</a></td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- user payment details -->
    <div class="heading">
        <strong><g:message code="customer.detail.payment.title"/></strong>
    </div>
    <div class="box">
        <g:set var="invoice" value="${selected.invoices ? selected.invoices.asList().first() : null}"/>
        <g:set var="payment" value="${selected.payments ? selected.payments.asList().first() : null}"/>

        <table class="dataTable" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td><g:message code="customer.detail.payment.invoiced.date"/></td>
                    <td class="value"><g:formatDate format="MMM-dd-yyyy" date="${invoice?.createDatetime}"/></td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.payment.due.date"/></td>
                    <td class="value"><g:formatDate format="MMM-dd-yyyy" date="${invoice?.dueDate}"/></td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.payment.invoiced.amount"/></td>
                    <td class="value"><g:formatNumber number="${invoice?.total}" type="currency" currencyCode="${selected.currency.code}"/></td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.payment.amount.owed"/></td>
                    <td class="value"><g:formatNumber number="${new UserBL().getBalance(selected.id)}" type="currency" currencyCode="${selected.currency.code}"/></td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.payment.lifetime.revenue"/></td>
                    <td class="value"><g:formatNumber number="${revenue}" type="currency" currencyCode="${selected.currency.code}"/></td>
                </tr>
            </tbody>
        </table>

        <hr/>

        <g:set var="card" value="${selected.creditCards ? selected.creditCards.asList().first() : null}"/>
        <table class="dataTable" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td><g:message code="customer.detail.payment.credit.card"/></td>
                    <td class="value">
                        %{-- obscure credit card by default, or if the preference is explicitly set --}%
                        <g:if test="${card?.number && preferenceIsNullOrEquals(preferenceId: Constants.PREFERENCE_HIDE_CC_NUMBERS, value: 1, true)}">
                            <g:set var="creditCardNumber" value="${card.number.replaceAll('^\\d{12}','************')}"/>
                            ${creditCardNumber}
                        </g:if>
                        <g:else>
                            ${card?.number}
                        </g:else>
                    </td>
                </tr>

                <tr>
                    <td><g:message code="customer.detail.payment.credit.card.expiry"/></td>
                    <td class="value"><g:formatDate format="MMM-dd-yyyy" date="${card?.ccExpiry}"/></td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- contact details -->    
    <div class="heading">
        <strong><g:message code="customer.detail.contact.title"/></strong>
    </div>
    <g:if test="${contact}">
    <div class="box">

        <table class="dataTable" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td><g:message code="customer.detail.contact.telephone"/></td>
                    <td class="value">
                        <g:if test="${contact.phoneCountryCode}">${contact.phoneCountryCode}.</g:if>
                        <g:if test="${contact.phoneAreaCode}">${contact.phoneAreaCode}.</g:if>
                        ${contact.phoneNumber}
                    </td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.contact.address"/></td>
                    <td class="value">${contact.address1} ${contact.address2}</td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.contact.city"/></td>
                    <td class="value">${contact.city}</td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.contact.state"/></td>
                    <td class="value">${contact.stateProvince}</td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.contact.country"/></td>
                    <td class="value">${contact.countryCode}</td>
                </tr>
                <tr>
                    <td><g:message code="customer.detail.contact.zip"/></td>
                    <td class="value">${contact.postalCode}</td>
                </tr>
            </tbody>
        </table>
    </div>
    </g:if>

    <div class="btn-box">
        <div class="row">
            <a href="#" class="submit order"><span><g:message code="button.create.order"/></span></a>
            <g:link controller="payment" action="edit" params="[userId: selected.id]" class="submit payment"><span><g:message code="button.create.payment"/></span></g:link>
        </div>
        <div class="row">
            <g:link action="edit" id="${selected.id}" class="submit edit"><span><g:message code="button.edit"/></span></g:link>
            <a onclick="showConfirm('delete-${selected.id}');" class="submit delete"><span><g:message code="button.delete"/></span></a>
        </div>
    </div>

    <g:render template="/confirm"
              model="['message': 'customer.delete.confirm',
                      'controller': 'user',
                      'action': 'delete',
                      'id': selected.id,
                      'ajax': true,
                      'update': 'column1',
                      'onYes': 'closePanel(\'#column2\')'
                     ]"/>

</div>