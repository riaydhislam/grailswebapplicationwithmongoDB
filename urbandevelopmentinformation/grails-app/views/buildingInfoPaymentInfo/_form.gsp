<%@ page import="urbandevelopmentinformation.BuildingInfoPaymentInfo" %>





<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paId', 'error')} required">
	<label for="paId">
		<g:message code="buildingInfoPaymentInfo.paId.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paId" type="number" value="${buildingInfoPaymentInfoInstance.paId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paBiId', 'error')} required">
	<label for="paBiId">
		<g:message code="buildingInfoPaymentInfo.paBiId.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paBiId" type="number" value="${buildingInfoPaymentInfoInstance.paBiId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'buildingInfo', 'error')} required">
	<label for="buildingInfo">
		<b><g:message code="buildingInfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buildingInfo" name="buildingInfo.id" from="${urbandevelopmentinformation.BuildingInfo.list()}" optionKey="id" required="" value="${buildingInfoPaymentInfoInstance?.buildingInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paPlId', 'error')} required">
	<label for="paPlId">
		<b><g:message code="buId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paPlId" type="number" value="${buildingInfoPaymentInfoInstance.paPlId}" required=""/>

</div>


<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paCreaterAddressId', 'error')} required">
 <label for="paCreaterAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="paCreaterAddressId" type="number" value="${buildingInfoPaymentInfoInstance.paCreaterAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForPlotPayment">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paCreaterName', 'error')} required">
	<label for="paCreaterName">
		<g:message code="buildingInfoPaymentInfo.paCreaterName.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paCreaterName" required="" value="${buildingInfoPaymentInfoInstance?.paCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'pyCreaterAuthority', 'error')} required">
	<label for="pyCreaterAuthority">
		<g:message code="buildingInfoPaymentInfo.pyCreaterAuthority.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pyCreaterAuthority" required="" value="${buildingInfoPaymentInfoInstance?.pyCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paType', 'error')} required">
	<label for="paType">
		<g:message code="type.label" default="Pa Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="paType" from="${[
    message(code:'payment.1.label'),
    message(code:'payment.2.label'),
    message(code:'payment.3.label'),
       message(code:'payment.4.label'),
    message(code:'payment.5.label'),
    message(code:'payment.6.label')
   
	
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paDate', 'error')} required">
	<label for="paDate">
		<g:message code="buildingInfoPaymentInfo.paDate.label" default="Pa Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paDate" precision="day"  value="${buildingInfoPaymentInfoInstance?.paDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paRefNumber', 'error')} required">
	<label for="paRefNumber">
		<g:message code="buildingInfoPaymentInfo.paRefNumber.label" default="Pa Ref Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paRefNumber" required="" value="${buildingInfoPaymentInfoInstance?.paRefNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paTotalAmount', 'error')} required">
	<label for="paTotalAmount">
		<g:message code="buildingInfoPaymentInfo.paTotalAmount.label" default="Pa Total Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paTotalAmount" value="${fieldValue(bean: buildingInfoPaymentInfoInstance, field: 'paTotalAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paPaidAmount', 'error')} required">
	<label for="paPaidAmount">
		<g:message code="buildingInfoPaymentInfo.paPaidAmount.label" default="Pa Paid Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paPaidAmount" value="${fieldValue(bean: buildingInfoPaymentInfoInstance, field: 'paPaidAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paCopy', 'error')} required">
	<label for="paCopy">
		<g:message code="buildingInfoPaymentInfo.paCopy.label" default="Pa Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="paCopy" name="paCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoPaymentInfoInstance, field: 'paRemark', 'error')} required">
	<label for="paRemark">
		<g:message code="remark.label" default="Pa Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="paRemark" required="" value="${buildingInfoPaymentInfoInstance?.paRemark}"/>

</div>


