<html>
<head>
<meta name="layout" content="panels" />
<script type='text/javascript'>
	var selected;
	
	// todo: should be attached to the ajax "success" event.
	// row should only be highlighted when it really is selected.
	$(document).ready(function() {
	    $('.table-box li').bind('click', function() {
	        if (selected) selected.attr("class", "");
	        selected = $(this);
	        selected.attr("class", "active");
	    })
	});
</script>

</head>

<body>
<content tag="filters">
</content>

<content tag="column1">
	<g:render template="categories" model= "['categories': categories]"/>
</content>

<content tag="column2">
    <g:render template="type" model= "['list': list,'languageId':languageId, 'itemTypeId':itemTypeId]"/> 
</content>
</body>
</html>