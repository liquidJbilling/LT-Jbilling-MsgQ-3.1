<%@ page import="com.sapienter.jbilling.server.user.UserBL; com.sapienter.jbilling.server.user.contact.db.ContactDTO" %>

<%--
  Customer table template. The customer table is used multiple times for rendering the
  main list and for rendering a separate list of sub-accounts. 

  @author Brian Cowdery
  @since  24-Nov-2010
--%>

<div class="table-box">
    <div class="table-scroll">
        <table id="users" cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th><g:message code="customer.table.th.name"/></th>
                    <th class="small"><g:message code="customer.table.th.user.id"/></th>
                    <th class="tiny"><g:message code="customer.table.th.status"/></th>
                    <th class="small"><g:message code="customer.table.th.balance"/></th>
                    <th class="small"><g:message code="customer.table.th.hierarchy"/></th>
                </tr>
            </thead>

            <tbody>
            <g:each in="${users}" var="user">
                <g:set var="customer" value="${user.customer}"/>
                <g:set var="contact" value="${ContactDTO.findByUserId(user.id)}"/>

                <tr id="user-${user.id}" class="${selected?.id == user.id ? 'active' : ''}">
                    <td>
                        <g:remoteLink class="cell double" action="show" id="${user.id}" before="register(this);" onSuccess="render(data, next);">
                            <strong>
                                <g:if test="${contact?.firstName || contact?.lastName}">
                                    ${contact.firstName} ${contact.lastName}
                                </g:if>
                                <g:else>
                                    ${user.userName}
                                </g:else>
                            </strong>
                            <em>${contact?.organizationName}</em>
                        </g:remoteLink>
                    </td>
                    <td class="small">
                        <g:remoteLink class="cell" action="show" id="${user.id}" before="register(this);" onSuccess="render(data, next);">
                            <span>${user.id}</span>
                        </g:remoteLink>
                    </td>
                    <td class="tiny center">
                        <g:remoteLink class="cell" action="show" id="${user.id}" before="register(this);" onSuccess="render(data, next);">
                            <span>
                                <g:if test="${user.userStatus.id > 1 && user.userStatus.id < 5}">
                                    <img src="${resource(dir:'images', file:'icon15.gif')}" alt="overdue" />
                                </g:if>
                                <g:elseif test="${user.userStatus.id >= 5}">
                                    <img src="${resource(dir:'images', file:'icon16.gif')}" alt="suspended" />
                                </g:elseif>
                            </span>
                        </g:remoteLink>
                    </td>
                    <td class="small">
                        <g:remoteLink class="cell" action="show" id="${user.id}" before="register(this);" onSuccess="render(data, next);">
                            <span><g:formatNumber number="${new UserBL().getBalance(user.id)}" type="currency" currencyCode="${user.currency.code}"/></span>
                        </g:remoteLink>
                    </td>
                    <td class="small center">
                        <g:if test="${customer}">
                            <g:if test="${customer.isParent == 1 && customer.parent}">
                            <%-- is a parent, but also a child of another account --%>
                                <g:remoteLink action="subaccounts" id="${user.id}" before="register(this);" onSuccess="render(data, next);">
                                    <img src="${resource(dir:'images', file:'icon17.gif')}" alt="parent and child" />
                                    <span>${customer.children.size()}</span>
                                </g:remoteLink>
                            </g:if>
                            <g:elseif test="${customer.isParent == 1 && !customer.parent}">
                            <%-- is a top level parent --%>
                                <g:remoteLink action="subaccounts" id="${user.id}" before="register(this);" onSuccess="render(data, next);">
                                    <img src="${resource(dir:'images', file:'icon18.gif')}" alt="parent" />
                                    <span>${customer.children.size()}</span>
                                </g:remoteLink>
                            </g:elseif>
                            <g:elseif test="${customer.isParent == 0 && customer.parent}">
                            <%-- is a child account, but not a parent --%>
                                <img src="${resource(dir:'images', file:'icon19.gif')}" alt="child" />
                            </g:elseif>
                        </g:if>
                    </td>
                </tr>

            </g:each>
            </tbody>
        </table>
    </div>
</div>

<g:if test="${users?.totalCount > params.max}">
    <div class="pager-box">
        %{-- remote pager does not support "onSuccess" for panel rendering, take a guess at the update column --}%
        <g:set var="updateColumn" value="${actionName == 'subaccounts' ? 'column2' : 'column1'}"/>
        <util:remotePaginate controller="user" action="list" params="[applyFilter: true]" total="${users.totalCount}" update="${updateColumn}"/>
    </div>
</g:if>

<div class="btn-box">
    <g:link action='edit' class="submit add"><span><g:message code="button.create"/></span></g:link>
</div>