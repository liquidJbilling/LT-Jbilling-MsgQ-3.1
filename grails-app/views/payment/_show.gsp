<%@ page import="com.sapienter.jbilling.common.Constants; com.sapienter.jbilling.server.user.contact.db.ContactDTO" %>

<%--
  Shows details of a selected payment.

  @author Brian Cowdery
  @since 04-Jan-2011
--%>

<g:set var="customer" value="${selected.baseUser.customer}"/>
<g:set var="contact" value="${ContactDTO.findByUserId(selected.baseUser.id)}"/>

<div class="column-hold">
    <div class="heading">
        <strong>
            <g:if test="${selected.isRefund > 0}">
                <g:message code="payment.refund.title"/>
            </g:if>
            <g:else>
                <g:message code="payment.payment.title"/>
            </g:else>
            <em>${selected.id}</em>
        </strong>
    </div>

    <div class="box">
        <!-- user details -->
        <table class="dataTable" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td><g:message code="payment.user.id"/></td>
                    <td class="value">${selected.baseUser.id}</td>
                </tr>

                <g:if test="${contact?.firstName || contact?.lastName}">
                <tr>
                    <td><g:message code="prompt.customer.name"/></td>
                    <td class="value">${contact.firstName} ${contact.lastName}</td>
                </tr>
                </g:if>

                <g:if test="${contact?.organizationName}">
                <tr>
                    <td><g:message code="prompt.organization.name"/></td>
                    <td class="value">${contact.organizationName}</td>
                </tr>
                </g:if>

                <tr>
                    <td><g:message code="prompt.login.name"/></td>
                    <td class="value">${selected.baseUser.userName}</td>
                </tr>
            </tbody>
        </table>

        <!-- payment details -->
        <table class="dataTable" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td><g:message code="payment.date"/></td>
                    <td class="value"><g:formatDate date="${selected.paymentDate ?: selected.createDatetime}" formatName="date.format"/></td>
                </tr>
                <tr>
                    <td><g:message code="payment.amount"/></td>
                    <td class="value"><g:formatNumber number="${selected.amount}" type="currency" currencyCode="${selected.currencyDTO.code}"/></td>
                </tr>
                <tr>
                    <td><g:message code="payment.result"/></td>
                    <td class="value">${selected.paymentResult.getDescription(session['language_id'])}</td>
                </tr>
            </tbody>
        </table>

        <hr/>

        <table class="dataTable" cellspacing="0" cellpadding="0">
            <tbody>
                <tr>
                    <td><g:message code="payment.id"/></td>
                    <td class="value">${selected.id}</td>
                </tr>
                <tr>
                    <td><g:message code="payment.balance"/></td>
                    <td class="value">
                        <g:formatNumber number="${selected.balance}" type="currency" currencyCode="${selected.currencyDTO.code}"/>
                        <g:if test="${selected.balance.compareTo(BigDecimal.ZERO) > 0}">
                            &nbsp; - &nbsp;
                            <g:link controller="payment" action="link" id="${selected.id}">
                                Pay Invoice
                            </g:link>
                        </g:if>

                    </td>
                </tr>
                <tr>
                    <td><g:message code="payment.attempt"/></td>
                    <td class="value">${selected.attempt ?: 0}</td>
                </tr>
                <tr>
                    <td><g:message code="payment.is.preauth"/></td>
                    <td class="value"><em><g:formatBoolean boolean="${selected.isPreauth > 0}"/></em></td>
                </tr>
            </tbody>
        </table>

        <!-- list of linked invoices -->
        <g:if test="${selected.invoicesMap}">
            <table cellpadding="0" cellspacing="0" class="innerTable">
                <thead class="innerHeader">
                    <tr>
                        <th><g:message code="payment.invoice.payment"/></th>
                        <th><g:message code="payment.invoice.payment.amount"/></th>
                        <th><g:message code="payment.invoice.payment.date"/></th>
                        <th><!-- action --> &nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each var="invoicePayment" in="${selected.invoicesMap}">
                    <tr>
                        <td class="innerContent">
                            <g:link controller="invoice" action="list" id="${invoicePayment.invoiceEntity.id}">
                                <g:message code="payment.link.invoice" args="[invoicePayment.invoiceEntity.number]"/>
                            </g:link>
                        </td>
                        <td class="innerContent">
                            <g:formatNumber number="${invoicePayment.amount}" type="currency" currencyCode="${selected.currencyDTO.code}"/>
                        </td>
                        <td class="innerContent">
                            <g:formatDate date="${invoicePayment.createDatetime}"/>
                        </td>
                        <td class="innerContent">
                            <g:remoteLink action="unlink" id="${selected.id}" params="[invoiceId: invoicePayment.invoiceEntity.id]" before="register(this);" onSuccess="render(data, second);">
                                <g:message code="payment.link.unlink"/>
                            </g:remoteLink>
                        </td>
                    </tr>
                    </g:each>
                </tbody>
            </table>
        </g:if>
    </div>

    <!-- credit card details -->
    <g:if test="${selected.creditCard}">
        <g:set var="creditCard" value="${selected.creditCard}"/>

        <div class="heading">
            <strong><g:message code="payment.credit.card"/></strong>
        </div>
        <div class="box">
            <table class="dataTable" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td><g:message code="payment.credit.card.name"/></td>
                        <td class="value">${creditCard.name}</td>
                    </tr>
                    <tr>
                        <td><g:message code="payment.credit.card.type"/></td>
                        <td class="value">${selected.paymentMethod.getDescription(session['language_id'])}</td>
                    </tr>
                    <tr>
                        <td><g:message code="payment.credit.card.number"/></td>
                        <td class="value">
                            %{-- obscure credit card by default, or if the preference is explicitly set --}%
                            <g:if test="${preferenceIsNullOrEquals(preferenceId: Constants.PREFERENCE_HIDE_CC_NUMBERS, value: 1, true)}">
                                <g:set var="creditCardNumber" value="${creditCard.number.replaceAll('^\\d{12}','************')}"/>
                                ${creditCardNumber}
                            </g:if>
                            <g:else>
                                ${creditCard.number}
                            </g:else>
                        </td>
                    </tr>
                    <tr>
                        <td><g:message code="payment.credit.card.expiry"/></td>
                        <td class="value"><g:formatDate date="${creditCard.ccExpiry}" formatName="credit.card.date.format"/></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </g:if>

    <!-- ACH banking details -->
    <g:if test="${selected.ach}">
        <g:set var="ach" value="${selected.ach}"/>

        <div class="heading">
            <strong><g:message code="payment.ach"/></strong>
        </div>
        <div class="box">
            <table class="dataTable" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td><g:message code="payment.ach.account.name"/></td>
                        <td class="value">${ach.accountName}</td>
                    </tr>
                    <tr>
                        <td><g:message code="payment.ach.bank.name"/></td>
                        <td class="value">${ach.bankName}</td>
                    </tr>
                    <tr>
                        <td><g:message code="payment.ach.routing.number"/></td>
                        <td class="value">${ach.adbRouting}</td>
                    </tr>
                    <tr>
                        <td><g:message code="payment.ach.account.number"/></td>
                        <td class="value">${ach.bankAccount}</td>
                    </tr>
                    <tr>
                        <td><g:message code="payment.ach.account.type"/></td>
                        <td class="value">
                            <g:if test="${ach.accountType == 1}">
                                <g:message code="label.account.checking"/>
                            </g:if>
                            <g:else>
                                <g:message code="label.account.savings"/>
                            </g:else>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </g:if>

    <!-- cheque details -->
    <g:if test="${selected.paymentInfoCheque}">
        <g:set var="cheque" value="${selected.paymentInfoCheque}"/>

        <div class="heading">
            <strong><g:message code="payment.cheque"/></strong>
        </div>
        <div class="box">
            <table class="dataTable" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td><g:message code="payment.cheque.bank"/></td>
                        <td class="value">${cheque.bank}</td>
                    </tr>
                    <tr>
                        <td><g:message code="payment.cheque.number"/></td>
                        <td class="value">${cheque.chequeNumber}</td>
                    </tr>
                    <tr>
                        <td><g:message code="payment.cheque.date"/></td>
                        <td class="value"><g:formatDate date="${cheque.date}" formatName="date.format"/></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </g:if>

    <div class="btn-box">
        <!-- edit or delete unlinked payments -->
        <div class="row">
            <g:if test="${!selected.invoicesMap}">
                <g:if test="${selected.paymentResult.id == Constants.RESULT_ENTERED}">
                    <g:link action="edit" id="${selected.id}" class="submit edit"><span><g:message code="button.edit"/></span></g:link>
                </g:if>
                <a onclick="showConfirm('delete-${selected.id}');" class="submit delete"><span><g:message code="button.delete"/></span></a>
            </g:if>
            <g:else>
                <em><g:message code="payment.cant.edit.linked"/></em>
            </g:else>
        </div>
    </div>

    <g:render template="/confirm"
              model="['message': 'payment.delete.confirm',
                      'controller': 'payment',
                      'action': 'delete',
                      'id': selected.id,
                      'ajax': true,
                      'update': 'column1',
                      'onYes': 'closePanel(\'#column2\')'
                     ]"/>

</div>