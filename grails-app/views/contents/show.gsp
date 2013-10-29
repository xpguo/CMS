
<%@ page import="cms.Contents" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contents.label', default: 'Contents')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contents" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contents" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contents">
			
				<g:if test="${contentsInstance?.attachment}">
				<li class="fieldcontain">
					<span id="attachment-label" class="property-label"><g:message code="contents.attachment.label" default="Attachment" /></span>
					
						<g:each in="${contentsInstance.attachment}" var="a">
						<span class="property-value" aria-labelledby="attachment-label"><g:link controller="attachment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="contents.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${contentsInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="contents.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:link controller="codes" action="show" id="${contentsInstance?.district?.id}">${contentsInstance?.district?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.focus}">
				<li class="fieldcontain">
					<span id="focus-label" class="property-label"><g:message code="contents.focus.label" default="Focus" /></span>
					
						<span class="property-value" aria-labelledby="focus-label"><g:link controller="focus" action="show" id="${contentsInstance?.focus?.id}">${contentsInstance?.focus?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.infoColumn}">
				<li class="fieldcontain">
					<span id="infoColumn-label" class="property-label"><g:message code="contents.infoColumn.label" default="Info Column" /></span>
					
						<span class="property-value" aria-labelledby="infoColumn-label"><g:link controller="codes" action="show" id="${contentsInstance?.infoColumn?.id}">${contentsInstance?.infoColumn?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.infoCompany}">
				<li class="fieldcontain">
					<span id="infoCompany-label" class="property-label"><g:message code="contents.infoCompany.label" default="Info Company" /></span>
					
						<span class="property-value" aria-labelledby="infoCompany-label"><g:fieldValue bean="${contentsInstance}" field="infoCompany"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.infoText}">
				<li class="fieldcontain">
					<span id="infoText-label" class="property-label"><g:message code="contents.infoText.label" default="Info Text" /></span>
					
						<span class="property-value" aria-labelledby="infoText-label"><g:fieldValue bean="${contentsInstance}" field="infoText"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.infoTitle}">
				<li class="fieldcontain">
					<span id="infoTitle-label" class="property-label"><g:message code="contents.infoTitle.label" default="Info Title" /></span>
					
						<span class="property-value" aria-labelledby="infoTitle-label"><g:fieldValue bean="${contentsInstance}" field="infoTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.infoType}">
				<li class="fieldcontain">
					<span id="infoType-label" class="property-label"><g:message code="contents.infoType.label" default="Info Type" /></span>
					
						<span class="property-value" aria-labelledby="infoType-label"><g:link controller="codes" action="show" id="${contentsInstance?.infoType?.id}">${contentsInstance?.infoType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.infoWriter}">
				<li class="fieldcontain">
					<span id="infoWriter-label" class="property-label"><g:message code="contents.infoWriter.label" default="Info Writer" /></span>
					
						<span class="property-value" aria-labelledby="infoWriter-label"><g:fieldValue bean="${contentsInstance}" field="infoWriter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.keyWord}">
				<li class="fieldcontain">
					<span id="keyWord-label" class="property-label"><g:message code="contents.keyWord.label" default="Key Word" /></span>
					
						<span class="property-value" aria-labelledby="keyWord-label"><g:fieldValue bean="${contentsInstance}" field="keyWord"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="contents.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${contentsInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.logo}">
				<li class="fieldcontain">
					<span id="logo-label" class="property-label"><g:message code="contents.logo.label" default="Logo" /></span>
					
						<span class="property-value" aria-labelledby="logo-label"><g:fieldValue bean="${contentsInstance}" field="logo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.newColumn}">
				<li class="fieldcontain">
					<span id="newColumn-label" class="property-label"><g:message code="contents.newColumn.label" default="New Column" /></span>
					
						<span class="property-value" aria-labelledby="newColumn-label"><g:fieldValue bean="${contentsInstance}" field="newColumn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.publicDate}">
				<li class="fieldcontain">
					<span id="publicDate-label" class="property-label"><g:message code="contents.publicDate.label" default="Public Date" /></span>
					
						<span class="property-value" aria-labelledby="publicDate-label"><g:formatDate date="${contentsInstance?.publicDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="contents.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${contentsInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.streetId}">
				<li class="fieldcontain">
					<span id="streetId-label" class="property-label"><g:message code="contents.streetId.label" default="Street Id" /></span>
					
						<span class="property-value" aria-labelledby="streetId-label"><g:link controller="codes" action="show" id="${contentsInstance?.streetId?.id}">${contentsInstance?.streetId?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentsInstance?.unverify}">
				<li class="fieldcontain">
					<span id="unverify-label" class="property-label"><g:message code="contents.unverify.label" default="Unverify" /></span>
					
						<span class="property-value" aria-labelledby="unverify-label"><g:fieldValue bean="${contentsInstance}" field="unverify"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${contentsInstance?.id}" />
					<g:link class="edit" action="edit" id="${contentsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
