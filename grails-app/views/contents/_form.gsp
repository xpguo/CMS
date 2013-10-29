<%@ page import="cms.Contents" %>



<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'attachment', 'error')} ">
	<label for="attachment">
		<g:message code="contents.attachment.label" default="Attachment" />
		
	</label>
	<g:select name="attachment" from="${cms.Attachment.list()}" multiple="multiple" optionKey="id" size="5" value="${contentsInstance?.attachment*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="contents.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="district" name="district.id" from="${cms.Codes.list()}" optionKey="id" required="" value="${contentsInstance?.district?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'focus', 'error')} required">
	<label for="focus">
		<g:message code="contents.focus.label" default="Focus" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="focus" name="focus.id" from="${cms.Focus.list()}" optionKey="id" required="" value="${contentsInstance?.focus?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoColumn', 'error')} required">
	<label for="infoColumn">
		<g:message code="contents.infoColumn.label" default="Info Column" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="infoColumn" name="infoColumn.id" from="${cms.Codes.list()}" optionKey="id" required="" value="${contentsInstance?.infoColumn?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoCompany', 'error')} ">
	<label for="infoCompany">
		<g:message code="contents.infoCompany.label" default="Info Company" />
		
	</label>
	<g:textField name="infoCompany" value="${contentsInstance?.infoCompany}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoText', 'error')} required">
	<label for="infoText">
		<g:message code="contents.infoText.label" default="Info Text" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoTitle', 'error')} ">
	<label for="infoTitle">
		<g:message code="contents.infoTitle.label" default="Info Title" />
		
	</label>
	<g:textField name="infoTitle" value="${contentsInstance?.infoTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoType', 'error')} required">
	<label for="infoType">
		<g:message code="contents.infoType.label" default="Info Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="infoType" name="infoType.id" from="${cms.Codes.list()}" optionKey="id" required="" value="${contentsInstance?.infoType?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'infoWriter', 'error')} ">
	<label for="infoWriter">
		<g:message code="contents.infoWriter.label" default="Info Writer" />
		
	</label>
	<g:textField name="infoWriter" value="${contentsInstance?.infoWriter}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'keyWord', 'error')} ">
	<label for="keyWord">
		<g:message code="contents.keyWord.label" default="Key Word" />
		
	</label>
	<g:textField name="keyWord" value="${contentsInstance?.keyWord}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'logo', 'error')} required">
	<label for="logo">
		<g:message code="contents.logo.label" default="Logo" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'newColumn', 'error')} required">
	<label for="newColumn">
		<g:message code="contents.newColumn.label" default="New Column" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="newColumn" type="number" value="${contentsInstance.newColumn}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'publicDate', 'error')} required">
	<label for="publicDate">
		<g:message code="contents.publicDate.label" default="Public Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="publicDate" precision="day"  value="${contentsInstance?.publicDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="contents.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="status" type="number" value="${contentsInstance.status}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'streetId', 'error')} required">
	<label for="streetId">
		<g:message code="contents.street.label" default="Street" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="street" name="street.id" from="${cms.Codes.list()}" optionKey="id" required="" value="${contentsInstance?.street?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentsInstance, field: 'unverify', 'error')} required">
	<label for="unverify">
		<g:message code="contents.unverify.label" default="Unverify" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

