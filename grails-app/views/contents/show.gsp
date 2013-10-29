
<%@ page import="cms.Contents" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'contents.label', default: 'Contents')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-contents" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.attachment.label" default="Attachment" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${contentsInstance.attachment}" var="a">
						<li><g:link controller="attachment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.dateCreated.label" default="Date Created" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${contentsInstance?.dateCreated}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.district.label" default="District" /></td>
				
				<td valign="top" class="value"><g:link controller="codes" action="show" id="${contentsInstance?.district?.id}">${contentsInstance?.district?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.focus.label" default="Focus" /></td>
				
				<td valign="top" class="value"><g:link controller="focus" action="show" id="${contentsInstance?.focus?.id}">${contentsInstance?.focus?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.infoColumn.label" default="Info Column" /></td>
				
				<td valign="top" class="value"><g:link controller="codes" action="show" id="${contentsInstance?.infoColumn?.id}">${contentsInstance?.infoColumn?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.infoCompany.label" default="Info Company" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contentsInstance, field: "infoCompany")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.infoText.label" default="Info Text" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contentsInstance, field: "infoText")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.infoTitle.label" default="Info Title" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contentsInstance, field: "infoTitle")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.infoType.label" default="Info Type" /></td>
				
				<td valign="top" class="value"><g:link controller="codes" action="show" id="${contentsInstance?.infoType?.id}">${contentsInstance?.infoType?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.infoWriter.label" default="Info Writer" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contentsInstance, field: "infoWriter")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.keyWord.label" default="Key Word" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contentsInstance, field: "keyWord")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.lastUpdated.label" default="Last Updated" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${contentsInstance?.lastUpdated}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.logo.label" default="Logo" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.newColumn.label" default="New Column" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contentsInstance, field: "newColumn")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.publicDate.label" default="Public Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${contentsInstance?.publicDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.status.label" default="Status" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contentsInstance, field: "status")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.street.label" default="Street" /></td>
				
				<td valign="top" class="value"><g:link controller="codes" action="show" id="${contentsInstance?.street?.id}">${contentsInstance?.street?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="contents.unverify.label" default="Unverify" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: contentsInstance, field: "unverify")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
