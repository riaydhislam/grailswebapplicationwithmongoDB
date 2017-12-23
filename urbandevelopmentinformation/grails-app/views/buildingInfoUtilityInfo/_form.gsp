<%@ page import="urbandevelopmentinformation.BuildingInfoUtilityInfo" %>



<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utId', 'error')} required">
	<label for="utId">
		<g:message code="buildingInfoUtilityInfo.utId.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utId" type="number" value="${buildingInfoUtilityInfoInstance.utId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utCreaterAddressId', 'error')} required">
 <label for="utCreaterAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="utCreaterAddressId" type="number" value="${buildingInfoUtilityInfoInstance.utCreaterAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForPlotUtility">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utCreaterName', 'error')} required">
	<label for="utCreaterName">
		<g:message code="utility.cratetor.name.label" default="Ut Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterName" required="" value="${buildingInfoUtilityInfoInstance?.utCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utCreaterAuthority', 'error')} required">
	<label for="utCreaterAuthority">
		<g:message code="utility.creater.authority.label" default="Ut Creater Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterAuthority" required="" value="${buildingInfoUtilityInfoInstance?.utCreaterAuthority}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'buildingInfo', 'error')} required">
	<label for="buildingInfo">
		<b><g:message code="buildingInfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buildingInfo" name="buildingInfo.id" from="${urbandevelopmentinformation.BuildingInfo.list()}" optionKey="id" required="" value="${buildingInfoUtilityInfoInstance?.buildingInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utBuId', 'error')} required">
	<label for="utBuId">
		<b><g:message code="buId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utBuId" type="number" value="${buildingInfoUtilityInfoInstance.utBuId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utType', 'error')} required">
	<label for="utType">
		<g:message code="type.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:select name="utType" from="${[
    message(code:'utility.1.label'),
    message(code:'utility.2.label'),
    message(code:'utility.3.label'),
       message(code:'utility.4.label'),
    message(code:'utility.5.label'),
    message(code:'utility.6.label'),
    message(code:'utility.7.label'),
    message(code:'utility.8.label'),
    message(code:'utility.9.label'),
    message(code:'utility.10.label')
	
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>




<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utCreateDate', 'error')} required">
	<label for="utCreateDate">
		<g:message code="buildingInfoUtilityInfo.utCreateDate.label" default="Ut Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utCreateDate" precision="day"  value="${buildingInfoUtilityInfoInstance?.utCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utLastModifiedDate', 'error')} required">
	<label for="utLastModifiedDate">
		<g:message code="buildingInfoUtilityInfo.utLastModifiedDate.label" default="Ut Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utLastModifiedDate" precision="day"  value="${buildingInfoUtilityInfoInstance?.utLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utSubmissionDate', 'error')} required">
	<label for="utSubmissionDate">
		<g:message code="buildingInfoUtilityInfo.utSubmissionDate.label" default="Ut Submission Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utSubmissionDate" precision="day"  value="${buildingInfoUtilityInfoInstance?.utSubmissionDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utApprovalDate', 'error')} required">
	<label for="utApprovalDate">
		<g:message code="buildingInfoUtilityInfo.utApprovalDate.label" default="Ut Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utApprovalDate" precision="day"  value="${buildingInfoUtilityInfoInstance?.utApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utServiceDate', 'error')} required">
	<label for="utServiceDate">
		<g:message code="buildingInfoUtilityInfo.utServiceDate.label" default="Ut Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utServiceDate" precision="day"  value="${buildingInfoUtilityInfoInstance?.utServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utDisServiceDate', 'error')} required">
	<label for="utDisServiceDate">
		<g:message code="buildingInfoUtilityInfo.utDisServiceDate.label" default="Ut Dis Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utDisServiceDate" precision="day"  value="${buildingInfoUtilityInfoInstance?.utDisServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utTypePic', 'error')} required">
	<label for="utTypePic">
		<g:message code="buildingInfoUtilityInfo.utTypePic.label" default="Ut Type Pic" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="utTypePic" name="utTypePic" />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoUtilityInfoInstance, field: 'utRemark', 'error')} required">
	<label for="utRemark">
		<g:message code="remark.label" default="Ut Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="utRemark" required="" value="${buildingInfoUtilityInfoInstance?.utRemark}"/>

</div>




