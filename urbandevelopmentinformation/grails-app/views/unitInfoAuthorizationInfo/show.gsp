
<%@ page import="urbandevelopmentinformation.UnitInfoAuthorizationInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfoAuthorizationInfo.label', default: 'UnitInfoAuthorizationInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-unitInfoAuthorizationInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-unitInfoAuthorizationInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list unitInfoAuthorizationInfo">
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auId}">
				<li class="fieldcontain">
					<span id="auId-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auId.label" default="Au Id" /></span>
					
						<span class="property-value" aria-labelledby="auId-label"><g:fieldValue bean="${unitInfoAuthorizationInfoInstance}" field="auId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auAddressId}">
				<li class="fieldcontain">
					<span id="auAddressId-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auAddressId.label" default="Au Address Id" /></span>
					
						<span class="property-value" aria-labelledby="auAddressId-label"><g:fieldValue bean="${unitInfoAuthorizationInfoInstance}" field="auAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auAppliedDate}">
				<li class="fieldcontain">
					<span id="auAppliedDate-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auAppliedDate.label" default="Au Applied Date" /></span>
					
						<span class="property-value" aria-labelledby="auAppliedDate-label"><g:formatDate date="${unitInfoAuthorizationInfoInstance?.auAppliedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auApprovalDate}">
				<li class="fieldcontain">
					<span id="auApprovalDate-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auApprovalDate.label" default="Au Approval Date" /></span>
					
						<span class="property-value" aria-labelledby="auApprovalDate-label"><g:formatDate date="${unitInfoAuthorizationInfoInstance?.auApprovalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auPublishDate}">
				<li class="fieldcontain">
					<span id="auPublishDate-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auPublishDate.label" default="Au Publish Date" /></span>
					
						<span class="property-value" aria-labelledby="auPublishDate-label"><g:formatDate date="${unitInfoAuthorizationInfoInstance?.auPublishDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auCode}">
				<li class="fieldcontain">
					<span id="auCode-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auCode.label" default="Au Code" /></span>
					
						<span class="property-value" aria-labelledby="auCode-label"><g:fieldValue bean="${unitInfoAuthorizationInfoInstance}" field="auCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auName}">
				<li class="fieldcontain">
					<span id="auName-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auName.label" default="Au Name" /></span>
					
						<span class="property-value" aria-labelledby="auName-label"><g:fieldValue bean="${unitInfoAuthorizationInfoInstance}" field="auName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auType}">
				<li class="fieldcontain">
					<span id="auType-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auType.label" default="Au Type" /></span>
					
						<span class="property-value" aria-labelledby="auType-label"><g:fieldValue bean="${unitInfoAuthorizationInfoInstance}" field="auType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auNumber}">
				<li class="fieldcontain">
					<span id="auNumber-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auNumber.label" default="Au Number" /></span>
					
						<span class="property-value" aria-labelledby="auNumber-label"><g:fieldValue bean="${unitInfoAuthorizationInfoInstance}" field="auNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auServiceCode}">
				<li class="fieldcontain">
					<span id="auServiceCode-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auServiceCode.label" default="Au Service Code" /></span>
					
						<span class="property-value" aria-labelledby="auServiceCode-label"><g:fieldValue bean="${unitInfoAuthorizationInfoInstance}" field="auServiceCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auServiceName}">
				<li class="fieldcontain">
					<span id="auServiceName-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auServiceName.label" default="Au Service Name" /></span>
					
						<span class="property-value" aria-labelledby="auServiceName-label"><g:fieldValue bean="${unitInfoAuthorizationInfoInstance}" field="auServiceName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auApplicationCopy}">
    <table>
    <tr><td><g:message code="auApplicationCopy.label"/></td>
    <td><img  src="${createLink(controller:'unitInfoAuthorizationInfo', action:'viewImageLayoutApplicationCopy', id:"${unitInfoAuthorizationInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
       
       <g:if test="${unitInfoAuthorizationInfoInstance?.auApprovedCopy}">
    <table>
    <tr><td><g:message code="auApprovedCopy.label"/></td>
    <td><img  src="${createLink(controller:'unitInfoAuthorizationInfo', action:'viewImageLayoutauApprovedCopy', id:"${unitInfoAuthorizationInfoInstance.id}")}" />
    </td>
    </tr>
    </table>
       </g:if>
				
				
				
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auRemark}">
				<li class="fieldcontain">
					<span id="auRemark-label" class="property-label"><g:message code="remark.label" default="Au Remark" /></span>
					
						<span class="property-value" aria-labelledby="auRemark-label"><g:fieldValue bean="${unitInfoAuthorizationInfoInstance}" field="auRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.auUnId}">
				<li class="fieldcontain">
					<span id="auUnId-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.auUnId.label" default="Au Un Id" /></span>
					
						<span class="property-value" aria-labelledby="auUnId-label"><g:fieldValue bean="${unitInfoAuthorizationInfoInstance}" field="auUnId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoAuthorizationInfoInstance?.unitInfo}">
				<li class="fieldcontain">
					<span id="unitInfo-label" class="property-label"><g:message code="unitInfoAuthorizationInfo.unitInfo.label" default="Unit Info" /></span>
					
						<span class="property-value" aria-labelledby="unitInfo-label"><g:link controller="unitInfo" action="show" id="${unitInfoAuthorizationInfoInstance?.unitInfo?.id}">${unitInfoAuthorizationInfoInstance?.unitInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:unitInfoAuthorizationInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${unitInfoAuthorizationInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
