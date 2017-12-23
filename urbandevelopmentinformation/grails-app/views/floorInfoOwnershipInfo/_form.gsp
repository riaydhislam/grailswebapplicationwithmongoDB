<%@ page import="urbandevelopmentinformation.FloorInfoOwnershipInfo" %>



<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owId', 'error')} required">
	<label for="owId">
		<g:message code="Id.label" default="Ow Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owId" type="number" value="${floorInfoOwnershipInfoInstance.owId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'floorInfo', 'error')} required">
	<label for="floorInfo">
		<b><g:message code="floorInfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorInfo" name="floorInfo.id" from="${urbandevelopmentinformation.FloorInfo.list()}" optionKey="id" required="" value="${floorInfoOwnershipInfoInstance?.floorInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owFlId', 'error')} required">
	<label for="owFlId">
		<b><g:message code="flId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owFlId" type="number" value="${floorInfoOwnershipInfoInstance.owFlId}" required=""/>

</div>





<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owAddressId', 'error')} required">
	<label for="owAddressId">
		<g:message code="AddressId.label" default="Ow Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owAddressId" type="number" value="${floorInfoOwnershipInfoInstance.owAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owFullName', 'error')} required">
	<label for="owFullName">
		<g:message code="FullName.label" default="Ow Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owFullName" required="" value="${floorInfoOwnershipInfoInstance?.owFullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owType', 'error')} required">
	<label for="owType">
		<g:message code="type.label" default="Ow Type" />
		<span class="required-indicator">*</span>
	</label>
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


<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owAppliedDate', 'error')} required">
	<label for="owAppliedDate">
		<g:message code="AppliedDate.label" default="Ow Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owAppliedDate" precision="day"  value="${floorInfoOwnershipInfoInstance?.owAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owLastModifiedDate', 'error')} required">
	<label for="owLastModifiedDate">
		<g:message code="LastModifiedDate.label" default="Ow Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owLastModifiedDate" precision="day"  value="${floorInfoOwnershipInfoInstance?.owLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owApprovedDate', 'error')} required">
	<label for="owApprovedDate">
		<g:message code="ApprovedDate.label" default="Ow Approved Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owApprovedDate" precision="day"  value="${floorInfoOwnershipInfoInstance?.owApprovedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owStatus', 'error')} required">
	<label for="owStatus">
		<g:message code="Status.label" default="Ow Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owStatus" required="" value="${floorInfoOwnershipInfoInstance?.owStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owRemark', 'error')} required">
	<label for="owRemark">
		<g:message code="remark.label" default="Ow Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="owRemark" required="" value="${floorInfoOwnershipInfoInstance?.owRemark}"/>

</div>

