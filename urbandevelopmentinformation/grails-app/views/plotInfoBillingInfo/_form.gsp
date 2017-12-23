<%@ page import="urbandevelopmentinformation.PlotInfoBillingInfo" %>



<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biId', 'error')} required">
	<label for="biId">
		<g:message code="biId.label" default="Bi Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biId" type="number" value="${plotInfoBillingInfoInstance.biId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'plotInfo', 'error')} required">
	<label for="plotInfo">
		<b><g:message code="registered.plotinfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plotInfo" name="plotInfo.id" from="${urbandevelopmentinformation.PlotInfo.list()}" optionKey="id" required="" value="${plotInfoBillingInfoInstance?.plotInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biPlId', 'error')} required">
	<label for="biPlId">
		<b><g:message code="plId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biPlId" type="number" value="${plotInfoBillingInfoInstance.biPlId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCostType', 'error')} required">
	<label for="biCostType">
		<g:message code="CostType.label"/>
		<span class="required-indicator">*</span>
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


<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCreaterAddressId', 'error')} required">
 <label for="biCreaterAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="biCreaterAddressId" type="number" value="${plotInfoBillingInfoInstance.biCreaterAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForPlotBilling">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>


<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCreaterName', 'error')} required">
	<label for="biCreaterName">
		<g:message code="billing.cratetor.name.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCreaterName" required="" value="${plotInfoBillingInfoInstance?.biCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCreaterAuthority', 'error')} required">
	<label for="biCreaterAuthority">
		<g:message code="billing.creater.authority.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCreaterAuthority" required="" value="${plotInfoBillingInfoInstance?.biCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCreateDate', 'error')} required">
	<label for="biCreateDate">
		<g:message code="CreateDate.label" default="Bi Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biCreateDate" precision="day"  value="${plotInfoBillingInfoInstance?.biCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biPayDateUntil', 'error')} required">
	<label for="biPayDateUntil">
		<g:message code="PayDateUntil.label" default="Bi Pay Date Until" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biPayDateUntil" precision="day"  value="${plotInfoBillingInfoInstance?.biPayDateUntil}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biLastModifiedDate', 'error')} required">
	<label for="biLastModifiedDate">
		<g:message code="LastModifiedDate.label" default="Bi Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biLastModifiedDate" precision="day"  value="${plotInfoBillingInfoInstance?.biLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biPrintDate', 'error')} required">
	<label for="biPrintDate">
		<g:message code="PrintDate.label" default="Bi Print Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biPrintDate" precision="day"  value="${plotInfoBillingInfoInstance?.biPrintDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCurrency', 'error')} required">
	<label for="biCurrency">
		<g:message code="Currency.label" default="Bi Currency" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCurrency" required="" value="${plotInfoBillingInfoInstance?.biCurrency}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biPrintCopy', 'error')} required">
	<label for="biPrintCopy">
		<g:message code="PrintCopy.label" default="Bi Print Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="biPrintCopy" name="biPrintCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biAmount', 'error')} required">
	<label for="biAmount">
		<g:message code="Amount.label" default="Bi Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biAmount" value="${fieldValue(bean: plotInfoBillingInfoInstance, field: 'biAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biReferenceNumber', 'error')} required">
	<label for="biReferenceNumber">
		<g:message code="ReferenceNumber.label" default="Bi Reference Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biReferenceNumber" required="" value="${plotInfoBillingInfoInstance?.biReferenceNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biRemark', 'error')} required">
	<label for="biRemark">
		<g:message code="remark.label" default="Bi Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="biRemark" required="" value="${plotInfoBillingInfoInstance?.biRemark}"/>

</div>



