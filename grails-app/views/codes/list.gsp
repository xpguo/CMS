
<%@ page import="cms.Codes" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'codes.label', default: 'Codes')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-codes" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'codes.name.label', default: 'Name')}" />
			
				<th><g:message code="codes.parents.label" default="Parents" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${codesInstanceList}" status="i" var="codesInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${codesInstance.id}">${fieldValue(bean: codesInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: codesInstance, field: "parents")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${codesInstanceTotal}" />
	</div>
</section>

</body>

</html>
