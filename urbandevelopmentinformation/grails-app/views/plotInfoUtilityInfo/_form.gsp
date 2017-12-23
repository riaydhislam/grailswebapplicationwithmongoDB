<%@ page import="urbandevelopmentinformation.PlotInfoUtilityInfo" %>



<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utId', 'error')} required">
	<label for="utId">
		<g:message code="utId.label" default="Ut Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utId" type="number" value="${plotInfoUtilityInfoInstance.utId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utCreaterAddressId', 'error')} required">
 <label for="utCreaterAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="utCreaterAddressId" type="number" value="${plotInfoUtilityInfoInstance.utCreaterAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForPlotUtility">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>



<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utCreaterName', 'error')} required">
	<label for="utCreaterName">
		<g:message code="utility.cratetor.name.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterName" required="" value="${plotInfoUtilityInfoInstance?.utCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utCreaterAuthority', 'error')} required">
	<label for="utCreaterAuthority">
		<g:message code="utility.creater.authority.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterAuthority" required="" value="${plotInfoUtilityInfoInstance?.utCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'plotInfo', 'error')} required">
	<label for="plotInfo">
		<b><g:message code="registered.plotinfo.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plotInfo" name="plotInfo.id" from="${urbandevelopmentinformation.PlotInfo.list()}" optionKey="id" required="" value="${plotInfoUtilityInfoInstance?.plotInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utPlId', 'error')} required">
	<label for="utPlId">
		<b><g:message code="plId.label"/></b>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utPlId" type="number" value="${plotInfoUtilityInfoInstance.utPlId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utType', 'error')} required">
	<label for="utType">
		<g:message code="utility.Type.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:select name="utType" from="${[
    message(code:'utility.1.label'),
    message(code:'utility.2.label'),
    message(code:'utility.3.label'),
       message(code:'utility.4.label'),
    message(code:'utility.5.label'),
    message(code:'utility.6.label'),
    message(code:'utility.7.label'),
    message(code:'utility.8.label'),
    message(code:'utility.9.label'),
    message(code:'utility.10.label')
	
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utCreateDate', 'error')} required">
	<label for="utCreateDate">
		<g:message code="CreateDate.label" default="Ut Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utCreateDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utLastModifiedDate', 'error')} required">
	<label for="utLastModifiedDate">
		<g:message code="LastModifiedDate.label" default="Ut Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utLastModifiedDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utSubmissionDate', 'error')} required">
	<label for="utSubmissionDate">
		<g:message code="SubmissionDate.label" default="Ut Submission Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utSubmissionDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utSubmissionDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utApprovalDate', 'error')} required">
	<label for="utApprovalDate">
		<g:message code="approvalDate.label" default="Ut Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utApprovalDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utServiceDate', 'error')} required">
	<label for="utServiceDate">
		<g:message code="ServiceDate.label" default="Ut Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utServiceDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utDisServiceDate', 'error')} required">
	<label for="utDisServiceDate">
		<g:message code="disServiceDate.label" default="Ut Dis Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utDisServiceDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utDisServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utTypePic', 'error')} required">
	<label for="utTypePic">
		<g:message code="TypePic.label" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="utTypePic" name="utTypePic" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utRemark', 'error')} required">
	<label for="utRemark">
		<g:message code="Remark.label" default="Ut Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="utRemark" required="" value="${plotInfoUtilityInfoInstance?.utRemark}"/>

</div>






