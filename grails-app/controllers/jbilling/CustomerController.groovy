package jbilling

import com.sapienter.jbilling.client.ViewUtils
import com.sapienter.jbilling.common.Constants
import com.sapienter.jbilling.common.SessionInternalError
import com.sapienter.jbilling.server.entity.AchDTO
import com.sapienter.jbilling.server.entity.CreditCardDTO
import com.sapienter.jbilling.server.item.CurrencyBL
import com.sapienter.jbilling.server.user.ContactWS
import com.sapienter.jbilling.server.user.UserWS
import com.sapienter.jbilling.server.user.db.CompanyDTO
import com.sapienter.jbilling.server.user.db.UserDTO
import com.sapienter.jbilling.server.user.db.UserStatusDAS
import com.sapienter.jbilling.server.util.IWebServicesSessionBean
import grails.plugins.springsecurity.Secured

import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap
import org.springframework.security.authentication.encoding.PasswordEncoder

import com.sapienter.jbilling.server.util.csv.CsvExporter
import com.sapienter.jbilling.server.util.csv.Exporter
import com.sapienter.jbilling.client.util.DownloadHelper
import org.springframework.web.servlet.support.RequestContextUtils
import org.springframework.web.servlet.LocaleResolver
import org.springframework.web.servlet.i18n.SessionLocaleResolver
import com.sapienter.jbilling.client.user.UserHelper
import com.sapienter.jbilling.server.user.contact.db.ContactDTO

@Secured(['isAuthenticated()'])
class CustomerController {

    static pagination = [ max: 10, offset: 0 ]

    IWebServicesSessionBean webServicesSession
    ViewUtils viewUtils
    PasswordEncoder passwordEncoder

    def filterService
    def recentItemService
    def breadcrumbService

    def index = {
        redirect action: list, params: params
    }

    def getList(filters, statuses, GrailsParameterMap params) {
        params.max = params?.max?.toInteger() ?: pagination.max
        params.offset = params?.offset?.toInteger() ?: pagination.offset

        return UserDTO.createCriteria().list(
                max:    params.max,
                offset: params.offset
        ) {
            and {
                filters.each { filter ->
                    if (filter.value) {
                        // handle user status separately from the other constraints
                        // we need to find the UserStatusDTO to compare to
                        if (filter.constraintType == FilterConstraint.STATUS) {
                            eq("userStatus", statuses.find{ it.id == filter.integerValue })
                        } else {
                            addToCriteria(filter.getRestrictions());
                        }
                    }
                }

                roles {
                    eq('id', Constants.TYPE_CUSTOMER)
                }
                eq('company', new CompanyDTO(session['company_id']))
                eq('deleted', 0)
            }
            order('id', 'desc')
        }
    }

    /**
     * Get a list of users and render the list page. If the "applyFilters" parameter is given, the
     * partial "_users.gsp" template will be rendered instead of the complete user list.
     */
    def list = {
        def filters = filterService.getFilters(FilterType.CUSTOMER, params)
        def statuses = new UserStatusDAS().findAll()
        def users = getList(filters, statuses, params)

        def selected = params.id ? UserDTO.get(params.int("id")) : null
        def contact = selected ? ContactDTO.findByUserId(selected.id) : null

        def crumbDescription = selected ? UserHelper.getDisplayName(selected, contact) : null
        breadcrumbService.addBreadcrumb(controllerName, 'list', null, selected?.id, crumbDescription)

        if (params.applyFilter) {
            render template: 'users', model: [users: users, selected: selected, contact: contact, statuses: statuses, filters: filters ]
        } else {
            render view: 'list', model: [ users: users, selected: selected, contact: contact, statuses: statuses, filters: filters ]
        }
    }

    /**
     * Applies the set filters to the user list, and exports it as a CSV for download.
     */
    def csv = {
        def filters = filterService.getFilters(FilterType.CUSTOMER, params)
        def statuses = new UserStatusDAS().findAll()

        params.max = CsvExporter.MAX_RESULTS
        def users = getList(filters, statuses, params)

        if (users.totalCount > CsvExporter.MAX_RESULTS) {
            flash.error = message(code: 'error.export.exceeds.maximum')
            flash.args = [ CsvExporter.MAX_RESULTS ]
            redirect action: 'list'

        } else {
            DownloadHelper.setResponseHeader(response, "users.csv")
            Exporter<UserDTO> exporter = CsvExporter.createExporter(UserDTO.class);
            render text: exporter.export(users), contentType: "text/csv"
        }
    }

    /**
     * Show details of the selected user. By default, this action renders the "_show.gsp" template.
     * When rendering for an AJAX request the template defined by the "template" parameter will be rendered.
     */
    def show = {
        def user = UserDTO.get(params.int('id'))
        def contact = ContactDTO.findByUserId(user.userId)
        def revenue = webServicesSession.getTotalRevenueByUser(user.userId)

        recentItemService.addRecentItem(user.userId, RecentItemType.CUSTOMER)
        breadcrumbService.addBreadcrumb(controllerName, 'list', params.template ?: null, user.userId, UserHelper.getDisplayName(user, contact))

        render template: params.template ?: 'show', model: [ selected: user, contact: contact, revenue: revenue ]
    }

    /**
     * Fetches a list of sub-accounts for the given user id and renders the user list "_table.gsp" template.
     */
    def subaccounts = {
        params.max = params?.max?.toInteger() ?: pagination.max
        params.offset = params?.offset?.toInteger() ?: pagination.offset

        def children = UserDTO.createCriteria().list(
                max:    params.max,
                offset: params.offset
        ) {
            customer {
                parent {
                    eq('baseUser.id', params.int('id'))
                }
            }
        }

        def parent = UserDTO.get(params.int('id'))
        System.out.println("Parent id: " + params.id + "  = " + parent)

        render template: 'users', model: [ users: children, parent: parent ]
    }

    /**
     * Updates the notes for the given user id.
     */
    def saveNotes = {
        if (params.id) {
            webServicesSession.saveCustomerNotes(params.int('id'), params.notes)

            log.debug("Updating notes for user ${params.id}.")

            flash.message = 'customer.notes'
            flash.args = [ params.id ]
        }

        // render user list with selected id
        list()
    }

    /**
     * Delete the given user id.
     */
    def delete = {
        if (params.id) {
            webServicesSession.deleteUser(params.int('id'))

            log.debug("Deleted user ${params.id}.")

        }

        // render the partial user list
        params.applyFilter = true
        list()
    }

    /**
     * Get the user to be edited and show the "edit.gsp" view. If no ID is given this view
     * will allow creation of a new user.
     */
    def edit = {
        def user
        def contacts
        def parent

        try {
            user = params.id ? webServicesSession.getUserWS(params.int('id')) : null
            contacts = user ? webServicesSession.getUserContactsWS(user.userId) : null
            parent = params.parentId ? webServicesSession.getUserWS(params.int('parentId')) : null

        } catch (SessionInternalError e) {
            log.error("Could not fetch WS object", e)

            flash.error = 'customer.not.found'
            flash.args = [ params.id ]

            redirect controller: 'customer', action: 'list'
            return
        }

        def crumbName = params.id ? 'update' : 'create'
        def crumbDescription = params.id ? UserHelper.getDisplayName(user, user.contact) : null
        breadcrumbService.addBreadcrumb(controllerName, actionName, crumbName, params.int('id'), crumbDescription)

        def company = CompanyDTO.get(session['company_id'])
        [ user: user, contacts: contacts, parent: parent, company: company, currencies: currencies ]
    }

    /**
     * Validate and save a user.
     */
    def save = {
        def user = new UserWS()
        UserHelper.bindUser(user, params)

        def contacts = []
        def company = CompanyDTO.get(session['company_id'])
        UserHelper.bindContacts(user, contacts, company, params)

        def oldUser = (user.userId && user.userId != 0) ? webServicesSession.getUserWS(user.userId) : null
        UserHelper.bindPassword(user, oldUser, params, flash)

        if (flash.error) {
            render view: 'edit', model: [ user: user, contacts: contacts, company: company ]
            return
        }

        try {
            // save or update
            if (!oldUser) {
                log.debug("creating user ${user}")

                user.userId = webServicesSession.createUser(user)

                flash.message = 'customer.created'
                flash.args = [ user.userId ]

            } else {
                log.debug("saving changes to user ${user.userId}")

                webServicesSession.updateUser(user)

                if (user.ach) {
                    webServicesSession.updateAch(user.userId, user.ach)
                }

                flash.message = 'customer.updated'
                flash.args = [ user.userId ]
            }

            // save secondary contacts
            if (user.userId) {
                contacts.each{
                    webServicesSession.updateUserContact(user.userId, it.type, it);
                }
            }

        } catch (SessionInternalError e) {
            viewUtils.resolveException(flash, session.locale, e)
            company = CompanyDTO.get(session['company_id'])
            render view: 'edit', model: [ user: user, contacts: contacts, company: company, currencies: currencies ]
            return
        }

        chain action: 'list', params: [ id: user.userId ]
    }

    def getCurrencies() {
        def currencies = new CurrencyBL().getCurrencies(session['language_id'].toInteger(), session['company_id'].toInteger())
        return currencies.findAll { it.inUse }
    }
}