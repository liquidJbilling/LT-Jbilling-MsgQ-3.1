package jbilling

import javax.servlet.ServletOutputStream

import grails.converters.JSON

import com.sapienter.jbilling.server.payment.PaymentWS;
import com.sapienter.jbilling.server.util.IWebServicesSessionBean;
import com.sapienter.jbilling.server.util.WebServicesSessionSpringBean;
import com.sapienter.jbilling.server.invoice.InvoiceWS;
import com.sapienter.jbilling.server.invoice.db.InvoiceDTO;
import com.sapienter.jbilling.server.user.UserWS;
import com.sapienter.jbilling.common.SessionInternalError;


class InvoiceController {
	
	Integer languageId= session["language_id"]
	
	static pagination = [ max: 25, offset: 0 ]

    def webServicesSession
    def viewUtils
    def filterService
    def recentItemService
	def breadcrumbService
	def filters 
	
    def index = {
        redirect action: list, params: params
    }

	def list = {

		def invoices;
		log.info "Invoice 'list' method, userid=[${params.id}], "
		try {
			filters = filterService.getFilters(FilterType.INVOICE, params)
			log.info "Filters are ${filters}"
			if ( params["id"] && params["id"].matches("^[0-9]+") ) {
				def invId= Integer.parseInt(params["id"])
				redirect(action: 'show', params:[id:invId])
			} else {
				invoices= getInvoices(filters)
			}
		} catch (Exception e) {
			flash.message = 'invoices.empty'
			flash.args= [params["id"]]
		}
		breadcrumbService.addBreadcrumb(controllerName, actionName, null, null)
		log.info "found invoices [${invoices?.size()}]"
		[invoices:invoices, filters:filters]
	}

	def getInvoices(filters) {
		params.max = params?.max?.toInteger() ?: pagination.max
		params.offset = params?.offset?.toInteger() ?: pagination.offset
		
		return InvoiceDTO.createCriteria().list(
			max:    params.max,
			offset: params.offset
			) {
				and {
					filters.each { filter ->
						if (filter.value) {
							switch (filter.constraintType) {
								case FilterConstraint.EQ:
									eq(filter.field, filter.value)
									break
	
								case FilterConstraint.DATE_BETWEEN:
									between(filter.field, filter.startDateValue, filter.endDateValue)
									break
									
								case FilterConstraint.LIKE:
									like(filter.field, filter.stringValue)
									break
							}
						}
					}
					eq('deleted', 0)
				}
			}
	}
	
	def showListAndInvoice = { 
		try {
		def invId= params.id as Integer
		
		log.info "showListAndInvoice(${invId}) called.."
		
		def filters = filterService.getFilters(FilterType.INVOICE, params)
		def invoices= getInvoices(filters)
		
		def invoice= webServicesSession.getInvoiceWS(invId)
		def user= webServicesSession.getUserWS(invoice?.getUserId())
		
		log.info "Found invoice ${invoice?.number}, Loading..."
		log.info "Found user ${user}"
		
		def payments= new ArrayList<PaymentWS>(invoice?.payments?.length)
		for(Integer pid: invoice?.payments) {
			PaymentWS payment=webServicesSession.getPayment(pid)
			payments.add(payment)
		}
		def totalRevenue= webServicesSession.getTotalRevenueByUser(invoice?.getUserId())
		
		InvoiceWS temp= invoice;
		String delegatedInvoices = ""
		while (temp?.getDelegatedInvoiceId()) {
			delegatedInvoices += (" > " + temp?.getDelegatedInvoiceId())
			temp= webServicesSession.getInvoiceWS(temp?.getDelegatedInvoiceId())
		}
		if (delegatedInvoices.length() > 0 ) {
			delegatedInvoices= delegatedInvoices.substring(3)
		}
		log.info "rendering view showListAndInvoice"
		
		render view: 'showListAndInvoice', model:[invoices:invoices, totalRevenue:totalRevenue,languageId:languageId,user:user, invoice:invoice, delegatedInvoices:delegatedInvoices, payments:payments]
		}catch (Exception e) {
			log.error e.getMessage()
			flash.error = 'error.invoice.details'
			flash.args= [params["id"]]
			redirect(action:'list')
		}
	}
	
	def show = {
		log.info "method invoice.show for id ${params.id} & userId ${params.userId}"
		InvoiceWS invoice;
		UserWS user;
		List<PaymentWS> payments;
		BigDecimal totalRevenue;
		String delegatedInvoices= ""
		
		log.info "Show Invoice |${params.id}|"
		
		if (params["id"] && params["id"].matches("^[0-9]+")) {
			
			int invId= Integer.parseInt(params["id"])
			
			recentItemService.addRecentItem(invId, RecentItemType.INVOICE)
			breadcrumbService.addBreadcrumb(controllerName, actionName, null, invId)

			log.info "Template: ${params.template}"
			if (params.template != 'show') {
				redirect(action: 'showListAndInvoice', params:[id:invId])
			} 
			
			try {
				invoice= webServicesSession.getInvoiceWS(invId)
				user= webServicesSession.getUserWS(invoice?.getUserId())
				
				log.info "Found invoice ${invoice?.number}, Loading..."
				log.info "Found user ${user}"
				
				payments= new ArrayList<PaymentWS>(invoice?.payments?.length)
				for(Integer pid: invoice?.payments) {
					PaymentWS payment=webServicesSession.getPayment(pid)
					payments.add(payment)
				}
				totalRevenue= webServicesSession.getTotalRevenueByUser(invoice?.getUserId())
				
				InvoiceWS temp= invoice;
				while (temp?.getDelegatedInvoiceId()) {
					delegatedInvoices += (" > " + temp?.getDelegatedInvoiceId())
					temp= webServicesSession.getInvoiceWS(temp?.getDelegatedInvoiceId())
				}
				if (delegatedInvoices.length() > 0 )
					delegatedInvoices= delegatedInvoices.substring(3)
			} catch (Exception e) {
				log.error e.getMessage()
				flash.error = 'error.invoice.details'
				flash.args= [params["id"]]
				redirect(action:'list')
			}
		}		
		
		render template: "show", model:[totalRevenue:totalRevenue,languageId:languageId,user:user, invoice:invoice, delegatedInvoices:delegatedInvoices, payments:payments]
	}
	
	def delete = {
		
		log.info "Delete params= id: ${params.id} , for userId: ${params._userId}"
		int invoiceId =params["id"]?.toInteger()
		int userId= params._userId?.toInteger()
		if (invoiceId) {
			try {
				webServicesSession.deleteInvoice(invoiceId)
				flash.message = 'invoice.delete.success'
				flash.args= [invoiceId]
			}  catch (Exception e) {
				log.info (e.getMessage())
				flash.error = 'error.invoice.delete'
				flash.args= [params["id"]]
				redirect(action: 'list', params:[id:userId])
			}
		}
		
		redirect (action:list, params:[id:userId])
	}
	
	def downloadPdf = {
		log.info 'calling downloadPdf'
		Integer invId= params.id as Integer
		try { 
			byte[] pdfBytes= webServicesSession.getPaperInvoicePDF(invId)
			log.info "Byte Size ${pdfBytes.length}"
			
			ServletOutputStream servletOutputStream = response.outputStream
			
			response.setContentType("application/pdf")
			response.setContentLength(pdfBytes.length)
			
			response.setHeader("Content-disposition", "inline; filename=Invoice${invId}.pdf")
			response.setHeader("Expires", "0");
			response.setHeader("Cache-Control", "must-revalidate, post-check=0, pre-check=0");
			servletOutputStream << pdfBytes

		} catch (Exception e ) {
			log.error e.getMessage()
			flash.error = 'invoice.prompt.failure.downloadPdf'
			redirect(action: 'showListAndInvoice', params:[id:invId])
		}
	}
	
	def removePaymentLink = {
		
		Integer invId= params.id as Integer
		Integer paymentId= params.paymentId as Integer
		log.info "Parameters[Invoice Id: ${invId}, Payment Id: ${paymentId}"
		
		try {
			webServicesSession.removePaymentLink(invId, paymentId)
			flash.message = "payment.unlink.success"
		} catch (SessionInternalError e){
			viewUtils.resolveException(flash, session.locale, e);
		} catch (Exception e) {
			log.error e.getMessage()
			flash.error = "error.invoice.unlink.payment"
		}
		redirect(action: 'showListAndInvoice', params:[id:invId])
	}
}
