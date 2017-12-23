<%@ page import="urbandevelopmentinformation.UnitInfoOwnershipInfo" %>



<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owId', 'error')} required">
	<label for="owId">
		<g:message code="Id.label" default="Ow Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owId" type="number" value="${unitInfoOwnershipInfoInstance.owId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'unitInfo', 'error')} required">
	<label for="unitInfo">
		<b><g:message code="unitInfo.label" /></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitInfo" name="unitInfo.id" from="${urbandevelopmentinformation.UnitInfo.list()}" optionKey="id" required="" value="${unitInfoOwnershipInfoInstance?.unitInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owUnId', 'error')} required">
	<label for="owUnId">
		<b><g:message code="unId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owUnId" type="number" value="${unitInfoOwnershipInfoInstance.owUnId}" required=""/>

</div>




<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owAddressId', 'error')} required">
 <label for="owAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="owAddressId" type="number" value="${unitInfoOwnershipInfoInstance.owAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForUnitOwnership">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>
<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owFullName', 'error')} required">
	<label for="owFullName">
		<g:message code="FullName.label" default="Ow Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owFullName" required="" value="${unitInfoOwnershipInfoInstance?.owFullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owType', 'error')} required">
	<label for="owType">
		<g:message code="type.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:select name="owType" from="${[
    message(code:'ownership.1.label'),
    message(code:'ownership.2.label'),
    message(code:'ownership.3.label'),
       message(code:'ownership.4.label'),
    message(code:'ownership.5.label'),
    message(code:'ownership.6.label')
   
	
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owAppliedDate', 'error')} required">
	<label for="owAppliedDate">
		<g:message code="AppliedDate.label" default="Ow Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owAppliedDate" precision="day"  value="${unitInfoOwnershipInfoInstance?.owAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owLastModifiedDate', 'error')} required">
	<label for="owLastModifiedDate">
		<g:message code="LastModifiedDate.label" default="Ow Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owLastModifiedDate" precision="day"  value="${unitInfoOwnershipInfoInstance?.owLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owApprovedDate', 'error')} required">
	<label for="owApprovedDate">
		<g:message code="ApprovedDate.label" default="Ow Approved Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owApprovedDate" precision="day"  value="${unitInfoOwnershipInfoInstance?.owApprovedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owStatus', 'error')} required">
	<label for="owStatus">
		<g:message code="Status.label" default="Ow Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owStatus" required="" value="${unitInfoOwnershipInfoInstance?.owStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owRemark', 'error')} required">
	<label for="owRemark">
		<g:message code="remark.label" default="Ow Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="owRemark" required="" value="${unitInfoOwnershipInfoInstance?.owRemark}"/>

</div>

