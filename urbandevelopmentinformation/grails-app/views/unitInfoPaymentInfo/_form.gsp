<%@ page import="urbandevelopmentinformation.UnitInfoPaymentInfo" %>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paId', 'error')} required">
	<label for="paId">
		<g:message code="unitInfoPaymentInfo.paId.label" default="Pa Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paId" type="number" value="${unitInfoPaymentInfoInstance.paId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paBiId', 'error')} required">
	<label for="paBiId">
		<g:message code="unitInfoPaymentInfo.paBiId.label" default="Pa Bi Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paBiId" type="number" value="${unitInfoPaymentInfoInstance.paBiId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'unitInfo', 'error')} required">
	<label for="unitInfo">
		<b><g:message code="unitInfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitInfo" name="unitInfo.id" from="${urbandevelopmentinformation.UnitInfo.list()}" optionKey="id" required="" value="${unitInfoPaymentInfoInstance?.unitInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paUnId', 'error')} required">
	<label for="paUnId">
		<b><g:message code="unId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paUnId" type="number" value="${unitInfoPaymentInfoInstance.paUnId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paCreaterAddressId', 'error')} required">
 <label for="paCreaterAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="paCreaterAddressId" type="number" value="${unitInfoPaymentInfoInstance.paCreaterAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForUnitPayment">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paCreaterName', 'error')} required">
	<label for="paCreaterName">
		<g:message code="unitInfoPaymentInfo.paCreaterName.label" default="Pa Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paCreaterName" required="" value="${unitInfoPaymentInfoInstance?.paCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'pyCreaterAuthority', 'error')} required">
	<label for="pyCreaterAuthority">
		<g:message code="unitInfoPaymentInfo.pyCreaterAuthority.label" default="Py Creater Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pyCreaterAuthority" required="" value="${unitInfoPaymentInfoInstance?.pyCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paType', 'error')} required">
	<label for="paType">
		<g:message code="type.label"  />
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

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paDate', 'error')} required">
	<label for="paDate">
		<g:message code="unitInfoPaymentInfo.paDate.label" default="Pa Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paDate" precision="day"  value="${unitInfoPaymentInfoInstance?.paDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paRefNumber', 'error')} required">
	<label for="paRefNumber">
		<g:message code="unitInfoPaymentInfo.paRefNumber.label" default="Pa Ref Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paRefNumber" required="" value="${unitInfoPaymentInfoInstance?.paRefNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paTotalAmount', 'error')} required">
	<label for="paTotalAmount">
		<g:message code="unitInfoPaymentInfo.paTotalAmount.label" default="Pa Total Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paTotalAmount" value="${fieldValue(bean: unitInfoPaymentInfoInstance, field: 'paTotalAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paPaidAmount', 'error')} required">
	<label for="paPaidAmount">
		<g:message code="unitInfoPaymentInfo.paPaidAmount.label" default="Pa Paid Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paPaidAmount" value="${fieldValue(bean: unitInfoPaymentInfoInstance, field: 'paPaidAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paCopy', 'error')} required">
	<label for="paCopy">
		<g:message code="unitInfoPaymentInfo.paCopy.label" default="Pa Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="paCopy" name="paCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paRemark', 'error')} required">
	<label for="paRemark">
		<g:message code="remark.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="paRemark" required="" value="${unitInfoPaymentInfoInstance?.paRemark}"/>

</div>



