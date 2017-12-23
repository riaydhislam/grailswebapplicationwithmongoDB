<%@ page import="urbandevelopmentinformation.PlotInfoOwnershipInfo" %>



<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owId', 'error')} required">
	<label for="owId">
		<g:message code="plotInfoOwnershipInfo.owId.label" default="Ow Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owId" type="number" value="${plotInfoOwnershipInfoInstance.owId}" required=""/>

</div>
<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'plotInfo', 'error')} required">
	<label for="plotInfo">
		<b><g:message code="plotInfo.label" /></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plotInfo" name="plotInfo.id" from="${urbandevelopmentinformation.PlotInfo.list()}" optionKey="id" required="" value="${plotInfoOwnershipInfoInstance?.plotInfo?.id}" class="many-to-one"/>

</div>


<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owPlId', 'error')} required">
	<label for="owPlId">
		<b><g:message code="plId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owPlId" type="number" value="${plotInfoOwnershipInfoInstance.owPlId}" required=""/>

</div>


<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owAddressId', 'error')} required">
 <label for="owAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="owAddressId" type="number" value="${plotInfoOwnershipInfoInstance.owAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForPlotOwnership">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>
<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owFullName', 'error')} required">
	<label for="owFullName">
		<g:message code="plotInfoOwnershipInfo.owFullName.label" default="Ow Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owFullName" required="" value="${plotInfoOwnershipInfoInstance?.owFullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owType', 'error')} required">
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

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owAppliedDate', 'error')} required">
	<label for="owAppliedDate">
		<g:message code="plotInfoOwnershipInfo.owAppliedDate.label" default="Ow Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owAppliedDate" precision="day"  value="${plotInfoOwnershipInfoInstance?.owAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owLastModifiedDate', 'error')} required">
	<label for="owLastModifiedDate">
		<g:message code="plotInfoOwnershipInfo.owLastModifiedDate.label" default="Ow Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owLastModifiedDate" precision="day"  value="${plotInfoOwnershipInfoInstance?.owLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owApprovedDate', 'error')} required">
	<label for="owApprovedDate">
		<g:message code="plotInfoOwnershipInfo.owApprovedDate.label" default="Ow Approved Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owApprovedDate" precision="day"  value="${plotInfoOwnershipInfoInstance?.owApprovedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owStatus', 'error')} required">
	<label for="owStatus">
		<g:message code="plotInfoOwnershipInfo.owStatus.label" default="Ow Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owStatus" required="" value="${plotInfoOwnershipInfoInstance?.owStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owRemark', 'error')} required">
	<label for="owRemark">
		<g:message code="remark.label" default="Ow Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="owRemark" required="" value="${plotInfoOwnershipInfoInstance?.owRemark}"/>

</div>


