
<%@ page import="cms.Codes" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'codes.label', default: 'Codes')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-codes" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="codes.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: codesInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="codes.parents.label" default="Parents" /></td>
				
				<td valign="top" class="value"><g:link controller="codes" action="show" id="${codesInstance?.parents?.id}">${codesInstance?.parents?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
