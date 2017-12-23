<%@ page import="urbandevelopmentinformation.FloorInfoUtilityInfo" %>



<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utId', 'error')} required">
	<label for="utId">
		<g:message code="floorInfoUtilityInfo.utId.label" default="Ut Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utId" type="number" value="${floorInfoUtilityInfoInstance.utId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utCreaterAddressId', 'error')} required">
 <label for="utCreaterAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="utCreaterAddressId" type="number" value="${floorInfoUtilityInfoInstance.utCreaterAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForFloorUtility">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>




<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utCreaterName', 'error')} required">
	<label for="utCreaterName">
		<g:message code="utility.cratetor.name.label" default="Ut Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterName" required="" value="${floorInfoUtilityInfoInstance?.utCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utCreaterAuthority', 'error')} required">
	<label for="utCreaterAuthority">
		<g:message code="utility.creater.authority.label" default="Ut Creater Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterAuthority" required="" value="${floorInfoUtilityInfoInstance?.utCreaterAuthority}"/>

</div>



<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'floorInfo', 'error')} required">
	<label for="floorInfo">
		<b><g:message code="floorInfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorInfo" name="floorInfo.id" from="${urbandevelopmentinformation.FloorInfo.list()}" optionKey="id" required="" value="${floorInfoUtilityInfoInstance?.floorInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utFlId', 'error')} required">
	<label for="utFlId">
		<b><g:message code="flId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utFlId" type="number" value="${floorInfoUtilityInfoInstance.utFlId}" required=""/>

</div>



<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utType', 'error')} required">
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


<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utCreateDate', 'error')} required">
	<label for="utCreateDate">
		<g:message code="floorInfoUtilityInfo.utCreateDate.label" default="Ut Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utCreateDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utLastModifiedDate', 'error')} required">
	<label for="utLastModifiedDate">
		<g:message code="floorInfoUtilityInfo.utLastModifiedDate.label" default="Ut Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utLastModifiedDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utSubmissionDate', 'error')} required">
	<label for="utSubmissionDate">
		<g:message code="floorInfoUtilityInfo.utSubmissionDate.label" default="Ut Submission Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utSubmissionDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utSubmissionDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utApprovalDate', 'error')} required">
	<label for="utApprovalDate">
		<g:message code="floorInfoUtilityInfo.utApprovalDate.label" default="Ut Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utApprovalDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utServiceDate', 'error')} required">
	<label for="utServiceDate">
		<g:message code="floorInfoUtilityInfo.utServiceDate.label" default="Ut Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utServiceDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utDisServiceDate', 'error')} required">
	<label for="utDisServiceDate">
		<g:message code="floorInfoUtilityInfo.utDisServiceDate.label" default="Ut Dis Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utDisServiceDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utDisServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utTypePic', 'error')} required">
	<label for="utTypePic">
		<g:message code="floorInfoUtilityInfo.utTypePic.label" default="Ut Type Pic" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="utTypePic" name="utTypePic" />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utRemark', 'error')} required">
	<label for="utRemark">
		<g:message code="remark.label" default="Ut Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="utRemark" required="" value="${floorInfoUtilityInfoInstance?.utRemark}"/>

</div>

