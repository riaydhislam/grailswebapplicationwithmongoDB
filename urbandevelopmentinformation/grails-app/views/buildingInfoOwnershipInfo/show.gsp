
<%@ page import="urbandevelopmentinformation.BuildingInfoOwnershipInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buildingInfoOwnershipInfo.label', default: 'BuildingInfoOwnershipInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-buildingInfoOwnershipInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-buildingInfoOwnershipInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list buildingInfoOwnershipInfo">
			
				<g:if test="${buildingInfoOwnershipInfoInstance?.owId}">
				<li class="fieldcontain">
					<span id="owId-label" class="property-label"><g:message code="buildingInfoOwnershipInfo.owId.label" default="Ow Id" /></span>
					
						<span class="property-value" aria-labelledby="owId-label"><g:fieldValue bean="${buildingInfoOwnershipInfoInstance}" field="owId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoOwnershipInfoInstance?.owAddressId}">
				<li class="fieldcontain">
					<span id="owAddressId-label" class="property-label"><g:message code="buildingInfoOwnershipInfo.owAddressId.label" default="Ow Address Id" /></span>
					
						<span class="property-value" aria-labelledby="owAddressId-label"><g:fieldValue bean="${buildingInfoOwnershipInfoInstance}" field="owAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoOwnershipInfoInstance?.owFullName}">
				<li class="fieldcontain">
					<span id="owFullName-label" class="property-label"><g:message code="buildingInfoOwnershipInfo.owFullName.label" default="Ow Full Name" /></span>
					
						<span class="property-value" aria-labelledby="owFullName-label"><g:fieldValue bean="${buildingInfoOwnershipInfoInstance}" field="owFullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoOwnershipInfoInstance?.owType}">
				<li class="fieldcontain">
					<span id="owType-label" class="property-label"><g:message code="buildingInfoOwnershipInfo.owType.label" default="Ow Type" /></span>
					
						<span class="property-value" aria-labelledby="owType-label"><g:fieldValue bean="${buildingInfoOwnershipInfoInstance}" field="owType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoOwnershipInfoInstance?.owAppliedDate}">
				<li class="fieldcontain">
					<span id="owAppliedDate-label" class="property-label"><g:message code="buildingInfoOwnershipInfo.owAppliedDate.label" default="Ow Applied Date" /></span>
					
						<span class="property-value" aria-labelledby="owAppliedDate-label"><g:formatDate date="${buildingInfoOwnershipInfoInstance?.owAppliedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoOwnershipInfoInstance?.owLastModifiedDate}">
				<li class="fieldcontain">
					<span id="owLastModifiedDate-label" class="property-label"><g:message code="buildingInfoOwnershipInfo.owLastModifiedDate.label" default="Ow Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="owLastModifiedDate-label"><g:formatDate date="${buildingInfoOwnershipInfoInstance?.owLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoOwnershipInfoInstance?.owApprovedDate}">
				<li class="fieldcontain">
					<span id="owApprovedDate-label" class="property-label"><g:message code="buildingInfoOwnershipInfo.owApprovedDate.label" default="Ow Approved Date" /></span>
					
						<span class="property-value" aria-labelledby="owApprovedDate-label"><g:formatDate date="${buildingInfoOwnershipInfoInstance?.owApprovedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoOwnershipInfoInstance?.owStatus}">
				<li class="fieldcontain">
					<span id="owStatus-label" class="property-label"><g:message code="buildingInfoOwnershipInfo.owStatus.label" default="Ow Status" /></span>
					
						<span class="property-value" aria-labelledby="owStatus-label"><g:fieldValue bean="${buildingInfoOwnershipInfoInstance}" field="owStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoOwnershipInfoInstance?.owRemark}">
				<li class="fieldcontain">
					<span id="owRemark-label" class="property-label"><g:message code="remark.label" default="Ow Remark" /></span>
					
						<span class="property-value" aria-labelledby="owRemark-label"><g:fieldValue bean="${buildingInfoOwnershipInfoInstance}" field="owRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoOwnershipInfoInstance?.owBuId}">
				<li class="fieldcontain">
					<span id="owBuId-label" class="property-label"><g:message code="buildingInfoOwnershipInfo.owBuId.label" default="Ow Bu Id" /></span>
					
						<span class="property-value" aria-labelledby="owBuId-label"><g:fieldValue bean="${buildingInfoOwnershipInfoInstance}" field="owBuId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoOwnershipInfoInstance?.buildingInfo}">
				<li class="fieldcontain">
					<span id="buildingInfo-label" class="property-label"><g:message code="buildingInfoOwnershipInfo.buildingInfo.label" default="Building Info" /></span>
					
						<span class="property-value" aria-labelledby="buildingInfo-label"><g:link controller="buildingInfo" action="show" id="${buildingInfoOwnershipInfoInstance?.buildingInfo?.id}">${buildingInfoOwnershipInfoInstance?.buildingInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:buildingInfoOwnershipInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${buildingInfoOwnershipInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
