<html>
<head>
    <meta name="layout" content="panels" />
</head>
<body>

<content tag="column1">
    %{--
  jBilling - The Enterprise Open Source Billing System
  Copyright (C) 2003-2011 Enterprise jBilling Software Ltd. and Emiliano Conde

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
  --}%

<g:render template="logs" model="['logs': logs]"/>
</content>

<content tag="column2">
    <g:if test="${selected}">
        <!-- show selected log details -->
        <g:render template="show" model="['selected': selected]"/>
    </g:if>
    <g:else>
        <!-- show empty block -->
        <div class="heading"><strong><em><g:message code="log.not.selected.title"/></em></strong></div>
        <div class="box"><em><g:message code="log.not.selected.message"/></em></div>
        <div class="btn-box"></div>
    </g:else>
</content>

</body>
</html>