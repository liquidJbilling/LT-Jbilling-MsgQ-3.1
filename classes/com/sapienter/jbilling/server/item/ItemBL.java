/*
    jBilling - The Enterprise Open Source Billing System
    Copyright (C) 2003-2008 Enterprise jBilling Software Ltd. and Emiliano Conde

    This file is part of jbilling.

    jbilling is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    jbilling is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with jbilling.  If not, see <http://www.gnu.org/licenses/>.
*/

package com.sapienter.jbilling.server.item;

import java.util.Collection;
import java.util.Iterator;
import java.util.Vector;

import javax.ejb.CreateException;
import javax.ejb.FinderException;
import javax.ejb.RemoveException;
import javax.naming.NamingException;

import org.apache.log4j.Logger;

import com.sapienter.jbilling.common.JNDILookup;
import com.sapienter.jbilling.common.SessionInternalError;
import com.sapienter.jbilling.interfaces.CurrencyEntityLocal;
import com.sapienter.jbilling.interfaces.EntityEntityLocal;
import com.sapienter.jbilling.interfaces.ItemEntityLocal;
import com.sapienter.jbilling.interfaces.ItemEntityLocalHome;
import com.sapienter.jbilling.interfaces.ItemPriceEntityLocal;
import com.sapienter.jbilling.interfaces.ItemPriceEntityLocalHome;
import com.sapienter.jbilling.interfaces.ItemTypeEntityLocal;
import com.sapienter.jbilling.interfaces.ItemUserPriceEntityLocal;
import com.sapienter.jbilling.interfaces.ItemUserPriceEntityLocalHome;
import com.sapienter.jbilling.interfaces.UserEntityLocal;
import com.sapienter.jbilling.server.entity.ItemPriceDTO;
import com.sapienter.jbilling.server.item.tasks.IPricing;
import com.sapienter.jbilling.server.order.db.OrderLineDAS;
import com.sapienter.jbilling.server.pluggableTask.admin.PluggableTaskManager;
import com.sapienter.jbilling.server.user.EntityBL;
import com.sapienter.jbilling.server.user.UserBL;
import com.sapienter.jbilling.server.util.Constants;
import com.sapienter.jbilling.server.util.audit.EventLogger;

public class ItemBL {
    private JNDILookup EJBFactory = null;
    private ItemEntityLocalHome itemHome = null;
    private ItemPriceEntityLocalHome itemPriceHome = null;
    private ItemUserPriceEntityLocalHome itemUserPriceHome = null;
    private ItemEntityLocal item = null;
    private static final Logger LOG = Logger.getLogger(ItemBL.class);
    private EventLogger eLogger = null;
    private String priceCurrencySymbol = null;
    private Vector<PricingField> pricingFields = null;
    
    public ItemBL(Integer itemId) 
            throws SessionInternalError {
        try {
            init();
            set(itemId);
        } catch (Exception e) {
            throw new SessionInternalError("Setting item", ItemBL.class, e);
        } 
    }
    
    public ItemBL() throws NamingException {
        init();
    }
    
    public ItemBL(ItemEntityLocal item) 
            throws NamingException {
        this.item = item;
        init();
    }
    
    public void set(Integer itemId) 
            throws FinderException {
        item = itemHome.findByPrimaryKey(itemId);
    }
    
    private void init() throws NamingException {
        eLogger = EventLogger.getInstance();        
        EJBFactory = JNDILookup.getFactory(false);
        itemHome = (ItemEntityLocalHome) EJBFactory.lookUpLocalHome(
                ItemEntityLocalHome.class,
                ItemEntityLocalHome.JNDI_NAME);
        itemPriceHome = (ItemPriceEntityLocalHome) EJBFactory.lookUpLocalHome(
                ItemPriceEntityLocalHome.class,
                ItemPriceEntityLocalHome.JNDI_NAME);

        itemUserPriceHome = (ItemUserPriceEntityLocalHome) EJBFactory.lookUpLocalHome(
                ItemUserPriceEntityLocalHome.class,
                ItemUserPriceEntityLocalHome.JNDI_NAME);
    }
    
    public ItemEntityLocal getEntity() {
        return item;
    }

    public Integer create(ItemDTOEx dto, Integer languageId) 
            throws CreateException, NamingException, FinderException, 
                RemoveException {
        if (languageId == null) {
            EntityBL entity = new EntityBL(dto.getEntityId());
            languageId = entity.getEntity().getLanguageId();
        }
        item = itemHome.create(dto.getEntityId(), dto.getPercentage(), 
                dto.getPriceManual(), 
                dto.getDescription(), languageId,
                dto.getHasDecimals());
        item.setNumber(dto.getNumber());        
        updateTypes(dto);
        updateCurrencies(dto);
        
        return item.getId();
    }
    
    public void update(Integer executorId, ItemDTOEx dto, 
            Integer languageId) 
            throws NamingException, FinderException, CreateException,
                RemoveException {

        eLogger.audit(executorId, Constants.TABLE_ITEM, item.getId(),
                EventLogger.MODULE_ITEM_MAINTENANCE, 
                EventLogger.ROW_UPDATED, null, null, null);
        
        item.setNumber(dto.getNumber());
        item.setPriceManual(dto.getPriceManual());
        item.setDescription(dto.getDescription(), languageId);
        item.setPercentage(dto.getPercentage());
        item.setHasDecimals(dto.getHasDecimals());
        
        updateTypes(dto);
        updateCurrencies(dto);
    }
    
    private void updateTypes(ItemDTOEx dto) 
            throws NamingException, FinderException {
        // update the types relationship        
        Collection types = item.getTypes();
        types.clear();
        ItemTypeBL typeBl = new ItemTypeBL();
        // TODO verify that all the categories belong to the same
        // order_line_type_id
        for (int f=0; f < dto.getTypes().length; f++) {
            typeBl.set(dto.getTypes()[f]);
            types.add(typeBl.getEntity());
        }
    }
    
    private void updateCurrencies(ItemDTOEx dto) 
            throws CreateException, RemoveException, NamingException,
				FinderException {
    	LOG.debug("updating prices. prices " + (dto.getPrices() != null) + 
    			" price = " + dto.getPrice());
    	// may be there's just one simple price
    	if (dto.getPrices() == null) {
    		if (dto.getPrice() != null) {
    			Vector prices = new Vector();
    			// get the defualt currency of the entity
    			Integer currencyId = dto.getCurrencyId();
    			if (currencyId == null) {
        			EntityBL entity = new EntityBL(dto.getEntityId());
    				currencyId = entity.getEntity().getCurrencyId();
    			}
    			ItemPriceDTOEx price = new ItemPriceDTOEx(null, dto.getPrice(),
    					currencyId);
    			prices.add(price);
    			dto.setPrices(prices);
    		} else {
    			LOG.warn("updatedCurrencies was called, but this " +
    					"item has no price");
        		return;
    		}
    	}
    	
    	// a call to clear() would simply set item_price.entity_id = null
        // instead of removing the row
        for (int f = 0; f < dto.getPrices().size(); f++) {
            ItemPriceDTOEx price = (ItemPriceDTOEx) dto.getPrices().get(f);
            ItemPriceEntityLocal priceRow = null;
            try {
                priceRow = itemPriceHome.find(item.getId(), 
                        price.getCurrencyId());
                    
            } catch (FinderException e) {
            }
            if (price.getPrice() != null) {
                if (priceRow != null) {
                    // if there one there already, update it
                    priceRow.setPrice(price.getPrice());
                    
                } else {
                    // nothing there, create one
                    item.getPrices().add(itemPriceHome.create(
                            price.getCurrencyId(), price.getPrice()));
                }
            } else {
                // this price should be removed if it is there
                if (priceRow != null) {
                    priceRow.remove();
                }
            }
        }    
    }
    
    public void delete(Integer executorId) {
        item.setDeleted(new Integer(1));
        eLogger.audit(executorId, Constants.TABLE_ITEM, item.getId(),
                EventLogger.MODULE_ITEM_MAINTENANCE, 
                EventLogger.ROW_DELETED, null, null, null);
        
    }

    public static boolean validate(ItemDTOEx dto) {
        boolean retValue = true;
        
        if (dto.getDescription() == null || dto.getPrice() == null ||
                dto.getPriceManual() == null || 
                dto.getTypes() == null) {
            retValue = false;
        }
        
        return retValue;
    }
    
    public boolean validateDecimals( Integer hasDecimals ){
	    if( hasDecimals == 0 ){
	        if(new OrderLineDAS().findLinesWithDecimals(item.getId()) > 0) {
	        	return false;
	        }
	    }
	    return true;
    }
    
    /**
     * @return The price in the requested currency
     */
    private Float getPriceByCurrency(Integer currencyId, Integer entityId) 
            throws SessionInternalError {
        Float retValue = null;
        int prices = 0;
        Float aPrice = null;
        Integer aCurrency = null;
        // may be the item has a price in this currency
        for (Iterator it = item.getPrices().iterator(); it.hasNext(); ) {
            prices++;
            ItemPriceEntityLocal price = (ItemPriceEntityLocal) it.next();
            if (price.getCurrencyId().equals(currencyId)) {
                // it is there!
                retValue = price.getPrice();
                break;
            } else {
                // the pivot has priority, for a more accurate conversion
                if (aCurrency == null || aCurrency.intValue() != 1) { 
                    aPrice = price.getPrice();
                    aCurrency = price.getCurrencyId();
                }
            }
        }
        
        if (prices > 0 && retValue == null) {
            // there are prices defined, but not for the currency required
            try {
                CurrencyBL currencyBL = new CurrencyBL();
                retValue = currencyBL.convert(aCurrency, currencyId, aPrice, 
                        entityId);
            } catch (Exception e) {
                throw new SessionInternalError(e);
            }
        } else {
            if (retValue == null) {
                throw new SessionInternalError("No price defined for item " + 
                        item.getId());
            }
        }
        
        return retValue;
    }
    
    /**
     * Tries to find a price for this user for the given currency.
     * If there are some prices, but not for this currency, it will
     * return it (with preferece to the pivot)
     * @param userId
     * @param currencyId
     * @return
     */
    private ItemPriceDTO getPriceByUser(Integer userId, Integer currencyId) {
        ItemPriceDTO retValue = null;
        
        try {
            Collection prices = itemUserPriceHome.findByUserItem(userId, item.getId());
            for (Iterator it = prices.iterator();
                    it.hasNext(); ) {
                ItemUserPriceEntityLocal price = (ItemUserPriceEntityLocal) it.next();
                if (price.getCurrencyId().equals(currencyId)) {
                    // got it
                    return new ItemPriceDTO(price.getId(), price.getPrice(),
                            price.getCurrencyId());
                } else {
                    if (retValue == null || 
                            retValue.getCurrencyId().intValue() != 1) {
                        retValue = new ItemPriceDTO(price.getId(), 
                                price.getPrice(), price.getCurrencyId());
                    }
                }
            }
        } catch (FinderException e) {
            // it's ok, no prices returns null
        }
        
        return retValue;
    }

    /**
     * It will call the main getPrice, with the currency of the userId passed
     * @param userId
     * @param entityId
     * @return
     * @throws SessionInternalError
     */
    public Float getPrice(Integer userId, Integer entityId) 
            throws SessionInternalError, NamingException, FinderException {
        UserBL user = new UserBL(userId);
        return getPrice(userId, user.getCurrencyId(), entityId);
    }    
    /**
     * Will find the right price considering the user's special prices and which
     * currencies had been entered in the prices table.
     * @param userId
     * @param currencyId
     * @param entityId
     * @return The price in the requested currency. It always returns a price,
     * otherwise an exception for lack of pricing for an item
     */
    public Float getPrice(Integer userId, Integer currencyId, Integer entityId) 
            throws SessionInternalError {
        Float retValue = null;
        CurrencyBL currencyBL;
        
        if (currencyId == null || entityId == null) {
            throw new SessionInternalError("Can't get a price with null " +
                    "paramteres. currencyId = " + currencyId + " entityId = " +
                    entityId);
        }
        
        try {
            currencyBL = new CurrencyBL(currencyId);
            priceCurrencySymbol = currencyBL.getEntity().getSymbol();
        } catch (Exception e) {
            throw new SessionInternalError(e);
        }
 
        // let's see first if this user has its own pricing
        ItemPriceDTO userPrice = null;
        if (userId != null) {
            /*
             * This is the order followed. Whatever is found FIRST is returned
             * - User own price
             * - Parent own price
             * - Partner own price
             * - Item default price
             */
            // check for own price
            userPrice = getPriceByUser(userId, currencyId);

            if (userPrice == null) {
                try {
                    UserBL userBL = new UserBL(userId);
                    UserEntityLocal user = userBL.getEntity();
                    if (user.getCustomer() != null
                            && user.getCustomer().getParent() != null) {
                        // this is a child account, see if the parent has a
                        // price
                        userPrice = getPriceByUser(user.getCustomer()
                                .getParent().getUser().getUserId(), currencyId);
                    }
                    // if the user is a customer belonging to a partner, then
                    // that partner might have special prices
                    if (userPrice == null && user.getCustomer() != null
                            && user.getCustomer().getPartner() != null) {
                        userPrice = getPriceByUser(user.getCustomer()
                                .getPartner().getUser().getUserId(),
                                currencyId);
                    }
                } catch (Exception e) {
                    throw new SessionInternalError(e);
                }
            }
        }

        // if the user has its own price, it has priority over anything else
        if (userPrice != null) {
            // verify that it is in the right currency
            if (!userPrice.getCurrencyId().equals(currencyId)) {
                // need to convert
               retValue = currencyBL.convert(userPrice.getCurrencyId(), 
                        currencyId, userPrice.getPrice(), entityId);
            } else {
                retValue = userPrice.getPrice();
            }
        }
        
        // still not found, go get the item's defualt price
        if (retValue == null) {
            retValue = getPriceByCurrency(currencyId, entityId);
        }
        
        // run a plug-in with external logic (rules), if available
        try {
            PluggableTaskManager<IPricing> taskManager =
                new PluggableTaskManager<IPricing>(entityId,
                Constants.PLUGGABLE_TASK_ITEM_PRICING);
            IPricing myTask = taskManager.getNextClass();
            
            while(myTask != null) {
                retValue = myTask.getPrice(item.getId(), userId, currencyId, pricingFields, retValue);
                myTask = taskManager.getNextClass();
            }
        } catch (Exception e) {
            throw new SessionInternalError("Item pricing task error", ItemBL.class, e);
        }
        
        return retValue;
    }
    
    public ItemDTOEx getDTO(Integer languageId, Integer userId, 
            Integer entityId, Integer currencyId) 
            throws SessionInternalError {
        
        ItemDTOEx dto = new ItemDTOEx(
            item.getId(),
            item.getNumber(),
            item.getEntity().getId(),
            item.getDescription(languageId),
            item.getPriceManual(),
            item.getDeleted(),
            currencyId,
            null,
            item.getPercentage(),
            null, // to be set right after
            item.getHasDecimals() );  

        // add all the prices for each currency
        // if this is a percenteage, we still need an array with empty prices
        dto.setPrices(findPrices(entityId, languageId));
        
        if (currencyId != null && dto.getPercentage() == null) {
            // it wants one price in particular
            dto.setPrice(getPrice(userId, currencyId, entityId));
        }
        
        if (item.getPromotion() != null) {
            dto.setPromoCode(item.getPromotion().getCode());
        }
    
        // set the types
        Integer types[] = new Integer[item.getTypes().size()];
        int index = 0;
        for (Iterator it = item.getTypes().iterator(); it.hasNext(); 
                index++) {
            ItemTypeEntityLocal type = (ItemTypeEntityLocal) it.next();
        
            types[index] = type.getId();
            
            // it is assumed that an item belongs to categories that have
            // all the same order_line_type_id
            dto.setOrderLineTypeId(type.getOrderLineTypeId());
        }
        dto.setTypes(types);
    
        return dto;
    }
    
    /**
     * This method will try to find a currency id for this item. It will
     * give priority to the entity's default currency, otherwise anyone
     * will do.
     * @return
     */
    private Vector findPrices(Integer entityId, Integer languageId) {
        Vector retValue = new Vector();

        // go over all the curencies of this entity
        for (Iterator it = item.getEntity().getCurrencies().iterator(); it.hasNext();) {
            CurrencyEntityLocal currency = (CurrencyEntityLocal) it.next();
            ItemPriceDTOEx price = new ItemPriceDTOEx();
            price.setCurrencyId(currency.getId());
            price.setName(currency.getDescription(languageId));
            // se if there's a price in this currency
            try {
                ItemPriceEntityLocal priceRow = itemPriceHome.find(
                        item.getId(),currency.getId());
                price.setPrice(priceRow.getPrice());    
                price.setPriceForm(price.getPrice().toString());    
            } catch (FinderException e) {
            }
            retValue.add(price);
        }
        
        return retValue;
    }
    /**
     * @return
     */
    public String getPriceCurrencySymbol() {
        return priceCurrencySymbol;
    }

    /**
     * Returns all items for the given entity.
     * @param entityId
     * The id of the entity.
     * @return an array of all items
     */
    public ItemDTOEx[] getAllItems(Integer entityId)
            throws FinderException, NamingException {
        EntityBL entityBL = new EntityBL(entityId);
        EntityEntityLocal entity = entityBL.getEntity();
        Collection itemEntities = entity.getItems();
        ItemDTOEx[] items = new ItemDTOEx[itemEntities.size()];

        // iterate through returned item entities, converting them into a DTO
        int index = 0;
        for (Iterator iter = itemEntities.iterator(); iter.hasNext(); index++) {
            ItemEntityLocal item = (ItemEntityLocal) iter.next();
            this.item = item;
            items[index] = getDTO(entity.getLanguageId(), null, entityId,
                entity.getCurrencyId());
        }

        return items;
    }

    public void setPricingFields(Vector<PricingField> fields) {
        pricingFields = fields;
    }
}
