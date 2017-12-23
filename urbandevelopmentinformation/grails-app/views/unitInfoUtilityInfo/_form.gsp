<%@ page import="urbandevelopmentinformation.UnitInfoUtilityInfo" %>



<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utId', 'error')} required">
	<label for="utId">
		<g:message code="unitInfoUtilityInfo.utId.label" default="Ut Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utId" type="number" value="${unitInfoUtilityInfoInstance.utId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utCreaterAddressId', 'error')} required">
 <label for="utCreaterAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="utCreaterAddressId" type="number" value="${unitInfoUtilityInfoInstance.utCreaterAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForUnitUtility">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utCreaterName', 'error')} required">
	<label for="utCreaterName">
		<g:message code="utility.cratetor.name.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterName" required="" value="${unitInfoUtilityInfoInstance?.utCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utCreaterAuthority', 'error')} required">
	<label for="utCreaterAuthority">
		<g:message code="utility.creater.authority.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterAuthority" required="" value="${unitInfoUtilityInfoInstance?.utCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'unitInfo', 'error')} required">
	<label for="unitInfo">
		
		<b><g:message code="unitInfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitInfo" name="unitInfo.id" from="${urbandevelopmentinformation.UnitInfo.list()}" optionKey="id" required="" value="${unitInfoUtilityInfoInstance?.unitInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utUnId', 'error')} required">
	<label for="utUnId">
		<b><g:message code="unId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utUnId" type="number" value="${unitInfoUtilityInfoInstance.utUnId}" required=""/>

</div>



<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utType', 'error')} required">
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






<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utCreateDate', 'error')} required">
	<label for="utCreateDate">
		<g:message code="unitInfoUtilityInfo.utCreateDate.label" default="Ut Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utCreateDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utLastModifiedDate', 'error')} required">
	<label for="utLastModifiedDate">
		<g:message code="unitInfoUtilityInfo.utLastModifiedDate.label" default="Ut Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utLastModifiedDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utSubmissionDate', 'error')} required">
	<label for="utSubmissionDate">
		<g:message code="unitInfoUtilityInfo.utSubmissionDate.label" default="Ut Submission Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utSubmissionDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utSubmissionDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utApprovalDate', 'error')} required">
	<label for="utApprovalDate">
		<g:message code="unitInfoUtilityInfo.utApprovalDate.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utApprovalDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utServiceDate', 'error')} required">
	<label for="utServiceDate">
		<g:message code="unitInfoUtilityInfo.utServiceDate.label" default="Ut Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utServiceDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utDisServiceDate', 'error')} required">
	<label for="utDisServiceDate">
		<g:message code="unitInfoUtilityInfo.utDisServiceDate.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utDisServiceDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utDisServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utTypePic', 'error')} required">
	<label for="utTypePic">
		<g:message code="unitInfoUtilityInfo.utTypePic.label" default="Ut Type Pic" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="utTypePic" name="utTypePic" />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utRemark', 'error')} required">
	<label for="utRemark">
		<g:message code="remark.label" default="Ut Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="utRemark" required="" value="${unitInfoUtilityInfoInstance?.utRemark}"/>

</div>

