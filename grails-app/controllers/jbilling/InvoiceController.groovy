/*
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
 */

package jbilling

import grails.plugins.springsecurity.Secured;
import javax.servlet.ServletOutputStream
import grails.converters.JSON
import com.sapienter.jbilling.server.payment.PaymentWS;
import com.sapienter.jbilling.server.util.IWebServicesSessionBean;
import com.sapienter.jbilling.server.util.WebServicesSessionSpringBean;
import com.sapienter.jbilling.server.invoice.InvoiceWS;
import com.sapienter.jbilling.server.invoice.db.InvoiceDTO;
import com.sapienter.jbilling.server.user.UserWS;
import com.sapienter.jbilling.common.SessionInternalError
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap
import com.sapienter.jbilling.server.util.csv.Exporter
import com.sapienter.jbilling.server.util.csv.CsvExporter
import com.sapienter.jbilling.client.util.DownloadHelper
import com.sapienter.jbilling.server.user.db.CompanyDTO;
import com.sapienter.jbilling.server.item.CurrencyBL;

/**
 * BillingController
 *
 * @author Vikas Bodani
 * @since
 */
@Secured(['isAuthenticated()'])
class InvoiceController {

    static pagination = [max: 25, offset: 0]

    def webServicesSession
    def viewUtils
    def filterService
    def recentItemService
    def breadcrumbService

    def index = {
        redirect action: 'list', params: params
    }

    def list = {
        def filters = filterService.getFilters(FilterType.INVOICE, params)
        def invoices = getInvoices(filters, params)

        def selected = params.id ? webServicesSession.getInvoiceWS(params.int('id')) : null

        breadcrumbService.addBreadcrumb(controllerName, actionName, null, selected?.id)

        if (params.applyFilter) {
            render template: 'lists', model: [ invoices: invoices, filters: filters, selected: selected ]
        } else {
            [ invoices: invoices, filters: filters, selected: selected ]
        }
    }

    def getInvoices(filters, GrailsParameterMap params) {
        params.max = params?.max?.toInteger() ?: pagination.max
        params.offset = params?.offset?.toInteger() ?: pagination.offset

        // hide review invoices by default
        def reviewFilter = filters.find{ it.field == 'isReview' }
        if (reviewFilter.value == null) reviewFilter.integerValue = 0

        // get list
        return InvoiceDTO.createCriteria().list(
                max: params.max,
                offset: params.offset
        ) {
            and {
                filters.each { filter ->
                    if (filter.value != null) {
                        addToCriteria(filter.getRestrictions());
                    }
                }

                baseUser {
                    eq('company', new CompanyDTO(session['company_id']))
                }
                eq('deleted', 0)
            }
            order("id", "desc")
        }
    }

    /**
     * Applies the set filters to the order list, and exports it as a CSV for download.
     */
    def csv = {
        def filters = filterService.getFilters(FilterType.INVOICE, params)

        params.max = CsvExporter.MAX_RESULTS
        def invoices = getInvoices(filters, params)

        if (invoices.totalCount > CsvExporter.MAX_RESULTS) {
            flash.error = message(code: 'error.export.exceeds.maximum')
            flash.args = [CsvExporter.MAX_RESULTS]
            redirect action: 'list', id: params.id

        } else {
            DownloadHelper.setResponseHeader(response, "invoices.csv")
            Exporter<InvoiceDTO> exporter = CsvExporter.createExporter(InvoiceDTO.class);
            render text: exporter.export(invoices), contentType: "text/csv"
        }
    }

    /**
     * Convenience shortcut, this action shows all invoices for the given user id.
     */
    def user = {
        def filter = new Filter(type: FilterType.ALL, constraintType: FilterConstraint.EQ, field: 'baseUser.id', template: 'id', visible: true, integerValue: params.int('id'))
        filterService.setFilter(FilterType.INVOICE, filter)

        redirect action: 'list'
    }

    def show = {
        InvoiceWS invoice
        UserWS user
        List<PaymentWS> payments
        BigDecimal totalRevenue
        String delegatedInvoices = ""

        Integer invoiceId = params.int('id')

        if (invoiceId) {
            try {
                invoice = webServicesSession.getInvoiceWS(invoiceId)
                user = webServicesSession.getUserWS(invoice?.getUserId())

                payments = new ArrayList<PaymentWS>(invoice?.payments?.length)
                for (Integer paymentId : invoice?.payments) {
                    PaymentWS payment = webServicesSession.getPayment(paymentId)
                    payments.add(payment)
                }
                totalRevenue = webServicesSession.getTotalRevenueByUser(invoice?.getUserId())

                InvoiceWS delegate = invoice;
                while (delegate?.getDelegatedInvoiceId()) {
                    delegatedInvoices += (" > " + delegate?.getDelegatedInvoiceId())
                    delegate = webServicesSession.getInvoiceWS(delegate?.getDelegatedInvoiceId())
                }

                if (delegatedInvoices.length() > 0) {
                    delegatedInvoices = delegatedInvoices.substring(3)
                }

                recentItemService.addRecentItem(invoiceId, RecentItemType.INVOICE)
                breadcrumbService.addBreadcrumb(controllerName, 'list', null, invoiceId, invoice?.number)

            } catch (Exception e) {
                log.error("Exception retrieving WS object.", e)
                flash.error = 'error.invoice.details'
                flash.args = [ invoiceId ]
            }
        }

        render template: params.template ?: 'show', model: [selected: invoice, user: user, totalRevenue: totalRevenue, delegatedInvoices: delegatedInvoices, payments: payments, currencies: currencies]
    }

    def snapshot = {
        def invoiceId = params.int('id')
        if (invoiceId) {
            InvoiceWS invoice = webServicesSession.getInvoiceWS(invoiceId)
            render template: 'snapshot', model: [ invoice: invoice, currencies: currencies ]
        }
    }

    def delete = {
        int invoiceId = params.int('id')
        int userId = params.int('_userId')

        if (invoiceId) {
            try {
                webServicesSession.deleteInvoice(invoiceId)
                flash.message = 'invoice.delete.success'
                flash.args = [ invoiceId ]

            } catch (Exception e) {
                log.error("Exception deleting invoice.", e)
                flash.error = 'error.invoice.delete'
                flash.args = [ params.id ]
                redirect action: 'list', params: [ id: userId ]
                return
            }
        }

        redirect action: list, params: [id: userId]
    }

    def notifyInvoiceByEmail = {
        if (params.id) {
            try {
                def sent = webServicesSession.notifyInvoiceByEmail(params.int('id'))

                if (sent) {
                    flash.message = 'invoice.prompt.success.email.invoice'
                    flash.args =  [ params.id ]
                } else {
                    flash.error = 'invoice.prompt.failure.email.invoice'
                    flash.args = [ params.id ]
                }

            } catch (Exception e) {
                log.error("Exception occurred sending invoice email", e)
                flash.error = 'invoice.prompt.failure.email.invoice'
                flash.args = params.id
            }
        }

        redirect action: 'list', params: [ id: params.id ]
    }

    def downloadPdf = {
        Integer invoiceId = params.int('id')

        try {
            byte[] pdfBytes = webServicesSession.getPaperInvoicePDF(invoiceId)
            DownloadHelper.sendFile(response, "invoice-${invoiceId}.pdf", "application/pdf", pdfBytes)

        } catch (Exception e) {
            log.error("Exception fetching PDF invoice data.", e)
            flash.error = 'invoice.prompt.failure.downloadPdf'
            redirect action: 'list', params: [ id: invoiceId ]
        }
    }

    def removePaymentLink = {
        Integer invoiceId = params.int('id')
        Integer paymentId = params.int('paymentId')

        try {
            webServicesSession.removePaymentLink(invoiceId, paymentId)
            flash.message = "payment.unlink.success"

        } catch (SessionInternalError e) {
            viewUtils.resolveException(flash, session.locale, e);

        } catch (Exception e) {
            log.error("Exception unlinking invoice.", e)
            flash.error = "error.invoice.unlink.payment"
        }

        redirect action: 'list', params: [ id: invoiceId ]
    }

    def getCurrencies() {
        def currencies = new CurrencyBL().getCurrencies(session['language_id'].toInteger(), session['company_id'].toInteger())
        return currencies.findAll { it.inUse }
    }
}
