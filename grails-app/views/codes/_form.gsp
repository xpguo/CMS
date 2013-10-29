<%@ page import="cms.Codes" %>



<div class="fieldcontain ${hasErrors(bean: codesInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="codes.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${codesInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: codesInstance, field: 'parents', 'error')} required">
	<label for="parents">
		<g:message code="codes.parents.label" default="Parents" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parents" name="parents.id" from="${cms.Codes.list()}" optionKey="id" required="" value="${codesInstance?.parents?.id}" class="many-to-one"/>
</div>

