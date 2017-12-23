<%@ page import="urbandevelopmentinformation.BuildingInfoOwnershipInfo" %>



<div class="fieldcontain ${hasErrors(bean: buildingInfoOwnershipInfoInstance, field: 'owId', 'error')} required">
	<label for="owId">
		<g:message code="Id.label" default="Ow Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owId" type="number" value="${buildingInfoOwnershipInfoInstance.owId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoOwnershipInfoInstance, field: 'owBuId', 'error')} required">
	<label for="owBuId">
		<b><g:message code="buId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owBuId" type="number" value="${buildingInfoOwnershipInfoInstance.owBuId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoOwnershipInfoInstance, field: 'buildingInfo', 'error')} required">
	<label for="buildingInfo">
		<b><g:message code="buildingInfo.label" /></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buildingInfo" name="buildingInfo.id" from="${urbandevelopmentinformation.BuildingInfo.list()}" optionKey="id" required="" value="${buildingInfoOwnershipInfoInstance?.buildingInfo?.id}" class="many-to-one"/>

</div>



<div class="fieldcontain ${hasErrors(bean: buildingInfoOwnershipInfoInstance, field: 'owAddressId', 'error')} required">
 <label for="owAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="owAddressId" type="number" value="${buildingInfoOwnershipInfoInstance.owAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForBuildingOwnership">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoOwnershipInfoInstance, field: 'owFullName', 'error')} required">
	<label for="owFullName">
		<g:message code="FullName.label" default="Ow Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owFullName" required="" value="${buildingInfoOwnershipInfoInstance?.owFullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoOwnershipInfoInstance, field: 'owType', 'error')} required">
	<label for="owType">
		<g:message code="type.label" default="Ow Type" />
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


<div class="fieldcontain ${hasErrors(bean: buildingInfoOwnershipInfoInstance, field: 'owAppliedDate', 'error')} required">
	<label for="owAppliedDate">
		<g:message code="AppliedDate.label" default="Ow Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owAppliedDate" precision="day"  value="${buildingInfoOwnershipInfoInstance?.owAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoOwnershipInfoInstance, field: 'owLastModifiedDate', 'error')} required">
	<label for="owLastModifiedDate">
		<g:message code="LastModifiedDate.label" default="Ow Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owLastModifiedDate" precision="day"  value="${buildingInfoOwnershipInfoInstance?.owLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoOwnershipInfoInstance, field: 'owApprovedDate', 'error')} required">
	<label for="owApprovedDate">
		<g:message code="ApprovedDate.label" default="Ow Approved Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owApprovedDate" precision="day"  value="${buildingInfoOwnershipInfoInstance?.owApprovedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoOwnershipInfoInstance, field: 'owStatus', 'error')} required">
	<label for="owStatus">
		<g:message code="Status.label" default="Ow Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owStatus" required="" value="${buildingInfoOwnershipInfoInstance?.owStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoOwnershipInfoInstance, field: 'owRemark', 'error')} required">
	<label for="owRemark">
		<g:message code="remark.label" default="Ow Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owRemark" required="" value="${buildingInfoOwnershipInfoInstance?.owRemark}"/>

</div>

