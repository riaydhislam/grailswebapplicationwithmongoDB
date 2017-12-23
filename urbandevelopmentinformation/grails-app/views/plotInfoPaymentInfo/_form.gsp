<%@ page import="urbandevelopmentinformation.PlotInfoPaymentInfo" %>


<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paId', 'error')} required">
	<label for="paId">
		<g:message code="paId.label" default="Pa Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paId" type="number" value="${plotInfoPaymentInfoInstance.paId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paBiId', 'error')} required">
	<label for="paBiId">
		<g:message code="biId.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paBiId" type="number" value="${plotInfoPaymentInfoInstance.paBiId}" required=""/>

</div>
<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'plotInfo', 'error')} required">
	<label for="plotInfo">
		<b><g:message code="registered.plotinfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plotInfo" name="plotInfo.id" from="${urbandevelopmentinformation.PlotInfo.list()}" optionKey="id" required="" value="${plotInfoPaymentInfoInstance?.plotInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paPlId', 'error')} required">
	<label for="paPlId">
		<b><g:message code="plId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paPlId" type="number" value="${plotInfoPaymentInfoInstance.paPlId}" required=""/>

</div>





<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paCreaterAddressId', 'error')} required">
 <label for="paCreaterAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="paCreaterAddressId" type="number" value="${plotInfoPaymentInfoInstance.paCreaterAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForPlotPayment">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paCreaterName', 'error')} required">
	<label for="paCreaterName">
		<g:message code="CreaterName.label" default="Pa Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paCreaterName" required="" value="${plotInfoPaymentInfoInstance?.paCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'pyCreaterAuthority', 'error')} required">
	<label for="pyCreaterAuthority">
		<g:message code="CreaterAuthority.label" default="Py Creater Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pyCreaterAuthority" required="" value="${plotInfoPaymentInfoInstance?.pyCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paType', 'error')} required">
	<label for="paType">
		<g:message code="Type.label" default="Pa Type" />
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

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paDate', 'error')} required">
	<label for="paDate">
		<g:message code="Date.label" default="Pa Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paDate" precision="day"  value="${plotInfoPaymentInfoInstance?.paDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paRefNumber', 'error')} required">
	<label for="paRefNumber">
		<g:message code="ReferenceNumber.label" default="Pa Ref Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paRefNumber" required="" value="${plotInfoPaymentInfoInstance?.paRefNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paTotalAmount', 'error')} required">
	<label for="paTotalAmount">
		<g:message code="TotalAmount.label" default="Pa Total Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paTotalAmount" value="${fieldValue(bean: plotInfoPaymentInfoInstance, field: 'paTotalAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paPaidAmount', 'error')} required">
	<label for="paPaidAmount">
		<g:message code="PaidAmount.label" default="Pa Paid Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paPaidAmount" value="${fieldValue(bean: plotInfoPaymentInfoInstance, field: 'paPaidAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paCopy', 'error')} required">
	<label for="paCopy">
		<g:message code="Copy.label" default="Pa Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="paCopy" name="paCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paRemark', 'error')} required">
	<label for="paRemark">
		<g:message code="remark.label" default="Pa Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="paRemark" required="" value="${plotInfoPaymentInfoInstance?.paRemark}"/>

</div>



