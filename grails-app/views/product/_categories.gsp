<%@page import="com.sapienter.jbilling.server.order.db.OrderLineTypeDTO"%>

<%--
  Categories list

  @author Brian Cowdery
  @since  16-Dec-2010
--%>

<div class="table-box">
    <div class="table-scroll">
        <table id="categories" cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th><g:message code="product.category.th.name"/></th>
                    <th class="small"><g:message code="product.category.th.type"/></th>
                </tr>
            </thead>
            <tbody>
            <g:each var="category" in="${categories}">
                <g:set var="lineType" value="${new OrderLineTypeDTO(category.orderLineTypeId, 0)}"/>

                    <tr id="category-${category.id}" class="${selectedCategoryId == category.id ? 'active' : ''}">
                        <td>
                            <g:remoteLink class="cell double" action="products" id="${category.id}" before="register(this);" onSuccess="render(data, next);">
                                <strong>${category.description}</strong>
                                <em><g:message code="table.id.format" args="[category.id]"/></em>
                            </g:remoteLink>
                        </td>
                        <td class="small">
                            <g:remoteLink class="cell" action="products" id="${category.id}" before="register(this);" onSuccess="render(data, next);">
                                <span>${lineType.description}</span>
                            </g:remoteLink>
                        </td>
                    </tr>

                </g:each>
            </tbody>
        </table>
    </div>
</div>

<g:if test="${categories?.totalCount > params.max}">
    <div class="pager-box">
        <div class="row left">
            <g:render template="/layouts/includes/pagerShowResults" model="[steps: [10, 20, 50], action: 'categories', update: 'column1']"/>
        </div>
        <div class="row">
            <util:remotePaginate controller="product" action="categories" total="${categories.totalCount}" update="column1"/>
        </div>
    </div>
</g:if>

<div class="btn-box">
    <%-- breadcrumb for categories handled in the controller, cannot bind breadcrumb to the control form --%>
    <g:link action="editCategory" class="submit add"><span><g:message code="button.create.category"/></span></g:link>
    <a href="#" onclick="return editCategory();" class="submit edit"><span><g:message code="button.edit"/></span></a>
</div>


<!-- edit category control form -->
<g:form name="category-edit-form" url="[action: 'editCategory']">
    <g:hiddenField name="id" value="${selectedCategoryId}"/>
</g:form>

<script type="text/javascript">
    function editCategory() {
        $('#category-edit-form input#id').val(getSelectedId('#categories'));
        $('#category-edit-form').submit();
        return false;
    }
</script>