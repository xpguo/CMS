
<%@ page import="cms.Contents" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'contents.label', default: 'Contents')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-contents" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="dateCreated" title="${message(code: 'contents.dateCreated.label', default: 'Date Created')}" />
			
				<th><g:message code="contents.district.label" default="District" /></th>
			
				<th><g:message code="contents.focus.label" default="Focus" /></th>
			
				<th><g:message code="contents.infoColumn.label" default="Info Column" /></th>
			
				<g:sortableColumn property="infoCompany" title="${message(code: 'contents.infoCompany.label', default: 'Info Company')}" />
			
				<g:sortableColumn property="infoText" title="${message(code: 'contents.infoText.label', default: 'Info Text')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${contentsInstanceList}" status="i" var="contentsInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${contentsInstance.id}">${fieldValue(bean: contentsInstance, field: "dateCreated")}</g:link></td>
			
				<td>${fieldValue(bean: contentsInstance, field: "district")}</td>
			
				<td>${fieldValue(bean: contentsInstance, field: "focus")}</td>
			
				<td>${fieldValue(bean: contentsInstance, field: "infoColumn")}</td>
			
				<td>${fieldValue(bean: contentsInstance, field: "infoCompany")}</td>
			
				<td>${fieldValue(bean: contentsInstance, field: "infoText")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${contentsInstanceTotal}" />
	</div>
</section>

</body>

</html>
