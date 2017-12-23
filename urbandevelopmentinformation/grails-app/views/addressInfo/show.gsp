
<%@ page import="urbandevelopmentinformation.AddressInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'addressInfo.label', default: 'AddressInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-addressInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-addressInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list addressInfo">
			
				<g:if test="${addressInfoInstance?.adId}">
				<li class="fieldcontain">
					<span id="adId-label" class="property-label"><g:message code="addressInfo.adId.label" /></span>
					
						<span class="property-value" aria-labelledby="adId-label"><g:fieldValue bean="${addressInfoInstance}" field="adId"/></span>
					
				</li>
				</g:if>
			
			<g:if test="${addressInfoInstance?.adalId}">
				<li class="fieldcontain">
					<span id="adalId-label" class="property-label"><g:message code="alId.label" /></span>
					
						<span class="property-value" aria-labelledby="adalId-label"><g:fieldValue bean="${addressInfoInstance}" field="adalId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adFirstName}">
				<li class="fieldcontain">
					<span id="adFirstName-label" class="property-label"><g:message code="addressInfo.adFirstName.label" default="Ad First Name" /></span>
					
						<span class="property-value" aria-labelledby="adFirstName-label"><g:fieldValue bean="${addressInfoInstance}" field="adFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adMiddleName}">
				<li class="fieldcontain">
					<span id="adMiddleName-label" class="property-label"><g:message code="addressInfo.adMiddleName.label" default="Ad Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="adMiddleName-label"><g:fieldValue bean="${addressInfoInstance}" field="adMiddleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adLastName}">
				<li class="fieldcontain">
					<span id="adLastName-label" class="property-label"><g:message code="addressInfo.adLastName.label" default="Ad Last Name" /></span>
					
						<span class="property-value" aria-labelledby="adLastName-label"><g:fieldValue bean="${addressInfoInstance}" field="adLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adBirthDate}">
				<li class="fieldcontain">
					<span id="adBirthDate-label" class="property-label"><g:message code="addressInfo.adBirthDate.label" default="Ad Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="adBirthDate-label"><g:formatDate date="${addressInfoInstance?.adBirthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adBirthCertificateNumberPic}">
    <table>
    <tr><td><g:message code="addressInfo.adNationalIdNumberPic.label"/></td>
    <td><img  src="${createLink(controller:'addressInfo', action:'viewImageLayoutBirthCertificate', id:"${addressInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${addressInfoInstance?.adNationalIdNumber}">
				<li class="fieldcontain">
					<span id="adNationalIdNumber-label" class="property-label"><g:message code="addressInfo.adNationalIdNumber.label" default="Ad National Id Number" /></span>
					
						<span class="property-value" aria-labelledby="adNationalIdNumber-label"><g:fieldValue bean="${addressInfoInstance}" field="adNationalIdNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adNationalIdNumberPic}">
    <table>
    <tr><td><g:message code="addressInfo.adNationalIdNumberPic.label"/></td>
    <td><img  src="${createLink(controller:'addressInfo', action:'viewImageLayoutNationIdPic', id:"${addressInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${addressInfoInstance?.adPassportNumber}">
				<li class="fieldcontain">
					<span id="adPassportNumber-label" class="property-label"><g:message code="addressInfo.adPassportNumber.label" default="Ad Passport Number" /></span>
					
						<span class="property-value" aria-labelledby="adPassportNumber-label"><g:fieldValue bean="${addressInfoInstance}" field="adPassportNumber"/></span>
					
				</li>
				</g:if>
			
				
				<g:if test="${addressInfoInstance?.adPassportNumberPic}">
    <table>
    <tr><td><g:message code="addressInfo.adNationalIdNumberPic.label"/></td>
    <td><img  src="${createLink(controller:'addressInfo', action:'viewImageLayoutPassport', id:"${addressInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${addressInfoInstance?.adSexStatus}">
				<li class="fieldcontain">
					<span id="adSexStatus-label" class="property-label"><g:message code="addressInfo.adSexStatus.label" default="Ad Sex Status" /></span>
					
						<span class="property-value" aria-labelledby="adSexStatus-label"><g:fieldValue bean="${addressInfoInstance}" field="adSexStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adMobileNumber}">
				<li class="fieldcontain">
					<span id="adMobileNumber-label" class="property-label"><g:message code="addressInfo.adMobileNumber.label" default="Ad Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="adMobileNumber-label"><g:fieldValue bean="${addressInfoInstance}" field="adMobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adLandNumber}">
				<li class="fieldcontain">
					<span id="adLandNumber-label" class="property-label"><g:message code="addressInfo.adLandNumber.label" default="Ad Land Number" /></span>
					
						<span class="property-value" aria-labelledby="adLandNumber-label"><g:fieldValue bean="${addressInfoInstance}" field="adLandNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adEMail}">
				<li class="fieldcontain">
					<span id="adEMail-label" class="property-label"><g:message code="addressInfo.adEMail.label" default="Ad EM ail" /></span>
					
						<span class="property-value" aria-labelledby="adEMail-label"><g:fieldValue bean="${addressInfoInstance}" field="adEMail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adWeb}">
				<li class="fieldcontain">
					<span id="adWeb-label" class="property-label"><g:message code="addressInfo.adWeb.label" default="Ad Web" /></span>
					
						<span class="property-value" aria-labelledby="adWeb-label"><g:fieldValue bean="${addressInfoInstance}" field="adWeb"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adWifeOrHaFullName}">
				<li class="fieldcontain">
					<span id="adWifeOrHaFullName-label" class="property-label"><g:message code="addressInfo.adWifeOrHaFullName.label" default="Ad Wife Or Ha Full Name" /></span>
					
						<span class="property-value" aria-labelledby="adWifeOrHaFullName-label"><g:fieldValue bean="${addressInfoInstance}" field="adWifeOrHaFullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adWifeOrHusbandNationalId}">
				<li class="fieldcontain">
					<span id="adWifeOrHusbandNationalId-label" class="property-label"><g:message code="addressInfo.adWifeOrHusbandNationalId.label" default="Ad Wife Or Husband National Id" /></span>
					
						<span class="property-value" aria-labelledby="adWifeOrHusbandNationalId-label"><g:fieldValue bean="${addressInfoInstance}" field="adWifeOrHusbandNationalId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adFamilySize}">
				<li class="fieldcontain">
					<span id="adFamilySize-label" class="property-label"><g:message code="addressInfo.adFamilySize.label" default="Ad Family Size" /></span>
					
						<span class="property-value" aria-labelledby="adFamilySize-label"><g:fieldValue bean="${addressInfoInstance}" field="adFamilySize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adEducationLevel}">
				<li class="fieldcontain">
					<span id="adEducationLevel-label" class="property-label"><g:message code="addressInfo.adEducationLevel.label" default="Ad Education Level" /></span>
					
						<span class="property-value" aria-labelledby="adEducationLevel-label"><g:fieldValue bean="${addressInfoInstance}" field="adEducationLevel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adJobId}">
				<li class="fieldcontain">
					<span id="adJobId-label" class="property-label"><g:message code="addressInfo.adJobId.label" default="Ad Job Id" /></span>
					
						<span class="property-value" aria-labelledby="adJobId-label"><g:fieldValue bean="${addressInfoInstance}" field="adJobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adJobStatus}">
				<li class="fieldcontain">
					<span id="adJobStatus-label" class="property-label"><g:message code="addressInfo.adJobStatus.label" default="Ad Job Status" /></span>
					
						<span class="property-value" aria-labelledby="adJobStatus-label"><g:fieldValue bean="${addressInfoInstance}" field="adJobStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adJobPosition}">
				<li class="fieldcontain">
					<span id="adJobPosition-label" class="property-label"><g:message code="addressInfo.adJobPosition.label" default="Ad Job Position" /></span>
					
						<span class="property-value" aria-labelledby="adJobPosition-label"><g:fieldValue bean="${addressInfoInstance}" field="adJobPosition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adJobProvider}">
				<li class="fieldcontain">
					<span id="adJobProvider-label" class="property-label"><g:message code="addressInfo.adJobProvider.label" default="Ad Job Provider" /></span>
					
						<span class="property-value" aria-labelledby="adJobProvider-label"><g:fieldValue bean="${addressInfoInstance}" field="adJobProvider"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adJobType}">
				<li class="fieldcontain">
					<span id="adJobType-label" class="property-label"><g:message code="addressInfo.adJobType.label" default="Ad Job Type" /></span>
					
						<span class="property-value" aria-labelledby="adJobType-label"><g:fieldValue bean="${addressInfoInstance}" field="adJobType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adJoiningDate}">
				<li class="fieldcontain">
					<span id="adJoiningDate-label" class="property-label"><g:message code="addressInfo.adJoiningDate.label" default="Ad Joining Date" /></span>
					
						<span class="property-value" aria-labelledby="adJoiningDate-label"><g:formatDate date="${addressInfoInstance?.adJoiningDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adFatherFullName}">
				<li class="fieldcontain">
					<span id="adFatherFullName-label" class="property-label"><g:message code="addressInfo.adFatherFullName.label" default="Ad Father Full Name" /></span>
					
						<span class="property-value" aria-labelledby="adFatherFullName-label"><g:fieldValue bean="${addressInfoInstance}" field="adFatherFullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adFatherNationalId}">
				<li class="fieldcontain">
					<span id="adFatherNationalId-label" class="property-label"><g:message code="addressInfo.adFatherNationalId.label" default="Ad Father National Id" /></span>
					
						<span class="property-value" aria-labelledby="adFatherNationalId-label"><g:fieldValue bean="${addressInfoInstance}" field="adFatherNationalId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adMotherFullName}">
				<li class="fieldcontain">
					<span id="adMotherFullName-label" class="property-label"><g:message code="addressInfo.adMotherFullName.label" default="Ad Mother Full Name" /></span>
					
						<span class="property-value" aria-labelledby="adMotherFullName-label"><g:fieldValue bean="${addressInfoInstance}" field="adMotherFullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.adMotherNationalId}">
				<li class="fieldcontain">
					<span id="adMotherNationalId-label" class="property-label"><g:message code="addressInfo.adMotherNationalId.label" default="Ad Mother National Id" /></span>
					
						<span class="property-value" aria-labelledby="adMotherNationalId-label"><g:fieldValue bean="${addressInfoInstance}" field="adMotherNationalId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInfoInstance?.addressLocation}">
				<li class="fieldcontain">
					<span id="addressLocation-label" class="property-label"><g:message code="addressInfo.addressLocation.label" default="Address Location" /></span>
					
						<g:each in="${addressInfoInstance.addressLocation}" var="a">
						<span class="property-value" aria-labelledby="addressLocation-label"><g:link controller="addressLocationInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:addressInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${addressInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
