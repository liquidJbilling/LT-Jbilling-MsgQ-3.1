package jbilling

import com.sapienter.jbilling.server.pluggableTask.admin.PluggableTaskDAS;
import com.sapienter.jbilling.server.pluggableTask.admin.PluggableTaskDTO;
import com.sapienter.jbilling.server.pluggableTask.admin.PluggableTaskTypeCategoryDTO;
import com.sapienter.jbilling.server.user.UserBL 
import grails.plugins.springsecurity.Secured;

@Secured(['isAuthenticated()'])
class PluginsController {
	
    def webServicesSession
	PluggableTaskDAS pluggableTaskDAS
    
    def index = { 
        redirect (action:listCategories)
    }
    
	/*
	 * Lists all the categories. The same for every company
	 */
    def listCategories ={
        UserBL userbl = new UserBL(webServicesSession.getCallerId());
        Integer languageId = session.language_id;
        List categorylist= PluggableTaskTypeCategoryDTO.list();
        log.info "Categories found= " + categorylist?.size()
        render (view:"categories", model:[lst:categorylist, languageId:languageId])
    }

	/*
	 * This action lists all the plug-ins that belong to a Company and to 
	 * the selected Category
	 */
	def lists = {
		Integer languageId = session.language_id;
		Integer entityId = session.company_id;
		log.info "entityId=" + entityId
		Integer categoryId= params.selectedId.toInteger()
		log.info "Category Id selected=" + categoryId
		
		def lstByCateg= pluggableTaskDAS.findByEntityCategory(entityId, categoryId);
		
		log.info "number of plug-ins=" + lstByCateg.size();
		[plugins:lstByCateg]
	}
	
	def show = {
		Integer taskId = params.id.toInteger();
		PluggableTaskDTO dto = pluggableTaskDAS.find(taskId);
		Integer languageId = webServicesSession.getCallerLanguageId();
		[dto:dto, languageId:languageId]
	}
}
