<%@ page import="com.sapienter.jbilling.common.Constants" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>

    <script type="text/javascript">
        $(document).ready(function() {
            // toggle edit of selected payment type
            $('.payment-type').change(function() {
                if ($(this).is(':checked'))
                    $('.payment-type:checked').not(this).attr('checked', '');

                $('.payment-type').each(function() {
                    var disabled = $(this).is(':checked') ? '' : 'true';
                    $('#' + $(this).attr('toggle') + ' :input').not('.payment-type').attr('disabled', disabled);
                });
            });
            $('.payment-type:first').attr('checked','true').change();

            // populate payment amount with selected invoice balance
            $('#invoices input[name=invoiceId]').change(function() {
                $('#payment\\.amount').val($('#invoice-' + $(this).val() + '-balance').val());
            });
        });
    </script>
</head>
<body>
<div class="form-edit">

    <g:set var="isNew" value="${!payment || !payment?.id || payment?.id == 0}"/>

    <div class="heading">
        <strong>
            <g:if test="${!isNew}">
                <g:if test="${payment.isRefund > 0}">
                    <g:message code="payment.edit.refund.title"/>
                </g:if>
                <g:else>
                    <g:message code="payment.edit.payment.title"/>
                </g:else>
            </g:if>
            <g:else>
                <g:message code="payment.new.payment.title"/>
            </g:else>
        </strong>
    </div>

    <div class="form-hold">
        <g:form name="payment-edit-form" action="save">
            <fieldset>

                <!-- invoices to pay -->
                <g:if test="${invoices}">
                    <div id="invoices" class="box-cards">
                        <div class="box-cards-title">
                            <a class="btn-open"><span><g:message code="payment.payable.invoices.title"/></span></a>
                        </div>
                        <div class="box-card-hold">

                            <table cellpadding="0" cellspacing="0" class="innerTable">
                                <thead class="innerHeader">
                                <tr>
                                    <th><g:message code="invoice.label.number"/></th>
                                    <th><g:message code="invoice.label.payment.attempts"/></th>
                                    <th><g:message code="invoice.label.total"/></th>
                                    <th><g:message code="invoice.label.balance"/></th>
                                    <th><g:message code="invoice.label.duedate"/></th>
                                    <th><!-- action --> &nbsp;</th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each var="invoice" in="${invoices}">
                                    <g:set var="currency" value="${currencies.find { it.id == invoice.currencyId }}"/>

                                    <tr>
                                        <td class="innerContent">
                                            <g:applyLayout name="form/radio">
                                                <g:radio id="invoice-${invoice.id}" name="invoiceId" value="${invoice.id}"/>
                                                <label for="invoice-${invoice.id}" class="rb">
                                                    <g:message code= "payment.link.invoice" args="[invoice.number]"/>
                                                </label>
                                            </g:applyLayout>
                                        </td>
                                        <td class="innerContent">
                                            ${invoice.paymentAttempts}
                                        </td>
                                        <td class="innerContent">
                                            <g:formatNumber number="${invoice.getTotalAsDecimal()}" type="currency" currencyCode="${currency.code}"/>
                                            <g:hiddenField name="invoice-${invoice.id}-amount" value="${formatNumber(number: invoice.total, formatName: 'money.format')}"/>
                                        </td>
                                        <td class="innerContent">
                                            <g:formatNumber number="${invoice.getBalanceAsDecimal()}" type="currency" currencyCode="${currency.code}"/>
                                            <g:hiddenField name="invoice-${invoice.id}-balance" value="${formatNumber(number: invoice.balance, formatName: 'money.format')}"/>
                                        </td>
                                        <td class="innerContent">
                                            <g:formatDate date="${invoice.dueDate}"/>
                                        </td>
                                        <td class="innerContent">
                                            <g:link controller="invoice" action="list" id="${invoice.id}">
                                                <g:message code= "payment.link.view.invoice" args="[invoice.number]"/>
                                            </g:link>
                                        </td>
                                    </tr>
                                </g:each>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </g:if>

                <!-- payment details  -->
                <div class="form-columns">
                    <div class="column">
                        <g:applyLayout name="form/text">
                            <content tag="label"><g:message code="payment.id"/></content>

                            <g:if test="${!isNew}"><span>${payment.id}</span></g:if>
                            <g:else><em><g:message code="prompt.id.new"/></em></g:else>

                            <g:hiddenField name="payment.id" value="${payment?.id}"/>
                        </g:applyLayout>

                        <g:if test="${!isNew}">
                            <g:applyLayout name="form/text">
                                <content tag="label"><g:message code="payment.attempt"/></content>
                                <span>${payment.attempt}</span>
                                <g:hiddenField name="payment.attempt" value="${payment?.attempt}"/>
                            </g:applyLayout>
                        </g:if>

                        <g:if test="${!isNew}">
                            <g:set var="currency" value="${currencies.find { it.id == payment?.currencyId }}"/>

                            <g:applyLayout name="form/text">
                                <content tag="label"><g:message code="prompt.user.currency"/></content>
                                <span>${currency?.getDescription() ?: payment.currencyId}</span>
                                <g:hiddenField name="payment.currencyId" value="${payment?.currencyId}"/>
                            </g:applyLayout>
                        </g:if>
                        <g:else>
                            <g:applyLayout name="form/select">
                                <content tag="label"><g:message code="prompt.user.currency"/></content>
                                <content tag="label.for">payment.currencyId</content>
                                <g:select name="payment.currencyId" from="${currencies}"
                                          optionKey="id" optionValue="description"/>
                            </g:applyLayout>
                        </g:else>

                        <g:applyLayout name="form/input">
                            <content tag="label"><g:message code="payment.amount"/></content>
                            <content tag="label.for">payment.amount</content>
                            <g:textField class="field" name="payment.amount" value="${formatNumber(number: payment?.amount, formatName: 'money.format')}"/>
                        </g:applyLayout>

                        <g:applyLayout name="form/date">
                            <content tag="label"><g:message code="payment.date"/></content>
                            <content tag="label.for">payment.paymentDate</content>
                            <g:set var="paymentDate" value="${payment?.paymentDate ?: new Date()}"/>
                            <g:textField class="field" name="payment.paymentDate" value="${formatDate(date: paymentDate, formatName: 'datepicker.format')}"/>
                        </g:applyLayout>

                        <g:if test="${isNew}">
                            <g:applyLayout name="form/checkbox">
                                <content tag="label"><g:message code="payment.is.refund.payment"/></content>
                                <content tag="label.for">payment.isRefund</content>
                                <g:checkBox class="cb checkbox" name="payment.isRefund" checked="${payment?.isRefund}"/>
                            </g:applyLayout>
                        </g:if>
                        <g:else>
                            <g:applyLayout name="form/text">
                                <content tag="label"><g:message code="payment.is.refund.payment"/></content>
                                <span><g:formatBoolean boolean="${payment?.isRefund > 0}"/></span>
                                <g:hiddenField name="payment.isRefund" value="${payment?.isRefund}"/>
                            </g:applyLayout>
                        </g:else>
                    </div>

                    <div class="column">
                        <g:applyLayout name="form/text">
                            <content tag="label"><g:message code="payment.user.id"/></content>
                            <span><g:link controller="user" action="list" id="${user.userId}">${user.userId}</g:link></span>
                            <g:hiddenField name="payment.userId" value="${user.userId}"/>
                        </g:applyLayout>

                        <g:applyLayout name="form/text">
                            <content tag="label"><g:message code="prompt.login.name"/></content>
                            <span>${user.userName}</span>
                        </g:applyLayout>

                        <g:if test="${user.contact?.firstName || user.contact?.lastName}">
                            <g:applyLayout name="form/text">
                                <content tag="label"><g:message code="prompt.customer.name"/></content>
                                <em>${user.contact.firstName} ${user.contact.lastName}</em>
                            </g:applyLayout>
                        </g:if>

                        <g:if test="${user.contact?.organizationName}">
                            <g:applyLayout name="form/text">
                                <content tag="label"><g:message code="prompt.organization.name"/></content>
                                <em>${user.contact.organizationName}</em>
                            </g:applyLayout>
                        </g:if>
                    </div>
                </div>

                <!-- spacer -->
                <div>
                    <br/>&nbsp;
                </div>

                <!-- credit card -->
                %{
                    def creditCardAllowed = paymentMethods.find {
                        it.id == Constants.PAYMENT_METHOD_VISA ||
                        it.id == Constants.PAYMENT_METHOD_MASTERCARD ||
                        it.id == Constants.PAYMENT_METHOD_AMEX ||
                        it.id == Constants.PAYMENT_METHOD_DISCOVERY ||
                        it.id == Constants.PAYMENT_METHOD_DINERS ||
                        it.id == Constants.PAYMENT_METHOD_GATEWAY_KEY
                    }
                }%

                <g:if test="${(creditCardAllowed && isNew) || payment?.creditCard}">
                    <g:set var="creditCard" value="${payment?.creditCard}"/>
                    <g:hiddenField name="creditCard.id" value="${creditCard?.id}"/>

                    <div id="creditCard" class="box-cards ${creditCard ? 'box-cards-open' : ''}">
                        <div class="box-cards-title">
                            <a class="btn-open"><span><g:message code="prompt.credit.card"/></span></a>
                        </div>
                        <div class="box-card-hold">
                            <div class="form-columns">
                                <div class="column">
                                    <g:applyLayout name="form/input">
                                        <content tag="label"><g:message code="prompt.credit.card"/></content>
                                        <content tag="label.for">creditCard.number</content>
                                        <g:textField class="field" name="creditCard.number" value="${creditCard?.number}" />
                                    </g:applyLayout>

                                    <g:applyLayout name="form/input">
                                        <content tag="label"><g:message code="prompt.name.on.card"/></content>
                                        <content tag="label.for">creditCard.name</content>
                                        <g:textField class="field" name="creditCard.name" value="${creditCard?.name}" />
                                    </g:applyLayout>

                                    <g:applyLayout name="form/text">
                                        <content tag="label"><g:message code="prompt.expiry.date"/></content>
                                        <content tag="label.for">expiryMonth</content>
                                        <span>
                                            <g:textField class="text" name="expiryMonth" maxlength="2" size="2" value="${formatDate(date: creditCard?.expiry, format:'MM')}" />
                                            -
                                            <g:textField class="text" name="expiryYear" maxlength="4" size="4" value="${formatDate(date: creditCard?.expiry, format:'yyyy')}"/>
                                            mm/yyyy
                                        </span>
                                    </g:applyLayout>
                                </div>

                                <g:if test="${isNew}">
                                    <div class="column">
                                        <g:applyLayout name="form/checkbox">
                                            <content tag="label">Use Credit Card for Payment</content>
                                            <content tag="label.for">creditCardPayment</content>
                                            <g:checkBox class="cb checkbox payment-type" toggle="creditCard" name="creditCardPayment"/>
                                        </g:applyLayout>
                                    </div>
                                </g:if>
                            </div>
                        </div>
                    </div>
                </g:if>

                <!-- ach -->
                %{
                    def achAllowed = paymentMethods.find { it.id == Constants.PAYMENT_METHOD_ACH }
                }%

                <g:if test="${(achAllowed && isNew) || payment?.ach}">
                    <g:set var="ach" value="${payment?.ach}"/>
                    <g:hiddenField name="ach.id" value="${ach?.id}"/>

                    <div id="ach" class="box-cards ${ach ? 'box-cards-open' : ''}">
                        <div class="box-cards-title">
                            <a class="btn-open" href="#"><span><g:message code="prompt.ach"/></span></a>
                        </div>
                        <div class="box-card-hold">
                            <div class="form-columns">
                                <div class="column">
                                    <g:applyLayout name="form/input">
                                        <content tag="label"><g:message code="prompt.aba.routing.num"/></content>
                                        <content tag="label.for">ach.abaRouting</content>
                                        <g:textField class="field" name="ach.abaRouting" value="${ach?.abaRouting}" />
                                    </g:applyLayout>

                                    <g:applyLayout name="form/input">
                                        <content tag="label"><g:message code="prompt.bank.acc.num"/></content>
                                        <content tag="label.for">ach.bankAccount</content>
                                        <g:textField class="field" name="ach.bankAccount" value="${ach?.bankAccount}" />
                                    </g:applyLayout>

                                    <g:applyLayout name="form/input">
                                        <content tag="label"><g:message code="prompt.bank.name"/></content>
                                        <content tag="label.for">ach.bankName</content>
                                        <g:textField class="field" name="ach.bankName" value="${ach?.bankName}" />
                                    </g:applyLayout>

                                    <g:applyLayout name="form/input">
                                        <content tag="label"><g:message code="prompt.name.customer.account"/></content>
                                        <content tag="label.for">ach.accountName</content>
                                        <g:textField class="field" name="ach.accountName" value="${ach?.accountName}" />
                                    </g:applyLayout>

                                    <g:applyLayout name="form/radio">
                                        <content tag="label"><g:message code="prompt.account.type" /></content>

                                        <g:radio class="rb" id="ach.accountType.checking" name="ach.accountType" value="1" checked="${ach?.accountType == 1}"/>
                                        <label class="rb" for="ach.accountType.checking"><g:message code="label.account.checking"/></label>

                                        <g:radio class="rb" id="ach.accountType.savings" name="ach.accountType" value="2" checked="${ach?.accountType == 2}"/>
                                        <label class="rb" for="ach.accountType.savings"><g:message code="label.account.savings"/></label>
                                    </g:applyLayout>
                                </div>

                                <g:if test="${isNew}">
                                    <div class="column">
                                        <g:applyLayout name="form/checkbox">
                                            <content tag="label">Use ACH for Payment</content>
                                            <content tag="label.for">achPayment</content>
                                            <g:checkBox class="cb checkbox payment-type" toggle="ach" name="achPayment"/>
                                        </g:applyLayout>
                                    </div>
                                </g:if>
                            </div>
                        </div>
                    </div>
                </g:if>

                <!-- cheque -->
                %{
                    def chequeAllowed = paymentMethods.find { it.id == Constants.PAYMENT_METHOD_CHEQUE }
                }%

                <g:if if="cheque" test="${(chequeAllowed && isNew) || payment?.cheque}">
                    <g:set var="cheque" value="${payment?.cheque}"/>
                    <g:hiddenField name="cheque.id" value="${cheque?.id}"/>

                    <div id="cheque" class="box-cards ${cheque ? 'box-cards-open' : ''}">
                        <div class="box-cards-title">
                            <a class="btn-open"><span><g:message code="prompt.cheque"/></span></a>
                        </div>
                        <div class="box-card-hold">
                            <div class="form-columns">
                                <div class="column">
                                    <g:applyLayout name="form/input">
                                        <content tag="label"><g:message code="prompt.cheque.bank"/></content>
                                        <content tag="label.for">cheque.bank</content>
                                        <g:textField class="field" name="cheque.bank" value="${cheque?.bank}"/>
                                    </g:applyLayout>

                                    <g:applyLayout name="form/input">
                                        <content tag="label"><g:message code="prompt.cheque.number"/></content>
                                        <content tag="label.for">cheque.number</content>
                                        <g:textField class="field" name="cheque.number" value="${cheque?.number}"/>
                                    </g:applyLayout>

                                    <g:applyLayout name="form/date">
                                        <content tag="label"><g:message code="prompt.cheque.date"/></content>
                                        <content tag="label.for">cheque.date</content>
                                        <g:textField class="field" name="cheque.date" value="${formatDate(date: cheque?.date, formatName:'datepicker.format')}"/>
                                    </g:applyLayout>
                                </div>

                                <g:if test="${isNew}">
                                    <div class="column">
                                        <g:applyLayout name="form/checkbox">
                                            <content tag="label">Use Cheque for Payment</content>
                                            <content tag="label.for">chequePayment</content>
                                            <g:checkBox class="cb checkbox payment-type" toggle="cheque" name="chequePayment"/>
                                        </g:applyLayout>
                                    </div>
                                </g:if>
                            </div>
                        </div>
                    </div>
                </g:if>

                <!-- box text -->
                <div class="box-text">
                    <g:textArea name="user.notes" value="${payment?.paymentNotes}" rows="5" cols="60"/>
                </div>

                <div class="buttons">
                    <ul>
                        <li>
                            <a onclick="$('#payment-edit-form').submit()" class="submit payment">
                                <g:if test="${!payment}"><span><g:message code="button.make.payment"/></span></g:if>
                                <g:if test="${payment}"><span><g:message code="button.save"/></span></g:if>
                            </a>
                        </li>
                        <li>
                            <g:link action="list" class="submit cancel"><span><g:message code="button.cancel"/></span></g:link>
                        </li>
                    </ul>
                </div>

            </fieldset>
        </g:form>
    </div>

</div>
</body>
</html>