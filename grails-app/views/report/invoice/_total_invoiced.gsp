
<%--
  Parameters for the Total Invoiced Amount report.

  @author Brian Cowdery
  @since  08-Mar-2011
--%>

<div class="form-columns">
    <g:applyLayout name="form/date">
        <content tag="label"><g:message code="start_date"/></content>
        <content tag="label.for">parameters.start_date.value</content>
        <g:textField class="field" name="parameters.start_date.value" value="${formatDate(date: new Date(), formatName: 'datepicker.format')}"/>
    </g:applyLayout>

    <g:applyLayout name="form/date">
        <content tag="label"><g:message code="end_date"/></content>
        <content tag="label.for">parameters.end_date.value</content>
        <g:textField class="field" name="parameters.end_date.value"/>
    </g:applyLayout>

    <g:applyLayout name="form/select">
        <content tag="label"><g:message code="period"/></content>
        <content tag="label.for">parameters.period.value</content>
        <g:select name="parameters.period.value" from="[1, 2, 3]" valueMessagePrefix="period"/>
    </g:applyLayout>
</div>