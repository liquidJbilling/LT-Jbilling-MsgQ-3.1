package jbilling

import com.sapienter.jbilling.server.item.ItemTypeBL;
import com.sapienter.jbilling.server.item.db.ItemTypeDTO;
import com.sapienter.jbilling.server.user.db.CompanyDTO;
import com.sapienter.jbilling.client.util.Constants;
import com.sapienter.jbilling.server.item.db.ItemTypeDAS;
import com.sapienter.jbilling.server.item.ItemTypeWS;

// TODO Code review. Is this a controller for product categories? Better rename it to something
// like that rather than 'Item'. 
class ItemController {
	
	def webServicesSession
	List<ItemTypeDTO> categories;

    def index = { 
		log.info 'Index called..'
		def companyId= webServicesSession.getCallerCompanyId()
		log.info "Company ID " + companyId
		// TODO Code review. Can instead the web services call be use to fetch the categories?
		// Using a finder is not bad, but using the API is better.
		categories= ItemTypeDTO.findAllByEntity(new CompanyDTO(companyId))
		log.info categories
		[categories:categories]
	}
	
	def delete = {
		def itemId= params.deleteItemId.toInteger()
		log.info "Deleting item type=" + itemId 
		webServicesSession.deleteItemCategory(itemId);
		redirect (action: index)
	}
	
	def save = {
		log.info 'Save called..'
		
		int loggedUserId= webServicesSession.getCallerId()
		log.info "Logged User Id="+ loggedUserId
		List listItemTypes= bindDTOs(params);
		for (ItemTypeWS dto : listItemTypes) {
			log.info "dto.id=" + dto.getId() + " dto.description=" + dto.getDescription() + " dto.orderLineTypeId=" + dto.getOrderLineTypeId()
			
			if (dto.getId() == 0 || !(dto.getId()) ){
				webServicesSession.createItemCategory(dto)
			} else {
				webServicesSession.updateItemCategory(dto)
			}
		}
		
		redirect (action: index)
	}
	
	def List<ItemTypeWS> bindDTOs(params)  {
		List lstItemTypes= new ArrayList<ItemTypeWS>();
		def count = params.recCnt.toInteger()
		for (int i=0; i < count; i++) {
			def dto = new ItemTypeWS()
			bindData(dto, params["categories["+i+"]"])
			lstItemTypes.add(dto);
		}
		lstItemTypes;
	}
}