<%@ page import="urbandevelopmentinformation.PlotInfoAuthorizationInfo" %>



<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auId', 'error')} required">
	<label for="auId">
		<g:message code="auId.label" default="Au Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auId" type="number" value="${plotInfoAuthorizationInfoInstance.auId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean:plotInfoAuthorizationInfoInstance, field: 'auAddressId', 'error')} required">
 <label for="auAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="auAddressId" type="number" value="${plotInfoAuthorizationInfoInstance.auAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForPlotAuthorization">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auName', 'error')} required">
	<label for="auName">
		<g:message code="auName.label" default="Au Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auName" required="" value="${plotInfoAuthorizationInfoInstance?.auName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auNumber', 'error')} required">
	<label for="auNumber">
		<g:message code="auNumber.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auNumber" required="" value="${plotInfoAuthorizationInfoInstance?.auNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'plotInfo', 'error')} required">
	<label for="plotInfo">
		<b><g:message code="registered.plotinfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plotInfo" name="plotInfo.id" from="${urbandevelopmentinformation.PlotInfo.list()}" optionKey="id" required="" value="${plotInfoAuthorizationInfoInstance?.plotInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auPlId', 'error')} required">
	<label for="auPlId">
		<b><g:message code="plId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auPlId" type="number" value="${plotInfoAuthorizationInfoInstance.auPlId}" required=""/>

</div>



<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auAppliedDate', 'error')} required">
	<label for="auAppliedDate">
		<g:message code="auAppliedDate.label" default="Au Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auAppliedDate" precision="day"  value="${plotInfoAuthorizationInfoInstance?.auAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auApprovalDate', 'error')} required">
	<label for="auApprovalDate">
		<g:message code="auApprovalDate.label" default="Au Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auApprovalDate" precision="day"  value="${plotInfoAuthorizationInfoInstance?.auApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auPublishDate', 'error')} required">
	<label for="auPublishDate">
		<g:message code="auPublishDate.label" default="Au Publish Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auPublishDate" precision="day"  value="${plotInfoAuthorizationInfoInstance?.auPublishDate}"  />

</div>







<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auCode', 'error')} required">
 <label for="auCode">
  <g:message code="auCode.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:select name="auCode" from="${[
    message(code:'authorization.code.1.label'),
    message(code:'authorization.code.2.label'),
    message(code:'authorization.code.3.label'),
       message(code:'authorization.code.4.label'),
    message(code:'authorization.code.5.label'),
    message(code:'authorization.code.6.label'),
    message(code:'authorization.code.7.label'),
    message(code:'authorization.code.8.label'),
    message(code:'authorization.code.9.label'),
    message(code:'authorization.code.10.label'),
	message(code:'authorization.code.11.label'),
	message(code:'authorization.code.12.label')
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auType', 'error')} required">
 <label for="auType">
  <g:message code="auType.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:select name="auType" from="${[
    message(code:'authorization.1.label'),
    message(code:'authorization.2.label'),
    message(code:'authorization.3.label'),
       message(code:'authorization.4.label'),
    message(code:'authorization.5.label'),
    message(code:'authorization.6.label'),
    message(code:'authorization.7.label'),
    message(code:'authorization.8.label'),
    message(code:'authorization.9.label'),
    message(code:'authorization.10.label'),
	message(code:'authorization.11.label'),
	message(code:'authorization.12.label')
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>



<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auServiceCode', 'error')} required">
	<label for="auServiceCode">
		<g:message code="auServiceCode.label"  />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="auServiceCode" from="${[
    message(code:'service.code.1.label'),
    message(code:'service.code.2.label'),
    message(code:'service.code.3.label'),
       message(code:'service.code.4.label'),
    message(code:'service.code.5.label'),
    message(code:'service.code.6.label'),
    message(code:'service.code.7.label'),
    message(code:'service.code.8.label'),
    message(code:'service.code.9.label'),
    message(code:'service.code.10.label'),
	message(code:'service.code.11.label'),
	message(code:'service.code.12.label')
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auServiceName', 'error')} required">
	<label for="auServiceName">
		<g:message code="auServiceName.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="auServiceName" from="${[
    message(code:'service.1.label'),
    message(code:'service.2.label'),
    message(code:'service.3.label'),
    message(code:'service.4.label'),
    message(code:'service.5.label'),
    message(code:'service.6.label'),
    message(code:'service.7.label'),
    message(code:'service.8.label'),
    message(code:'service.9.label'),
    message(code:'service.10.label'),
	message(code:'service.11.label'),
	message(code:'service.12.label')
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auApplicationCopy', 'error')} required">
	<label for="auApplicationCopy">
		<g:message code="auApplicationCopy.label" default="Au Application Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApplicationCopy" name="auApplicationCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auApprovedCopy', 'error')} required">
	<label for="auApprovedCopy">
		<g:message code="auApprovedCopy.label" default="Au Approved Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApprovedCopy" name="auApprovedCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auRemark', 'error')} required">
	<label for="auRemark">
		<g:message code="remark.label" default="Au Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="auRemark" required="" value="${plotInfoAuthorizationInfoInstance?.auRemark}"/>

</div>



