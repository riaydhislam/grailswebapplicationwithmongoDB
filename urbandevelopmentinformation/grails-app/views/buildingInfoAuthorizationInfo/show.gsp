
<%@ page import="urbandevelopmentinformation.BuildingInfoAuthorizationInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buildingInfoAuthorizationInfo.label', default: 'BuildingInfoAuthorizationInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-buildingInfoAuthorizationInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-buildingInfoAuthorizationInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list buildingInfoAuthorizationInfo">
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auId}">
				<li class="fieldcontain">
					<span id="auId-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auId.label" default="Au Id" /></span>
					
						<span class="property-value" aria-labelledby="auId-label"><g:fieldValue bean="${buildingInfoAuthorizationInfoInstance}" field="auId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auAddressId}">
				<li class="fieldcontain">
					<span id="auAddressId-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auAddressId.label" default="Au Address Id" /></span>
					
						<span class="property-value" aria-labelledby="auAddressId-label"><g:fieldValue bean="${buildingInfoAuthorizationInfoInstance}" field="auAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auAppliedDate}">
				<li class="fieldcontain">
					<span id="auAppliedDate-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auAppliedDate.label" default="Au Applied Date" /></span>
					
						<span class="property-value" aria-labelledby="auAppliedDate-label"><g:formatDate date="${buildingInfoAuthorizationInfoInstance?.auAppliedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auApprovalDate}">
				<li class="fieldcontain">
					<span id="auApprovalDate-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auApprovalDate.label" default="Au Approval Date" /></span>
					
						<span class="property-value" aria-labelledby="auApprovalDate-label"><g:formatDate date="${buildingInfoAuthorizationInfoInstance?.auApprovalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auPublishDate}">
				<li class="fieldcontain">
					<span id="auPublishDate-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auPublishDate.label" default="Au Publish Date" /></span>
					
						<span class="property-value" aria-labelledby="auPublishDate-label"><g:formatDate date="${buildingInfoAuthorizationInfoInstance?.auPublishDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auCode}">
				<li class="fieldcontain">
					<span id="auCode-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auCode.label" default="Au Code" /></span>
					
						<span class="property-value" aria-labelledby="auCode-label"><g:fieldValue bean="${buildingInfoAuthorizationInfoInstance}" field="auCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auName}">
				<li class="fieldcontain">
					<span id="auName-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auName.label" default="Au Name" /></span>
					
						<span class="property-value" aria-labelledby="auName-label"><g:fieldValue bean="${buildingInfoAuthorizationInfoInstance}" field="auName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auType}">
				<li class="fieldcontain">
					<span id="auType-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auType.label" default="Au Type" /></span>
					
						<span class="property-value" aria-labelledby="auType-label"><g:fieldValue bean="${buildingInfoAuthorizationInfoInstance}" field="auType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auNumber}">
				<li class="fieldcontain">
					<span id="auNumber-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auNumber.label" default="Au Number" /></span>
					
						<span class="property-value" aria-labelledby="auNumber-label"><g:fieldValue bean="${buildingInfoAuthorizationInfoInstance}" field="auNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auServiceCode}">
				<li class="fieldcontain">
					<span id="auServiceCode-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auServiceCode.label" default="Au Service Code" /></span>
					
						<span class="property-value" aria-labelledby="auServiceCode-label"><g:fieldValue bean="${buildingInfoAuthorizationInfoInstance}" field="auServiceCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auServiceName}">
				<li class="fieldcontain">
					<span id="auServiceName-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auServiceName.label" default="Au Service Name" /></span>
					
						<span class="property-value" aria-labelledby="auServiceName-label"><g:fieldValue bean="${buildingInfoAuthorizationInfoInstance}" field="auServiceName"/></span>
					
				</li>
				</g:if>
			
			<g:if test="${buildingInfoAuthorizationInfoInstance?.auApplicationCopy}">
    <table>
    <tr><td><g:message code="auApplicationCopy.label"/></td>
    <td><img  src="${createLink(controller:'buildingInfoAuthorizationInfo', action:'viewImageApplicationCopy', id:"${buildingInfoAuthorizationInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
       
       <g:if test="${buildingInfoAuthorizationInfoInstance?.auApprovedCopy}">
    <table>
    <tr><td><g:message code="auApprovedCopy.label"/></td>
    <td><img  src="${createLink(controller:'buildingInfoAuthorizationInfo', action:'viewImageApprovedCopy', id:"${buildingInfoAuthorizationInfoInstance.id}")}" />
    </td>
    </tr>
    </table>
       </g:if>
				
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auRemark}">
				<li class="fieldcontain">
					<span id="auRemark-label" class="property-label"><g:message code="remark.label" default="Au Remark" /></span>
					
						<span class="property-value" aria-labelledby="auRemark-label"><g:fieldValue bean="${buildingInfoAuthorizationInfoInstance}" field="auRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.auBuId}">
				<li class="fieldcontain">
					<span id="auBuId-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.auBuId.label" default="Au Bu Id" /></span>
					
						<span class="property-value" aria-labelledby="auBuId-label"><g:fieldValue bean="${buildingInfoAuthorizationInfoInstance}" field="auBuId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoAuthorizationInfoInstance?.buildingInfo}">
				<li class="fieldcontain">
					<span id="buildingInfo-label" class="property-label"><g:message code="buildingInfoAuthorizationInfo.buildingInfo.label" default="Building Info" /></span>
					
						<span class="property-value" aria-labelledby="buildingInfo-label"><g:link controller="buildingInfo" action="show" id="${buildingInfoAuthorizationInfoInstance?.buildingInfo?.id}">${buildingInfoAuthorizationInfoInstance?.buildingInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:buildingInfoAuthorizationInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${buildingInfoAuthorizationInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
