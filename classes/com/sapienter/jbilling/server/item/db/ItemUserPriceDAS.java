/*
    jBilling - The Enterprise Open Source Billing System
    Copyright (C) 2003-2009 Enterprise jBilling Software Ltd. and Emiliano Conde

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
package com.sapienter.jbilling.server.item.db;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.sapienter.jbilling.server.util.db.AbstractDAS;

public class ItemUserPriceDAS extends AbstractDAS<ItemUserPriceDTO> {
    public List<ItemUserPriceDTO> findByUserItem(Integer userId, Integer itemId) {
        Criteria criteria = getSession().createCriteria(ItemUserPriceDTO.class)
                .createAlias("baseUser", "u")
                    .add(Restrictions.eq("u.id", userId))
                .createAlias("item", "i")
                    .add(Restrictions.eq("i.id", itemId));

        return criteria.list();    
    }

    public ItemUserPriceDTO find(Integer userId, Integer itemId, 
            Integer currencyId) {
        Criteria criteria = getSession().createCriteria(ItemUserPriceDTO.class)
                .createAlias("baseUser", "u")
                    .add(Restrictions.eq("u.id", userId))
                .createAlias("currency", "c")
                    .add(Restrictions.eq("c.id", currencyId))
                .createAlias("item", "i")
                    .add(Restrictions.eq("i.id", itemId));

        return (ItemUserPriceDTO) criteria.uniqueResult();    
    }
}
