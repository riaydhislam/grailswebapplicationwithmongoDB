<%@ page import="urbandevelopmentinformation.BuildingInfoBillingInfo" %>



<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biId', 'error')} required">
	<label for="biId">
		<g:message code="buildingInfoBillingInfo.biId.label" default="Bi Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biId" type="number" value="${buildingInfoBillingInfoInstance.biId}" required=""/>

</div>
<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'buildingInfo', 'error')} required">
	<label for="buildingInfo">
		<b><g:message code="buildingInfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buildingInfo" name="buildingInfo.id" from="${urbandevelopmentinformation.BuildingInfo.list()}" optionKey="id" required="" value="${buildingInfoBillingInfoInstance?.buildingInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biBuId', 'error')} required">
	<label for="biBuId">
		<b><g:message code="buId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biBuId" type="number" value="${buildingInfoBillingInfoInstance.biBuId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biCostType', 'error')} required">
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


<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biCreaterAddressId', 'error')} required">
 <label for="biCreaterAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="biCreaterAddressId" type="number" value="${buildingInfoBillingInfoInstance.biCreaterAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForPlotBilling">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biCreaterName', 'error')} required">
	<label for="biCreaterName">
		<g:message code="billing.cratetor.name.label" default="Bi Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCreaterName" required="" value="${buildingInfoBillingInfoInstance?.biCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biCreaterAuthority', 'error')} required">
	<label for="biCreaterAuthority">
		<g:message code="billing.creater.authority.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCreaterAuthority" required="" value="${buildingInfoBillingInfoInstance?.biCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biCreateDate', 'error')} required">
	<label for="biCreateDate">
		<g:message code="buildingInfoBillingInfo.biCreateDate.label" default="Bi Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biCreateDate" precision="day"  value="${buildingInfoBillingInfoInstance?.biCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biPayDateUntil', 'error')} required">
	<label for="biPayDateUntil">
		<g:message code="buildingInfoBillingInfo.biPayDateUntil.label" default="Bi Pay Date Until" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biPayDateUntil" precision="day"  value="${buildingInfoBillingInfoInstance?.biPayDateUntil}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biLastModifiedDate', 'error')} required">
	<label for="biLastModifiedDate">
		<g:message code="buildingInfoBillingInfo.biLastModifiedDate.label" default="Bi Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biLastModifiedDate" precision="day"  value="${buildingInfoBillingInfoInstance?.biLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biPrintDate', 'error')} required">
	<label for="biPrintDate">
		<g:message code="buildingInfoBillingInfo.biPrintDate.label" default="Bi Print Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biPrintDate" precision="day"  value="${buildingInfoBillingInfoInstance?.biPrintDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biCurrency', 'error')} required">
	<label for="biCurrency">
		<g:message code="buildingInfoBillingInfo.biCurrency.label" default="Bi Currency" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCurrency" required="" value="${buildingInfoBillingInfoInstance?.biCurrency}"/>

</div>



<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biPrintCopy', 'error')} required">
	<label for="biPrintCopy">
		<g:message code="buildingInfoBillingInfo.biPrintCopy.label" default="Bi Print Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="biPrintCopy" name="biPrintCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biAmount', 'error')} required">
	<label for="biAmount">
		<g:message code="buildingInfoBillingInfo.biAmount.label" default="Bi Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biAmount" value="${fieldValue(bean: buildingInfoBillingInfoInstance, field: 'biAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biReferenceNumber', 'error')} required">
	<label for="biReferenceNumber">
		<g:message code="buildingInfoBillingInfo.biReferenceNumber.label" default="Bi Reference Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biReferenceNumber" required="" value="${buildingInfoBillingInfoInstance?.biReferenceNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoBillingInfoInstance, field: 'biRemark', 'error')} required">
	<label for="biRemark">
		<g:message code="remark.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="biRemark" required="" value="${buildingInfoBillingInfoInstance?.biRemark}"/>

</div>



