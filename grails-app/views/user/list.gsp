<html>
<head>
    <meta name="layout" content="configuration" />
</head>
<body>

<!-- selected configuration menu item -->
<content tag="menu.item">users</content>

<content tag="column1">
    <g:render template="users" />
</content>

<content tag="column2">
    <g:if test="${selected}">
        <!-- show selected user -->
        %{--<g:render template="show" model="['selected': selected]"/>--}%
    </g:if>
</content>

</body>
</html>