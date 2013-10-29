<%@ page import="cms.Contents" %>



			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'attachment', 'error')} ">
				<label for="attachment" class="control-label"><g:message code="contents.attachment.label" default="Attachment" /></label>
				<div class="controls">
					<g:select name="attachment" from="${cms.Attachment.list()}" multiple="multiple" optionKey="id" size="5" value="${contentsInstance?.attachment*.id}" class="many-to-many"/><a href="<g:createLink controller="set" action="create" />"><img src="${resource(dir: "images/icons", file: "add.png", plugin: "famfamfam")}"/></a>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'attachment', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'district', 'error')} required">
				<label for="district" class="control-label"><g:message code="contents.district.label" default="District" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="district" name="district.id" from="${cms.Codes.list()}" optionKey="id" required="" value="${contentsInstance?.district?.id}" class="many-to-one"/><a href="<g:createLink controller="codes" action="create" />"><img src="${resource(dir: "images/icons", file: "add.png", plugin: "famfamfam")}"/></a>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'district', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'focus', 'error')} required">
				<label for="focus" class="control-label"><g:message code="contents.focus.label" default="Focus" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="focus" name="focus.id" from="${cms.Focus.list()}" optionKey="id" required="" value="${contentsInstance?.focus?.id}" class="many-to-one"/><a href="<g:createLink controller="focus" action="create" />"><img src="${resource(dir: "images/icons", file: "add.png", plugin: "famfamfam")}"/></a>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'focus', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoColumn', 'error')} required">
				<label for="infoColumn" class="control-label"><g:message code="contents.infoColumn.label" default="Info Column" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="infoColumn" name="infoColumn.id" from="${cms.Codes.list()}" optionKey="id" required="" value="${contentsInstance?.infoColumn?.id}" class="many-to-one"/><a href="<g:createLink controller="codes" action="create" />"><img src="${resource(dir: "images/icons", file: "add.png", plugin: "famfamfam")}"/></a>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'infoColumn', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoCompany', 'error')} ">
				<label for="infoCompany" class="control-label"><g:message code="contents.infoCompany.label" default="Info Company" /></label>
				<div class="controls">
					<g:textField name="infoCompany" value="${contentsInstance?.infoCompany}"/>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'infoCompany', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoText', 'error')} ">
				<label for="infoText" class="control-label"><g:message code="contents.infoText.label" default="Info Text" /></label>
				<div class="controls">
					<g:textField name="infoText" value="${contentsInstance?.infoText}"/>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'infoText', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoTitle', 'error')} ">
				<label for="infoTitle" class="control-label"><g:message code="contents.infoTitle.label" default="Info Title" /></label>
				<div class="controls">
					<g:textField name="infoTitle" value="${contentsInstance?.infoTitle}"/>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'infoTitle', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoType', 'error')} required">
				<label for="infoType" class="control-label"><g:message code="contents.infoType.label" default="Info Type" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="infoType" name="infoType.id" from="${cms.Codes.list()}" optionKey="id" required="" value="${contentsInstance?.infoType?.id}" class="many-to-one"/><a href="<g:createLink controller="codes" action="create" />"><img src="${resource(dir: "images/icons", file: "add.png", plugin: "famfamfam")}"/></a>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'infoType', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoWriter', 'error')} ">
				<label for="infoWriter" class="control-label"><g:message code="contents.infoWriter.label" default="Info Writer" /></label>
				<div class="controls">
					<g:textField name="infoWriter" value="${contentsInstance?.infoWriter}"/>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'infoWriter', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'keyWord', 'error')} ">
				<label for="keyWord" class="control-label"><g:message code="contents.keyWord.label" default="Key Word" /></label>
				<div class="controls">
					<g:textField name="keyWord" value="${contentsInstance?.keyWord}"/>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'keyWord', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'logo', 'error')} required">
				<label for="logo" class="control-label"><g:message code="contents.logo.label" default="Logo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<input type="file" id="logo" name="logo" />
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'logo', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'newColumn', 'error')} required">
				<label for="newColumn" class="control-label"><g:message code="contents.newColumn.label" default="New Column" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="newColumn" required="" value="${contentsInstance.newColumn}"/>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'newColumn', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'publicDate', 'error')} required">
				<label for="publicDate" class="control-label"><g:message code="contents.publicDate.label" default="Public Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="publicDate" precision="day"  value="${contentsInstance?.publicDate}"  />
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'publicDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'status', 'error')} required">
				<label for="status" class="control-label"><g:message code="contents.status.label" default="Status" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="status" required="" value="${contentsInstance.status}"/>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'status', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'street', 'error')} required">
				<label for="street" class="control-label"><g:message code="contents.street.label" default="Street" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="street" name="street.id" from="${cms.Codes.list()}" optionKey="id" required="" value="${contentsInstance?.street?.id}" class="many-to-one"/><a href="<g:createLink controller="codes" action="create" />"><img src="${resource(dir: "images/icons", file: "add.png", plugin: "famfamfam")}"/></a>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'street', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: contentsInstance, field: 'unverify', 'error')} ">
				<label for="unverify" class="control-label"><g:message code="contents.unverify.label" default="Unverify" /></label>
				<div class="controls">
					<g:textField name="unverify" value="${contentsInstance?.unverify}"/>
					<span class="help-inline">${hasErrors(bean: contentsInstance, field: 'unverify', 'error')}</span>
				</div>
			</div>

