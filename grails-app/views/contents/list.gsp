
<%@ page import="cms.Contents" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contents.label', default: 'Contents')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-contents" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contents" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
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
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
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
				<g:paginate total="${contentsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
