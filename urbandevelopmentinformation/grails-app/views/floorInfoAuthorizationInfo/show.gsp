
<%@ page import="urbandevelopmentinformation.FloorInfoAuthorizationInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoAuthorizationInfo.label', default: 'FloorInfoAuthorizationInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-floorInfoAuthorizationInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-floorInfoAuthorizationInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list floorInfoAuthorizationInfo">
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auId}">
				<li class="fieldcontain">
					<span id="auId-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auId.label" default="Au Id" /></span>
					
						<span class="property-value" aria-labelledby="auId-label"><g:fieldValue bean="${floorInfoAuthorizationInfoInstance}" field="auId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auAddressId}">
				<li class="fieldcontain">
					<span id="auAddressId-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auAddressId.label" default="Au Address Id" /></span>
					
						<span class="property-value" aria-labelledby="auAddressId-label"><g:fieldValue bean="${floorInfoAuthorizationInfoInstance}" field="auAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auAppliedDate}">
				<li class="fieldcontain">
					<span id="auAppliedDate-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auAppliedDate.label" default="Au Applied Date" /></span>
					
						<span class="property-value" aria-labelledby="auAppliedDate-label"><g:formatDate date="${floorInfoAuthorizationInfoInstance?.auAppliedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auApprovalDate}">
				<li class="fieldcontain">
					<span id="auApprovalDate-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auApprovalDate.label" default="Au Approval Date" /></span>
					
						<span class="property-value" aria-labelledby="auApprovalDate-label"><g:formatDate date="${floorInfoAuthorizationInfoInstance?.auApprovalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auPublishDate}">
				<li class="fieldcontain">
					<span id="auPublishDate-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auPublishDate.label" default="Au Publish Date" /></span>
					
						<span class="property-value" aria-labelledby="auPublishDate-label"><g:formatDate date="${floorInfoAuthorizationInfoInstance?.auPublishDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auCode}">
				<li class="fieldcontain">
					<span id="auCode-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auCode.label" default="Au Code" /></span>
					
						<span class="property-value" aria-labelledby="auCode-label"><g:fieldValue bean="${floorInfoAuthorizationInfoInstance}" field="auCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auName}">
				<li class="fieldcontain">
					<span id="auName-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auName.label" default="Au Name" /></span>
					
						<span class="property-value" aria-labelledby="auName-label"><g:fieldValue bean="${floorInfoAuthorizationInfoInstance}" field="auName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auType}">
				<li class="fieldcontain">
					<span id="auType-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auType.label" default="Au Type" /></span>
					
						<span class="property-value" aria-labelledby="auType-label"><g:fieldValue bean="${floorInfoAuthorizationInfoInstance}" field="auType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auNumber}">
				<li class="fieldcontain">
					<span id="auNumber-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auNumber.label" default="Au Number" /></span>
					
						<span class="property-value" aria-labelledby="auNumber-label"><g:fieldValue bean="${floorInfoAuthorizationInfoInstance}" field="auNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auServiceCode}">
				<li class="fieldcontain">
					<span id="auServiceCode-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auServiceCode.label" default="Au Service Code" /></span>
					
						<span class="property-value" aria-labelledby="auServiceCode-label"><g:fieldValue bean="${floorInfoAuthorizationInfoInstance}" field="auServiceCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auServiceName}">
				<li class="fieldcontain">
					<span id="auServiceName-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auServiceName.label" default="Au Service Name" /></span>
					
						<span class="property-value" aria-labelledby="auServiceName-label"><g:fieldValue bean="${floorInfoAuthorizationInfoInstance}" field="auServiceName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auApplicationCopy}">
    <table>
    <tr><td><g:message code="auApplicationCopy.label"/></td>
    <td><img  src="${createLink(controller:'floorInfoAuthorizationInfo', action:'viewImageLayoutApplicationCopy', id:"${floorInfoAuthorizationInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
       
       <g:if test="${floorInfoAuthorizationInfoInstance?.auApprovedCopy}">
    <table>
    <tr><td><g:message code="auApprovedCopy.label"/></td>
    <td><img  src="${createLink(controller:'floorInfoAuthorizationInfo', action:'viewImageLayoutauApprovedCopy', id:"${floorInfoAuthorizationInfoInstance.id}")}" />
    </td>
    </tr>
    </table>
       </g:if>
				
				
				
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auRemark}">
				<li class="fieldcontain">
					<span id="auRemark-label" class="property-label"><g:message code="remark.label" default="Au Remark" /></span>
					
						<span class="property-value" aria-labelledby="auRemark-label"><g:fieldValue bean="${floorInfoAuthorizationInfoInstance}" field="auRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.auFlId}">
				<li class="fieldcontain">
					<span id="auFlId-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.auFlId.label" default="Au Fl Id" /></span>
					
						<span class="property-value" aria-labelledby="auFlId-label"><g:fieldValue bean="${floorInfoAuthorizationInfoInstance}" field="auFlId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoAuthorizationInfoInstance?.floorInfo}">
				<li class="fieldcontain">
					<span id="floorInfo-label" class="property-label"><g:message code="floorInfoAuthorizationInfo.floorInfo.label" default="Floor Info" /></span>
					
						<span class="property-value" aria-labelledby="floorInfo-label"><g:link controller="floorInfo" action="show" id="${floorInfoAuthorizationInfoInstance?.floorInfo?.id}">${floorInfoAuthorizationInfoInstance?.floorInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:floorInfoAuthorizationInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${floorInfoAuthorizationInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
