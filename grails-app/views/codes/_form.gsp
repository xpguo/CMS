<%@ page import="cms.Codes" %>



			<div class="control-group fieldcontain ${hasErrors(bean: codesInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="codes.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${codesInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: codesInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: codesInstance, field: 'parents', 'error')} required">
				<label for="parents" class="control-label"><g:message code="codes.parents.label" default="Parents" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="parents" name="parents.id" from="${cms.Codes.list()}" optionKey="id" required="" value="${codesInstance?.parents?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: codesInstance, field: 'parents', 'error')}</span>
				</div>
			</div>

