<%@ page import="urbandevelopmentinformation.BuildingInfoAuthorizationInfo" %>



<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auId', 'error')} required">
	<label for="auId">
		<g:message code="auId.label" default="Au Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auId" type="number" value="${buildingInfoAuthorizationInfoInstance.auId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'buildingInfo', 'error')} required">
	<label for="buildingInfo">
		<b><g:message code="buildingInfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buildingInfo" name="buildingInfo.id" from="${urbandevelopmentinformation.BuildingInfo.list()}" optionKey="id" required="" value="${buildingInfoAuthorizationInfoInstance?.buildingInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auBuId', 'error')} required">
	<label for="auBuId">
		<b><g:message code="buId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auBuId" type="number" value="${buildingInfoAuthorizationInfoInstance.auBuId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auAddressId', 'error')} required">
 <label for="auAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="auAddressId" type="number" value="${buildingInfoAuthorizationInfoInstance.auAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForBuildingAuthorization">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auName', 'error')} required">
	<label for="auName">
		<g:message code="auName.label" default="Au Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auName" required="" value="${buildingInfoAuthorizationInfoInstance?.auName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auNumber', 'error')} required">
	<label for="auNumber">
		<g:message code="auNumber.label" default="Au Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auNumber" required="" value="${buildingInfoAuthorizationInfoInstance?.auNumber}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auAppliedDate', 'error')} required">
	<label for="auAppliedDate">
		<g:message code="auAppliedDate.label" default="Au Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auAppliedDate" precision="day"  value="${buildingInfoAuthorizationInfoInstance?.auAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auApprovalDate', 'error')} required">
	<label for="auApprovalDate">
		<g:message code="auApprovalDate.label" default="Au Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auApprovalDate" precision="day"  value="${buildingInfoAuthorizationInfoInstance?.auApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auPublishDate', 'error')} required">
	<label for="auPublishDate">
		<g:message code="auPublishDate.label" default="Au Publish Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auPublishDate" precision="day"  value="${buildingInfoAuthorizationInfoInstance?.auPublishDate}"  />

</div>


<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auCode', 'error')} required">
	<label for="auCode">
		<g:message code="code.label"/>
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




<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auType', 'error')} required">
	<label for="auType">
		<g:message code="type.label" />
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




<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auServiceCode', 'error')} required">
	<label for="auServiceCode">
		<g:message code="auServiceCode.label"/>
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

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auServiceName', 'error')} required">
	<label for="auServiceName">
		<g:message code="auServiceName.label"/>
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

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auApplicationCopy', 'error')} required">
	<label for="auApplicationCopy">
		<g:message code="auApplicationCopy.label" default="Au Application Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApplicationCopy" name="auApplicationCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auApprovedCopy', 'error')} required">
	<label for="auApprovedCopy">
		<g:message code="auApprovedCopy.label" default="Au Approved Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApprovedCopy" name="auApprovedCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auRemark', 'error')} required">
	<label for="auRemark">
		<g:message code="remark.label" default="Au Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="auRemark" required="" value="${buildingInfoAuthorizationInfoInstance?.auRemark}"/>

</div>





