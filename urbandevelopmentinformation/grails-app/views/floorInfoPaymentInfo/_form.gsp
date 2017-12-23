<%@ page import="urbandevelopmentinformation.FloorInfoPaymentInfo" %>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paId', 'error')} required">
	<label for="paId">
		<g:message code="floorInfoPaymentInfo.paId.label" default="Pa Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paId" type="number" value="${floorInfoPaymentInfoInstance.paId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paBiId', 'error')} required">
	<label for="paBiId">
		<g:message code="floorInfoPaymentInfo.paBiId.label" default="Pa Bi Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paBiId" type="number" value="${floorInfoPaymentInfoInstance.paBiId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'floorInfo', 'error')} required">
	<label for="floorInfo">
		<b><g:message code="floorInfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorInfo" name="floorInfo.id" from="${urbandevelopmentinformation.FloorInfo.list()}" optionKey="id" required="" value="${floorInfoPaymentInfoInstance?.floorInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paFlId', 'error')} required">
	<label for="paFlId">
		<b><g:message code="flId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paFlId" type="number" value="${floorInfoPaymentInfoInstance.paFlId}" required=""/>

</div>


<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paCreaterAddressId', 'error')} required">
 <label for="paCreaterAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="paCreaterAddressId" type="number" value="${floorInfoPaymentInfoInstance.paCreaterAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForFloorPayment">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>


<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paCreaterName', 'error')} required">
	<label for="paCreaterName">
		<g:message code="floorInfoPaymentInfo.paCreaterName.label" default="Pa Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paCreaterName" required="" value="${floorInfoPaymentInfoInstance?.paCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'pyCreaterAuthority', 'error')} required">
	<label for="pyCreaterAuthority">
		<g:message code="floorInfoPaymentInfo.pyCreaterAuthority.label" default="Py Creater Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pyCreaterAuthority" required="" value="${floorInfoPaymentInfoInstance?.pyCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paType', 'error')} required">
	<label for="paType">
		<g:message code="floorInfoPaymentInfo.paType.label" default="Pa Type" />
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

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paDate', 'error')} required">
	<label for="paDate">
		<g:message code="floorInfoPaymentInfo.paDate.label" default="Pa Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paDate" precision="day"  value="${floorInfoPaymentInfoInstance?.paDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paRefNumber', 'error')} required">
	<label for="paRefNumber">
		<g:message code="floorInfoPaymentInfo.paRefNumber.label" default="Pa Ref Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paRefNumber" required="" value="${floorInfoPaymentInfoInstance?.paRefNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paTotalAmount', 'error')} required">
	<label for="paTotalAmount">
		<g:message code="floorInfoPaymentInfo.paTotalAmount.label" default="Pa Total Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paTotalAmount" value="${fieldValue(bean: floorInfoPaymentInfoInstance, field: 'paTotalAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paPaidAmount', 'error')} required">
	<label for="paPaidAmount">
		<g:message code="floorInfoPaymentInfo.paPaidAmount.label" default="Pa Paid Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paPaidAmount" value="${fieldValue(bean: floorInfoPaymentInfoInstance, field: 'paPaidAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paCopy', 'error')} required">
	<label for="paCopy">
		<g:message code="floorInfoPaymentInfo.paCopy.label" default="Pa Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="paCopy" name="paCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paRemark', 'error')} required">
	<label for="paRemark">
		<g:message code="floorInfoPaymentInfo.paRemark.label" default="Pa Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="paRemark" required="" value="${floorInfoPaymentInfoInstance?.paRemark}"/>

</div>



