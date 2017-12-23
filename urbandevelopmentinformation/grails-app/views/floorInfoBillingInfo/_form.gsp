<%@ page import="urbandevelopmentinformation.FloorInfoBillingInfo" %>



<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biId', 'error')} required">
	<label for="biId">
		<g:message code="floorInfoBillingInfo.biId.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biId" type="number" value="${floorInfoBillingInfoInstance.biId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'floorInfo', 'error')} required">
	<label for="floorInfo">
		<b><g:message code="floorInfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorInfo" name="floorInfo.id" from="${urbandevelopmentinformation.FloorInfo.list()}" optionKey="id" required="" value="${floorInfoBillingInfoInstance?.floorInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biFlId', 'error')} required">
	<label for="biFlId">
		<b><g:message code="flId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biFlId" type="number" value="${floorInfoBillingInfoInstance.biFlId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biCostType', 'error')} required">
	<label for="biCostType">
		<g:message code="CostType.label"/>
		<span class="required-indicator">*</span>
	</label>
	</label>
	<g:select name="biCostType" from="${[
    message(code:'billing.1.label'),
    message(code:'billing.2.label'),
    message(code:'billing.3.label'),
       message(code:'billing.4.label'),
    message(code:'billing.5.label'),
    message(code:'billing.6.label'),
    message(code:'billing.7.label'),
    message(code:'billing.8.label'),
    message(code:'billing.9.label'),
    message(code:'billing.10.label')
	
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>





<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biCreaterAddressId', 'error')} required">
 <label for="biCreaterAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="biCreaterAddressId" type="number" value="${floorInfoBillingInfoInstance.biCreaterAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForFloorBilling">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biCreaterName', 'error')} required">
	<label for="biCreaterName">
		<g:message code="billing.cratetor.name.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCreaterName" required="" value="${floorInfoBillingInfoInstance?.biCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biCreaterAuthority', 'error')} required">
	<label for="biCreaterAuthority">
		<g:message code="billing.creater.authority.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCreaterAuthority" required="" value="${floorInfoBillingInfoInstance?.biCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biCreateDate', 'error')} required">
	<label for="biCreateDate">
		<g:message code="floorInfoBillingInfo.biCreateDate.label" default="Bi Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biCreateDate" precision="day"  value="${floorInfoBillingInfoInstance?.biCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biPayDateUntil', 'error')} required">
	<label for="biPayDateUntil">
		<g:message code="floorInfoBillingInfo.biPayDateUntil.label" default="Bi Pay Date Until" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biPayDateUntil" precision="day"  value="${floorInfoBillingInfoInstance?.biPayDateUntil}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biLastModifiedDate', 'error')} required">
	<label for="biLastModifiedDate">
		<g:message code="floorInfoBillingInfo.biLastModifiedDate.label" default="Bi Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biLastModifiedDate" precision="day"  value="${floorInfoBillingInfoInstance?.biLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biPrintDate', 'error')} required">
	<label for="biPrintDate">
		<g:message code="floorInfoBillingInfo.biPrintDate.label" default="Bi Print Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biPrintDate" precision="day"  value="${floorInfoBillingInfoInstance?.biPrintDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biCurrency', 'error')} required">
	<label for="biCurrency">
		<g:message code="floorInfoBillingInfo.biCurrency.label" default="Bi Currency" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCurrency" required="" value="${floorInfoBillingInfoInstance?.biCurrency}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biPrintCopy', 'error')} required">
	<label for="biPrintCopy">
		<g:message code="floorInfoBillingInfo.biPrintCopy.label" default="Bi Print Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="biPrintCopy" name="biPrintCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biAmount', 'error')} required">
	<label for="biAmount">
		<g:message code="floorInfoBillingInfo.biAmount.label" default="Bi Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biAmount" value="${fieldValue(bean: floorInfoBillingInfoInstance, field: 'biAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biReferenceNumber', 'error')} required">
	<label for="biReferenceNumber">
		<g:message code="floorInfoBillingInfo.biReferenceNumber.label" default="Bi Reference Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biReferenceNumber" required="" value="${floorInfoBillingInfoInstance?.biReferenceNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoBillingInfoInstance, field: 'biRemark', 'error')} required">
	<label for="biRemark">
		<g:message code="remark.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="biRemark" required="" value="${floorInfoBillingInfoInstance?.biRemark}"/>

</div>

