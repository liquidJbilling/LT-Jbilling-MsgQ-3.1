/*
 * JBILLING CONFIDENTIAL
 * _____________________
 *
 * [2003] - [2012] Enterprise jBilling Software Ltd.
 * All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Enterprise jBilling Software.
 * The intellectual and technical concepts contained
 * herein are proprietary to Enterprise jBilling Software
 * and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden.
 */

package jbilling

import com.sapienter.jbilling.common.SessionInternalError
import com.sapienter.jbilling.server.item.CurrencyBL
import com.sapienter.jbilling.server.item.ItemDTOEx

import com.sapienter.jbilling.server.item.ItemTypeWS
import com.sapienter.jbilling.server.item.db.ItemDTO
import com.sapienter.jbilling.server.item.db.ItemTypeDTO
import com.sapienter.jbilling.server.user.db.CompanyDTO
import grails.plugins.springsecurity.Secured
import com.sapienter.jbilling.server.pricing.PriceModelWS
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

import com.sapienter.jbilling.client.pricing.util.PlanHelper
import com.sapienter.jbilling.server.util.csv.CsvExporter
import com.sapienter.jbilling.server.util.csv.Exporter
import com.sapienter.jbilling.client.util.DownloadHelper
import com.sapienter.jbilling.server.pricing.db.PriceModelStrategy

import com.sapienter.jbilling.client.util.SortableCriteria

import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils
import com.sapienter.jbilling.server.pricing.PriceModelBL
import com.sapienter.jbilling.server.metafields.MetaFieldBL
import com.sapienter.jbilling.server.metafields.db.EntityType
import com.sapienter.jbilling.server.metafields.MetaFieldValueWS

import com.sapienter.jbilling.client.metafield.MetaFieldUtils
import org.apache.commons.lang.StringUtils

@Secured(["MENU_97"])
class ProductController {

    static pagination = [ max: 10, offset: 0, sort: 'id', order: 'desc' ]

    def webServicesSession
    def viewUtils
    def filterService
    def recentItemService
    def breadcrumbService

    def index = {
        redirect action: list, params: params
    }

    /**
     * Get a list of categories and render the "_categories.gsp" template. If a category ID is given as the
     * "id" parameter, the corresponding list of products will also be rendered.
     */
    def list = {
        def filters = filterService.getFilters(FilterType.PRODUCT, params)
        def categories = getProductCategories(true)

        def categoryId = params.int('id')
        def category = categoryId ? ItemTypeDTO.get(categoryId) : null
        def products = category ? getProducts(category.id, filters) : null

        breadcrumbService.addBreadcrumb(controllerName, actionName, null, params.int('id'), category?.description)

        if (params.applyFilter || params.partial) {
            render template: 'products', model: [ products: products, selectedCategoryId: category?.id ]
        } else {
            [ categories: categories, products: products, selectedCategoryId: category?.id, filters: filters, filterRender: 'second', filterAction: 'allProducts' ]
        }
    }

    def categories = {
        def categories = getProductCategories(true)
        render template: 'categories', model: [ categories: categories ]
    }

    def getProductCategories(paged = false) {
        if (paged) {
            params.max = params?.max?.toInteger() ?: pagination.max
            params.offset = params?.offset?.toInteger() ?: pagination.offset
        }

        return ItemTypeDTO.createCriteria().list(
            max: paged ? params.max : null,
            offset: paged ? params.offset : null
        ) {
            and {
                eq('internal', false)
                eq('entity', new CompanyDTO(session['company_id']))
            }
            order('id', 'desc')
        }
    }

    /**
     * Get a list of products for the given item type id and render the "_products.gsp" template.
     */
    def products = {
        if (params.id) {
            def filters = filterService.getFilters(FilterType.PRODUCT, params)
            def category = ItemTypeDTO.get(params.int('id'))
            def products = getProducts(category.id, filters)

            breadcrumbService.addBreadcrumb(controllerName, 'list', null, category.id, category?.description)

            render template: 'products', model: [ products: products, selectedCategoryId: category?.id ]
        }
    }

    /**
     * Applies the set filters to the product list, and exports it as a CSV for download.
     */
    @Secured(["PRODUCT_44"])
    def csv = {
        def filters = filterService.getFilters(FilterType.PRODUCT, params)

        params.max = CsvExporter.MAX_RESULTS
        def products = getProducts(params.int('id'), filters)

        if (products.totalCount > CsvExporter.MAX_RESULTS) {
            flash.error = message(code: 'error.export.exceeds.maximum')
            flash.args = [ CsvExporter.MAX_RESULTS ]
            redirect action: 'list', id: params.id

        } else {
            DownloadHelper.setResponseHeader(response, "products.csv")
            Exporter<ItemDTO> exporter = CsvExporter.createExporter(ItemDTO.class);
            render text: exporter.export(products), contentType: "text/csv"
        }
    }

    def getProducts(Integer id, filters) {
        params.max = params?.max?.toInteger() ?: pagination.max
        params.offset = params?.offset?.toInteger() ?: pagination.offset
        params.sort = params?.sort ?: pagination.sort
        params.order = params?.order ?: pagination.order

        def products = ItemDTO.createCriteria().list(
                max:    params.max,
                offset: params.offset
        ) {
            and {
                filters.each { filter ->
                    if (filter.value != null) {
                        if (filter.field == 'description') {
                            def description = filter.stringValue?.toLowerCase()
                            sqlRestriction(
                                    """ exists (
                                            select a.foreign_id
                                            from international_description a
                                            where a.foreign_id = {alias}.id
                                            and a.language_id = ${session['language_id']}
                                            and lower(a.content) like '%${description}%'
                                        )
                                    """
                            )
                        } else {
                            if (!filter.field.startsWith('price')) {
                                addToCriteria(filter.getRestrictions());
                            }
                        }
                    }
                }

                if (id != null) {
                    itemTypes {
                        eq('id', id)
                    }
                }

                isEmpty('plans')
                eq('deleted', 0)
                eq('entity', new CompanyDTO(session['company_id']))
            }

            // apply sorting
            SortableCriteria.sort(params, delegate)
        }


        params.totalCount = products.totalCount

        /*
            Can't cleanly join to the price model to filter in the database
            handle all price filters manually
         */

        def strategyFilter = filters.find { it.field == 'price.type' }
        if (strategyFilter.value != null) {
            products = products.findAll {
                def price = PriceModelBL.getPriceForDate(it.defaultPrices, new Date())
                return price?.type?.equals(PriceModelStrategy.valueOf(strategyFilter.value))
            }
        }

        def rateFilter = filters.find { it.field == 'price.rate' }
        if (rateFilter.value != null) {
            products = products.findAll {
                def price = PriceModelBL.getPriceForDate(it.defaultPrices, new Date())
                if (rateFilter.decimalValue && rateFilter.decimalHighValue) {
                    return price?.rate >= rateFilter.decimalValue && price?.rate <= rateFilter.decimalHighValue

                } else if (rateFilter.decimalValue) {
                    return price?.rate >= rateFilter.decimalValue

                } else if (rateFilter.decimalHighValue) {
                    return price?.rate <= rateFilter.decimalHighValue
                }
                return false
            }
        }

        return products
    }

    /**
     * Get a list of ALL products regardless of the item type selected, and render the "_products.gsp" template.
     */
    def allProducts = {
        def filters = filterService.getFilters(FilterType.PRODUCT, params)

        def products =  getProducts(null, filters)

        render template: 'products', model: [ products: products ]
    }

    /**
     * Show details of the selected product. By default, this action renders the entire list view
     * with the product category list, product list, and product details rendered. When rendering
     * for an AJAX request the template defined by the "template" parameter will be rendered.
     */
    @Secured(["PRODUCT_43"])
    def show = {
        ItemDTO product = ItemDTO.get(params.int('id'))
        if (!product) {
            log.debug "redirecting to list"
            redirect(action: 'list')
            return
        }
        recentItemService.addRecentItem(product?.id, RecentItemType.PRODUCT)
        breadcrumbService.addBreadcrumb(controllerName, actionName, null, params.int('id'), product?.internalNumber)

        if (params.template) {
            // render requested template, usually "_show.gsp"
            render template: params.template, model: [ selectedProduct: product, selectedCategoryId: params.category ]

        } else {
            // render default "list" view - needed so a breadcrumb can link to a product by id
            def filters = filterService.getFilters(FilterType.PRODUCT, params)
            def categories = getProductCategories();

            def productCategoryId = params.category ?: product?.itemTypes?.asList()?.get(0)?.id
            def products = getProducts(productCategoryId, filters);

            render view: 'list', model: [ categories: categories, products: products, selectedProduct: product, selectedCategoryId: productCategoryId, filters: filters ]
        }
    }

    /**
     * Delete the given category id
     */
    @Secured(["PRODUCT_CATEGORY_52"])
    def deleteCategory = {

    def category = params.id ? ItemTypeDTO.get(params.id) : null

        if (params.id && !category) {
            flash.error = 'product.category.not.found'
            flash.args = [ params.id  as String]
            render template: 'products', model: [ products: products ]
           // render view: 'categories', model: [ categories: getProductCategories() ]
            return
        }
        
        if (!params.id && !params.boolean('add')) {
            flash.error = 'product.category.not.selected'
            flash.args = [ params.id  as String]

            //render view: 'categories', model: [ categories: getProductCategories() ]
            render template: 'products', model: [ products: products ]
            return
        }

        if (params.id) {
            try {
                webServicesSession.deleteItemCategory(params.int('id'))

                log.debug("Deleted item category ${params.id}.");

                flash.message = 'product.category.deleted'
                flash.args = [ params.id as String]

            } catch (SessionInternalError e) {
                flash.error = 'product.category.delete.error'
                flash.args = [ params.id as String ]
            }
        }

        render template: 'categories', model: [ categories: getProductCategories() ]
        //render template: 'products', model: [ products: products ]
    }

    /**
     * Delete the given product id
     */
    @Secured(["PRODUCT_42"])
    def deleteProduct = {
        if (params.id) {
            webServicesSession.deleteItem(params.int('id'))

            log.debug("Deleted item ${params.id}.");

            flash.message = 'product.deleted'
            flash.args = [ params.id  as String]
        }

        // call the rendering action directly instead of using 'chain' or 'redirect' which results
        // in a second request that clears the flash messages.
        if (params.category) {
            // return the products list, pass the category so the correct set of products is returned.
            params.id = params.category
            products()
        } else {
            // no category means we deleted from the 'allProducts' view
            allProducts()
        }
    }

    /**
     * Get the item category to be edited and show the "editCategory.gsp" view. If no ID is given
     * this view will allow creation of a new category.
     */
    @Secured(["hasAnyRole('PRODUCT_CATEGORY_50', 'PRODUCT_CATEGORY_51')"])
    def editCategory = {
        def category = params.id ? ItemTypeDTO.get(params.id) : null

        if (params.id && !category) {
            flash.error = 'product.category.not.found'
            flash.args = [ params.id  as String]

            redirect controller: 'product', action: 'list'
            return
        }
        
        if (!params.id && !params.boolean('add')) {
            flash.error = 'product.category.not.selected'
            flash.args = [ params.id  as String]

            redirect controller: 'product', action: 'list'
            return
        }

        breadcrumbService.addBreadcrumb(controllerName, actionName, params.id ? 'update' : 'create', params.int('id'), category?.description)

        [ category : category ]
    }

    /**
     * Validate and save a category.
     */
    @Secured(["hasAnyRole('PRODUCT_CATEGORY_50', 'PRODUCT_CATEGORY_51')"])
    def saveCategory = {
        def category = new ItemTypeWS()

        // grails has issues binding the ID for ItemTypeWS object...
        // bind category ID manually
        bindData(category, params, 'id')
        category.id = !params.id?.equals('') ? params.int('id') : null

        // save or update
        try {
            if (!category.id || category.id == 0) {
                if (SpringSecurityUtils.ifAllGranted("PRODUCT_CATEGORY_50")) {
                    if (category.description.trim()) {
                        log.debug("creating product category ${category}")

                        category.id = webServicesSession.createItemCategory(category)

                        flash.message = 'product.category.created'
                        flash.args = [category.id as String]
                    } else {
                        log.debug("there was an error in the product category data.")

                        category.description = StringUtils.EMPTY

                        flash.error = message(code: 'product.category.error.name.blank')

                        render view: "editCategory", params: [category: category]
                        return
                    }
                } else {
                    render view: '/login/denied'
                    return
                }
            } else {
                if (SpringSecurityUtils.ifAllGranted("PRODUCT_CATEGORY_51")) {
                    if (category.description.trim()) {
                        log.debug("saving changes to product category ${category.id}")

                        webServicesSession.updateItemCategory(category)

                        flash.message = 'product.category.updated'
                        flash.args = [category.id as String]
                    } else {
                        log.debug("there was an error in the product category data.")

                        category.description = StringUtils.EMPTY

                        flash.error = message(code: 'product.category.error.name.blank')

                        render view: "editCategory", params: [category: category]
                        return
                    }

                } else {
                    render view: '/login/denied'
                    return
                }
            }

        } catch (SessionInternalError e) {
            viewUtils.resolveException(flash, session.locale, e);
            render view: 'editCategory', model: [category: category]
            return
        }

        chain action: 'list', params: [id: category.id]
    }

    /**
     * Get the item to be edited and show the "editProduct.gsp" view. If no ID is given
     * this screen will allow creation of a new item.
     */
    @Secured(["hasAnyRole('PRODUCT_40', 'PRODUCT_41')"])
    def editProduct = {
        def product

        try {
            product = params.id ? webServicesSession.getItem(params.int('id'), session['user_id'], null) : null
        } catch (SessionInternalError e) {
            log.error("Could not fetch WS object", e)

            flash.error = 'product.not.found'
            flash.args = [ params.id as String ]

            redirect controller: 'product', action: 'list'
            return
        }

        breadcrumbService.addBreadcrumb(controllerName, actionName, params.id ? 'update' : 'create', params.int('id'), product?.number)

        [ product: product, currencies: retrieveCurrencies(), categories: getProductCategories(), categoryId: params.category, availableFields: retrieveAvailableMetaFields() ]
    }

    def updateStrategy = {
        def product = params."product.id" ? webServicesSession.getItem(params.int('product.id'), session['user_id'], null) : null
        def priceModel = PlanHelper.bindPriceModel(params)
		def startDate = params.startDate ? new Date().parse(message(code: 'date.format'), params.startDate) : null;

        render template: '/priceModel/model', model: [ model: priceModel, startDate: startDate, models: product?.defaultPrices, currencies: retrieveCurrencies() ]
    }

    def addChainModel = {
        def product = params."product.id" ? webServicesSession.getItem(params.int('product.id'), session['user_id'], null) : null
        def priceModel = PlanHelper.bindPriceModel(params)
        def startDate = new Date().parse(message(code: 'date.format'), params.startDate)


        // add new price model to end of chain
        def model = priceModel
        while (model.next) {
            model = model.next
        }
        model.next = new PriceModelWS();

        render template: '/priceModel/model', model: [ model: priceModel, startDate: startDate, models: product?.defaultPrices, currencies: retrieveCurrencies() ]
    }

    def removeChainModel = {
        def product = params."product.id" ? webServicesSession.getItem(params.int('product.id'), session['user_id'], null) : null
        def priceModel = PlanHelper.bindPriceModel(params)
        def startDate = new Date().parse(message(code: 'date.format'), params.startDate)

        def modelIndex = params.int('modelIndex')

        // remove price model from the chain
        def model = priceModel
        for (int i = 1; model != null; i++) {
            if (i == modelIndex) {
                model.next = model.next?.next
                break
            }
            model = model.next
        }

        render template: '/priceModel/model', model: [ model: priceModel, startDate: startDate, models: product?.defaultPrices, currencies: retrieveCurrencies() ]
    }

    def addAttribute = {
        def product = params."product.id" ? webServicesSession.getItem(params.int('product.id'), session['user_id'], null) : null
        def priceModel = PlanHelper.bindPriceModel(params)
        def startDate = new Date().parse(message(code: 'date.format'), params.startDate)

        def modelIndex = params.int('modelIndex')        

        // find the model in the chain, and add a new attribute
        def model = priceModel
        for (int i = 0; model != null; i++) {
            if (i == modelIndex) {
                int newIndex = params.int('attributeIndex')
                def attribute = message(code: 'plan.new.attribute.key', args: [ newIndex ])
                while (model.attributes.containsKey(attribute)) {
                    newIndex++
                    attribute = message(code: 'plan.new.attribute.key', args: [ newIndex ])
                }                
                model.attributes.put(attribute, '')
            }
            model = model.next
        }

        render template: '/priceModel/model', model: [ model: priceModel, startDate: startDate, models: product?.defaultPrices, currencies: retrieveCurrencies() ]
    }

    def removeAttribute = {
        def product = params."product.id" ? webServicesSession.getItem(params.int('product.id'), session['user_id'], null) : null
        def priceModel = PlanHelper.bindPriceModel(params)
        def startDate = new Date().parse(message(code: 'date.format'), params.startDate)

        def modelIndex = params.int('modelIndex')
        def attributeIndex = params.int('attributeIndex')

        // find the model in the chain, remove the attribute
        def model = priceModel
        for (int i = 0; model != null; i++) {
            if (i == modelIndex) {
                def name = params["model.${modelIndex}.attribute.${attributeIndex}.name"]
                model.attributes.remove(name)
            }
            model = model.next
        }

        render template: '/priceModel/model', model: [ model: priceModel, startDate: startDate, models: product?.defaultPrices, currencies: retrieveCurrencies() ]
    }

    def editDate = {
        def product = params."product.id" ? webServicesSession.getItem(params.int('product.id'), session['user_id'], null) : null
        def startDate = new Date().parse(message(code: 'date.format'), params.startDate)

        render template: '/priceModel/model', model: [ startDate: startDate, models: product?.defaultPrices, currencies: retrieveCurrencies() ]
    }

    def addDate = {
        def product = params."product.id" ? webServicesSession.getItem(params.int('product.id'), session['user_id'], null) : null

        render template: '/priceModel/model', model: [ model: new PriceModelWS(), models: product?.defaultPrices, currencies: retrieveCurrencies() ]
    }

    def removeDate = {
        def product = params."product.id" ? webServicesSession.getItem(params.int('product.id'), session['user_id'], null) : null
        def startDate = new Date().parse(message(code: 'date.format'), params.startDate)

        product.defaultPrices.remove(startDate)

        if (SpringSecurityUtils.ifAllGranted("PRODUCT_41")) {
            log.debug("saving changes to product ${product.id}")

            webServicesSession.updateItem(product)

            flash.message = 'product.updated'
            flash.args = [ product.id ]

        } else {
            flash.message = 'product.update.access.denied'
            flash.args = [ product.id ]
        }

        render template: '/priceModel/model', model: [ models: product?.defaultPrices, currencies: retrieveCurrencies() ]
    }

    def saveDate = {
        def product = params."product.id" ? webServicesSession.getItem(params.int('product.id'), session['user_id'], null) : null

        def price = PlanHelper.bindPriceModel(params)
        def startDate = new Date().parse(message(code: 'date.format'), params.startDate)
        def originalStartDate = new Date().parse(message(code: 'date.format'), params.originalStartDate)

        product.defaultPrices.remove(originalStartDate)
        product.defaultPrices.put(startDate, price)

        if (SpringSecurityUtils.ifAllGranted("PRODUCT_41")) {
            log.debug("saving changes to product ${product.id}")

            webServicesSession.updateItem(product)

            flash.message = 'product.updated'
            flash.args = [ product.id ]

        } else {
            flash.message = 'product.update.access.denied'
            flash.args = [ product.id ]
        }

        render template: '/priceModel/model', model: [ model: price, startDate: startDate, models: product.defaultPrices, currencies: retrieveCurrencies() ]
    }

    /**
     * Validate and save a product.
     */
    @Secured(["hasAnyRole('PRODUCT_40', 'PRODUCT_41')"])
    def saveProduct = {
        def oldProduct = params."product.id" ? webServicesSession.getItem(params.int('product.id'), session['user_id'], null) : null
        def product = new ItemDTOEx()
        bindProduct(product, oldProduct, params)

        try {
			
			if (StringUtils.isEmpty(product.description?.trim())) {
				//if blank description
				product.description = ''
				String[] errmsgs= new String[1];
				errmsgs[0]= "ItemDTOEx,description,product.error.name.blank"
				throw new SessionInternalError("There is an error in product data.", errmsgs );
			}
			
            // save or update
            if (!product.id || product.id == 0) {
                if (SpringSecurityUtils.ifAllGranted("PRODUCT_40")) {
                    log.debug("creating product ${product}")
                    product.id = webServicesSession.createItem(product)
                    flash.message = 'product.created'
                    flash.args = [product.id]
                } else {
                    render view: '/login/denied'
                    return;
                }
            } else {
                if (SpringSecurityUtils.ifAllGranted("PRODUCT_41")) {
                    log.debug("saving changes to product ${product.id}")
                    webServicesSession.updateItem(product)
                    flash.message = 'product.updated'
                    flash.args = [product.id]
                } else {
                    render view: '/login/denied'
                    return;
                }
            }

        } catch (SessionInternalError e) {
            viewUtils.resolveException(flash, session.locale, e);

            //check if the product's percentage is not a number
            if(product.percentage){
                try{
                    Double.parseDouble(product.percentage)
                }
                catch(NumberFormatException ex){
                    product.percentage = null
                }
            }
            render view: 'editProduct', model: [ product: product, categories: getProductCategories(), currencies: retrieveCurrencies(), category: params?.selectedCategoryId, availableFields: retrieveAvailableMetaFields() ]
            return
        }

        chain action: 'show', params: [id: product.id]
    }

    def bindProduct(ItemDTOEx product, ItemDTOEx oldProduct, GrailsParameterMap params) {
        bindData(product, params, 'product')

        bindMetaFields(product, params);

        // if a non-numeric value is entered for product's percentage
        if(params?.product?.percentageAsDecimal && !product?.percentage){
           product.percentage = params?.product?.percentageAsDecimal
        }

        // bind parameters with odd types (integer booleans, string integers  etc.)
        product.hasDecimals = params.product.hasDecimals ? 1 : 0

        // default price model if not a percentage item
        // only bind the price being shown in the UI, other date/prices will need to be added AFTER the product
        // has been created by using AJAX calls ("+ Add Date", "Save Changes", "Delete" buttons in UI).
        if (!product.percentage) {
            def price = PlanHelper.bindPriceModel(params)
            def startDate = params.startDate ? new Date().parse(message(code: 'date.format'), params.startDate) : null;

            if (oldProduct) {
                product.defaultPrices = oldProduct.defaultPrices
            }
			if (startDate) {
				product.defaultPrices.put(startDate, price)
			}
        }
    }

    def retrieveCurrencies() {
        def currencies = new CurrencyBL().getCurrencies(session['language_id'].toInteger(), session['company_id'].toInteger())
        return currencies.findAll { it.inUse }
    }

    def retrieveAvailableMetaFields() {
        return MetaFieldBL.getAvailableFieldsList(session['company_id'], EntityType.PRODUCT);
    }

    def bindMetaFields(ItemDTOEx itemDto, GrailsParameterMap params) {
        def fieldsArray = MetaFieldUtils.bindMetaFields(retrieveAvailableMetaFields(), params)
        itemDto.metaFields = fieldsArray.toArray(new MetaFieldValueWS[fieldsArray.size()])
    }
}
