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
package com.sapienter.jbilling.server.item.db;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.Vector;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Transient;
import javax.persistence.Version;

import com.sapienter.jbilling.server.order.db.OrderLineDTO;
import com.sapienter.jbilling.server.user.db.CompanyDTO;
import com.sapienter.jbilling.server.util.Constants;
import com.sapienter.jbilling.server.util.db.AbstractDescription;
import com.sapienter.jbilling.server.util.db.generated.InvoiceLine;
import com.sapienter.jbilling.server.util.db.generated.Promotion;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@TableGenerator(
        name="item_GEN",
        table="jbilling_table",
        pkColumnName = "name",
        valueColumnName = "next_id",
        pkColumnValue="item",
        allocationSize=10
        )
@Table(name="item")
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class ItemDTO extends AbstractDescription {


    private int id;
    private CompanyDTO entity;
    private String internalNumber;
    private Float percentage;
    private Integer priceManual;
    private Integer deleted;
    private Integer hasDecimals;
    private Promotion promotion;
    private Set<OrderLineDTO> orderLineDTOs = new HashSet<OrderLineDTO>(0);
    private Set<ItemTypeDTO> itemTypes = new HashSet<ItemTypeDTO>(0);
    private Set<InvoiceLine> invoiceLines = new HashSet<InvoiceLine>(0);
    private Set<ItemUserPriceDTO> itemUserPrices = new HashSet<ItemUserPriceDTO>(0);
    private Set<ItemPriceDTO> itemPrices = new HashSet<ItemPriceDTO>(0);
    private int versionNum;

    // transient
    private Integer[] types = null;
    private String promoCode = null;
    private Integer currencyId = null;
    private Float price = null;
    private Integer orderLineTypeId = null;
    // all the prices.ItemPriceDTOEx  
    private Vector prices = null;

    public ItemDTO() {
    }

    public ItemDTO(int id) {
        this.id = id;
    }

    public ItemDTO(int id, String internalNumber, Float percentage, Integer priceManual, 
            Integer hasDecimals, Integer deleted, CompanyDTO entity) {
        this.id = id;
        this.internalNumber = internalNumber;
        this.percentage = percentage;
        this.priceManual = priceManual;
        this.hasDecimals = hasDecimals;
        this.deleted = deleted;
        this.entity = entity;
    }
	
    public ItemDTO(int id, Integer priceManual, Integer deleted, Integer hasDecimals) {
        this.id = id;
        this.priceManual = priceManual;
        this.deleted = deleted;
        this.hasDecimals = hasDecimals;
    }

    public ItemDTO(int id, CompanyDTO entity, String internalNumber, Float percentage, Integer priceManual, Integer deleted, Integer hasDecimals, Set<OrderLineDTO> orderLineDTOs, Promotion promotion, Set<ItemTypeDTO> itemTypes, Set<InvoiceLine> invoiceLines, Set<ItemUserPriceDTO> itemUserPrices, Set<ItemPriceDTO> itemPrices) {
       this.id = id;
       this.entity = entity;
       this.internalNumber = internalNumber;
       this.percentage = percentage;
       this.priceManual = priceManual;
       this.deleted = deleted;
       this.hasDecimals = hasDecimals;
       this.orderLineDTOs = orderLineDTOs;
       this.promotion = promotion;
       this.itemTypes = itemTypes;
       this.invoiceLines = invoiceLines;
       this.itemUserPrices = itemUserPrices;
       this.itemPrices = itemPrices;
    }

    // ItemDTOEx
    public ItemDTO(int id,String number, CompanyDTO entity, 
            String description,
            Integer manualPrice, Integer deleted, Integer currencyId,
            Float price, Float percentage, Integer orderLineTypeId,
            Integer hasDecimals ) {
        this(id, number, percentage, manualPrice, hasDecimals, deleted, entity);
        setDescription(description);
        setCurrencyId(currencyId);
        setPrice(price);
        setOrderLineTypeId(orderLineTypeId);
        //types = new Vector();
    }


    @Transient
    protected String getTable() {
        return Constants.TABLE_ITEM;
    }
    
    @Id @GeneratedValue(strategy=GenerationType.TABLE, generator="item_GEN")
    @Column(name="id", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="entity_id")
    public CompanyDTO getEntity() {
        return this.entity;
    }
    
    public void setEntity(CompanyDTO entity) {
        this.entity = entity;
    }
    
    @Column(name="internal_number", length=50)
    public String getInternalNumber() {
        return this.internalNumber;
    }
    
    public void setInternalNumber(String internalNumber) {
        this.internalNumber = internalNumber;
    }
    
    @Column(name="percentage", precision=17, scale=17)
    public Float getPercentage() {
        return this.percentage;
    }
    
    public void setPercentage(Float percentage) {
        this.percentage = percentage;
    }
    
    @Column(name="price_manual", nullable=false)
    public Integer getPriceManual() {
        return this.priceManual;
    }
    
    public void setPriceManual(Integer priceManual) {
        this.priceManual = priceManual;
    }
    
    @Column(name="deleted", nullable=false)
    public Integer getDeleted() {
        return this.deleted;
    }
    
    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }
    
    @Column(name="has_decimals", nullable=false)
    public Integer getHasDecimals() {
        return this.hasDecimals;
    }
    
    public void setHasDecimals(Integer hasDecimals) {
        this.hasDecimals = hasDecimals;
    }
    

    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="item")
    public Set<OrderLineDTO> getOrderLines() {
        return this.orderLineDTOs;
    }
    
    public void setOrderLines(Set<OrderLineDTO> orderLineDTOs) {
        this.orderLineDTOs = orderLineDTOs;
    }

    @OneToOne(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="item")
    public Promotion getPromotion() {
        return this.promotion;
    }
    
    public void setPromotion(Promotion promotion) {
        this.promotion = promotion;
    }

    @ManyToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    @JoinTable(name="item_type_map", joinColumns = { 
        @JoinColumn(name="item_id", updatable=false) }, inverseJoinColumns = { 
        @JoinColumn(name="type_id", updatable=false) })
    public Set<ItemTypeDTO> getItemTypes() {
        return this.itemTypes;
    }
    
    public void setItemTypes(Set<ItemTypeDTO> itemTypes) {
        this.itemTypes = itemTypes;
    }

    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="item")
    public Set<InvoiceLine> getInvoiceLines() {
        return this.invoiceLines;
    }
    
    public void setInvoiceLines(Set<InvoiceLine> invoiceLines) {
        this.invoiceLines = invoiceLines;
    }

    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="item")
    public Set<ItemUserPriceDTO> getItemUserPrices() {
        return this.itemUserPrices;
    }
    
    public void setItemUserPrices(Set<ItemUserPriceDTO> itemUserPrices) {
        this.itemUserPrices = itemUserPrices;
    }

    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="item")
    public Set<ItemPriceDTO> getItemPrices() {
        return this.itemPrices;
    }
    
    public void setItemPrices(Set<ItemPriceDTO> itemPrices) {
        this.itemPrices = itemPrices;
    }

    @Version
    @Column(name="OPTLOCK")
    public int getVersionNum() {
        return versionNum;
    }

    public void setVersionNum(int versionNum) {
        this.versionNum = versionNum;
    }

    @Transient
    public String getNumber() {
    	return getInternalNumber();
    }

    @Transient
    public void setNumber(String number) {
        setInternalNumber(number);
    }

//     @Transient
//     public Set<ItemTypeDTO> getTypes() {
//         return getItemTypes();
//     }

//     @Transient
//     public Set<ItemPriceDTO> getPrices() {
//         return getItemPrices();
//     }

    /**
     * @return
     */
    @Transient
    public Integer[] getTypes() {
        return types;
    }

    /*
     * Rules only work on collections of strings (oparator contains)
     */
    @Transient
    public Collection<String> getStrTypes() {
        Vector<String> retValue = new Vector<String>();
        for (Integer i: types) {
            retValue.add(i.toString());
        }
        return retValue;
    }

    /**
     * @param vector
     */
    @Transient
    public void setTypes(Integer[] vector) {
        types = vector;
    }

    /**
     * @return
     */
    @Transient
    public String getPromoCode() {
        return promoCode;
    }

    /**
     * @param string
     */
    @Transient
    public void setPromoCode(String string) {
        promoCode = string;
    }

    /**
     * @return
     */
    @Transient
    public Integer getEntityId() {
        return getEntity().getId();
    }

    /**
     * @return
     */
    @Transient
    public Integer getOrderLineTypeId() {
        return orderLineTypeId;
    }

    /**
     * @param integer
     */
    @Transient
    public void setOrderLineTypeId(Integer typeId) {
        orderLineTypeId = typeId;
    }

    /**
     * @return
     */
    @Transient
    public Integer getCurrencyId() {
        return currencyId;
    }

    /**
     * @param currencyId
     */
    @Transient
    public void setCurrencyId(Integer currencyId) {
        this.currencyId = currencyId;
    }

    /**
     * @return
     */
    @Transient
    public Float getPrice() {
        return price;
    }

    /**
     * @param price
     */
    @Transient
    public void setPrice(Float price) {
        this.price = price;
    }
    /**
     * @return
     */
    @Transient
    public Vector getPrices() {
        return prices;
    }

    /**
     * @param prices
     */
    @Transient
    public void setPrices(Vector prices) {
        this.prices = prices;
    }
}


