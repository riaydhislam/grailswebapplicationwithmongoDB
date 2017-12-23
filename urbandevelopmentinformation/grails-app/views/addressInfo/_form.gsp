<%@ page import="urbandevelopmentinformation.AddressInfo" %>


<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adId', 'error')} required">
 <label for="adId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="adId" type="number" value="${addressInfoInstance.adId}" required=""/>
 
  

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adalId', 'error')} required">
 <label for="adalId">
  <g:message code="alId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="adalId" type="number" value="${addressInfoInstance.adalId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForAddressLocation">
     <input type="button" class="button" value="<g:message code="addressLocation.search.label"/>"></g:link>

</div>




<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adFirstName', 'error')} required">
	<label for="adFirstName">
		<g:message code="addressInfo.adFirstName.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adFirstName" required="" value="${addressInfoInstance?.adFirstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adMiddleName', 'error')} required">
	<label for="adMiddleName">
		<g:message code="addressInfo.adMiddleName.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adMiddleName" required="" value="${addressInfoInstance?.adMiddleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adLastName', 'error')} required">
	<label for="adLastName">
		<g:message code="addressInfo.adLastName.label"  />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adLastName" required="" value="${addressInfoInstance?.adLastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adBirthDate', 'error')} required">
	<label for="adBirthDate">
		<g:message code="addressInfo.adBirthDate.label" default="Ad Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="adBirthDate" precision="day"  value="${addressInfoInstance?.adBirthDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adBirthCertificateNumber', 'error')} required">
	<label for="adBirthCertificateNumber">
		<g:message code="addressInfo.adBirthCertificateNumber.label" default="Ad Birth Certificate Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adBirthCertificateNumber" required="" value="${addressInfoInstance?.adBirthCertificateNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adBirthCertificateNumberPic', 'error')} required">
	<label for="adBirthCertificateNumberPic">
		<g:message code="addressInfo.adBirthCertificateNumberPic.label" default="Ad Birth Certificate Number Pic" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="adBirthCertificateNumberPic" name="adBirthCertificateNumberPic" />

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adNationalIdNumber', 'error')} required">
	<label for="adNationalIdNumber">
		<g:message code="addressInfo.adNationalIdNumber.label" default="Ad National Id Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adNationalIdNumber" required="" value="${addressInfoInstance?.adNationalIdNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adNationalIdNumberPic', 'error')} required">
	<label for="adNationalIdNumberPic">
		<g:message code="addressInfo.adNationalIdNumberPic.label" default="Ad National Id Number Pic" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="adNationalIdNumberPic" name="adNationalIdNumberPic" />

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adPassportNumber', 'error')} required">
	<label for="adPassportNumber">
		<g:message code="addressInfo.adPassportNumber.label" default="Ad Passport Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adPassportNumber" required="" value="${addressInfoInstance?.adPassportNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adPassportNumberPic', 'error')} required">
	<label for="adPassportNumberPic">
		<g:message code="addressInfo.adPassportNumberPic.label" default="Ad Passport Number Pic" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="adPassportNumberPic" name="adPassportNumberPic" />

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adSexStatus', 'error')} required">
	<label for="adSexStatus">
		<g:message code="addressInfo.adSexStatus.label" default="Ad Sex Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adSexStatus" required="" value="${addressInfoInstance?.adSexStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adMobileNumber', 'error')} required">
	<label for="adMobileNumber">
		<g:message code="addressInfo.adMobileNumber.label" default="Ad Mobile Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adMobileNumber" required="" value="${addressInfoInstance?.adMobileNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adLandNumber', 'error')} required">
	<label for="adLandNumber">
		<g:message code="addressInfo.adLandNumber.label" default="Ad Land Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adLandNumber" required="" value="${addressInfoInstance?.adLandNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adEMail', 'error')} required">
	<label for="adEMail">
		<g:message code="addressInfo.adEMail.label" default="Ad EM ail" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adEMail" required="" value="${addressInfoInstance?.adEMail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adWeb', 'error')} required">
	<label for="adWeb">
		<g:message code="addressInfo.adWeb.label" default="Ad Web" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adWeb" required="" value="${addressInfoInstance?.adWeb}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adWifeOrHaFullName', 'error')} required">
	<label for="adWifeOrHaFullName">
		<g:message code="addressInfo.adWifeOrHaFullName.label" default="Ad Wife Or Ha Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adWifeOrHaFullName" required="" value="${addressInfoInstance?.adWifeOrHaFullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adWifeOrHusbandNationalId', 'error')} required">
	<label for="adWifeOrHusbandNationalId">
		<g:message code="addressInfo.adWifeOrHusbandNationalId.label" default="Ad Wife Or Husband National Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adWifeOrHusbandNationalId" required="" value="${addressInfoInstance?.adWifeOrHusbandNationalId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adFamilySize', 'error')} required">
	<label for="adFamilySize">
		<g:message code="addressInfo.adFamilySize.label" default="Ad Family Size" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adFamilySize" required="" value="${addressInfoInstance?.adFamilySize}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adEducationLevel', 'error')} required">
	<label for="adEducationLevel">
		<g:message code="addressInfo.adEducationLevel.label" default="Ad Education Level" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adEducationLevel" required="" value="${addressInfoInstance?.adEducationLevel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adJobId', 'error')} required">
	<label for="adJobId">
		<g:message code="addressInfo.adJobId.label" default="Ad Job Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adJobId" required="" value="${addressInfoInstance?.adJobId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adJobStatus', 'error')} required">
	<label for="adJobStatus">
		<g:message code="addressInfo.adJobStatus.label" default="Ad Job Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adJobStatus" required="" value="${addressInfoInstance?.adJobStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adJobPosition', 'error')} required">
	<label for="adJobPosition">
		<g:message code="addressInfo.adJobPosition.label" default="Ad Job Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adJobPosition" required="" value="${addressInfoInstance?.adJobPosition}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adJobProvider', 'error')} required">
	<label for="adJobProvider">
		<g:message code="addressInfo.adJobProvider.label" default="Ad Job Provider" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adJobProvider" required="" value="${addressInfoInstance?.adJobProvider}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adJobType', 'error')} required">
	<label for="adJobType">
		<g:message code="addressInfo.adJobType.label" default="Ad Job Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adJobType" required="" value="${addressInfoInstance?.adJobType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adJoiningDate', 'error')} required">
	<label for="adJoiningDate">
		<g:message code="addressInfo.adJoiningDate.label" default="Ad Joining Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="adJoiningDate" precision="day"  value="${addressInfoInstance?.adJoiningDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adFatherFullName', 'error')} required">
	<label for="adFatherFullName">
		<g:message code="addressInfo.adFatherFullName.label" default="Ad Father Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adFatherFullName" required="" value="${addressInfoInstance?.adFatherFullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adFatherNationalId', 'error')} required">
	<label for="adFatherNationalId">
		<g:message code="addressInfo.adFatherNationalId.label" default="Ad Father National Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adFatherNationalId" required="" value="${addressInfoInstance?.adFatherNationalId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adMotherFullName', 'error')} required">
	<label for="adMotherFullName">
		<g:message code="addressInfo.adMotherFullName.label" default="Ad Mother Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adMotherFullName" required="" value="${addressInfoInstance?.adMotherFullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'adMotherNationalId', 'error')} required">
	<label for="adMotherNationalId">
		<g:message code="addressInfo.adMotherNationalId.label" default="Ad Mother National Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adMotherNationalId" required="" value="${addressInfoInstance?.adMotherNationalId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInfoInstance, field: 'addressLocation', 'error')} ">
	<label for="addressLocation">
		<g:message code="addressInfo.addressLocation.label" default="Address Location" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${addressInfoInstance?.addressLocation?}" var="a">
    <li><g:link controller="addressLocationInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="addressLocationInfo" action="create" params="['addressInfo.id': addressInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'addressLocationInfo.label', default: 'AddressLocationInfo')])}</g:link>
</li>
</ul>


</div>

