<%--
  Renders a PlanWS as a quick preview of the plan being built. This view also allows
  individual plan prices to be edited and removed from the order.

  @author Brian Cowdery
  @since 01-Feb-2011
--%>

<div id="review-box">

    <!-- error messages -->
    <div id="messages">
        <g:if test="${errorMessages}">
            <div class="msg-box error">
                <ul>
                    <g:each var="message" in="${errorMessages}">
                        <li>${message}</li>
                    </g:each>
                </ul>
            </div>

            <g:set var="errorMessages" value=""/>
        </g:if>
    </div>

    <!-- review -->
    <div class="box no-heading">
        <!-- plan review header -->
        <div class="header">
            <div class="column">
                <h1><g:message code="plan.review.id" args="[plan.id ?: '']"/></h1>
            </div>
            <div class="column">
                <h2 class="right">${product.number}</h2>
                <h3 class="right">${product.description}</h3>
            </div>

            <div style="clear: both;"></div>
        </div>

        <hr/>

        <!-- list of item prices (ordered by precedence) -->
        <ul id="review-lines">
            <g:each var="planItem" status="index" in="${plan.planItems}">
                <g:render template="priceLine" model="[ planItem: planItem, index: index ]"/>
            </g:each>

            <g:if test="${!plan.planItems}">
                <li><em><g:message code="plan.review.no.prices"/></em></li>
            </g:if>
        </ul>

        <!-- plan notes -->
        <g:if test="${plan.description}">
            <hr/>
            <div class="box-text">
                <ul>
                    <li><p>${plan.description}</p></li>
                </ul>
            </div>
        </g:if>
    </div>

    <!-- buttons -->
    <div class="btn-box">
        <g:link class="submit save" action="edit" params="[_eventId: 'save']">
            <span><g:message code="button.save"/></span>
        </g:link>

        <g:link class="submit cancel" action="edit" params="[_eventId: 'cancel']">
            <span><g:message code="button.cancel"/></span>
        </g:link>
    </div>

    <script type="text/javascript">
        $(function() {
            $('#review-lines li.line').click(function() {
                var id = $(this).attr('id');
                $('#' + id).toggleClass('active');
                $('#' + id + '-editor').toggle('blind');
            });
        })
    </script>
</div>