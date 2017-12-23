
<%@ page import="urbandevelopmentinformation.UnitInfoOwnershipInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfoOwnershipInfo.label', default: 'UnitInfoOwnershipInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-unitInfoOwnershipInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-unitInfoOwnershipInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list unitInfoOwnershipInfo">
			
				<g:if test="${unitInfoOwnershipInfoInstance?.owId}">
				<li class="fieldcontain">
					<span id="owId-label" class="property-label"><g:message code="unitInfoOwnershipInfo.owId.label" default="Ow Id" /></span>
					
						<span class="property-value" aria-labelledby="owId-label"><g:fieldValue bean="${unitInfoOwnershipInfoInstance}" field="owId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoOwnershipInfoInstance?.owAddressId}">
				<li class="fieldcontain">
					<span id="owAddressId-label" class="property-label"><g:message code="unitInfoOwnershipInfo.owAddressId.label" default="Ow Address Id" /></span>
					
						<span class="property-value" aria-labelledby="owAddressId-label"><g:fieldValue bean="${unitInfoOwnershipInfoInstance}" field="owAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoOwnershipInfoInstance?.owFullName}">
				<li class="fieldcontain">
					<span id="owFullName-label" class="property-label"><g:message code="unitInfoOwnershipInfo.owFullName.label" default="Ow Full Name" /></span>
					
						<span class="property-value" aria-labelledby="owFullName-label"><g:fieldValue bean="${unitInfoOwnershipInfoInstance}" field="owFullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoOwnershipInfoInstance?.owType}">
				<li class="fieldcontain">
					<span id="owType-label" class="property-label"><g:message code="unitInfoOwnershipInfo.owType.label" default="Ow Type" /></span>
					
						<span class="property-value" aria-labelledby="owType-label"><g:fieldValue bean="${unitInfoOwnershipInfoInstance}" field="owType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoOwnershipInfoInstance?.owAppliedDate}">
				<li class="fieldcontain">
					<span id="owAppliedDate-label" class="property-label"><g:message code="unitInfoOwnershipInfo.owAppliedDate.label" default="Ow Applied Date" /></span>
					
						<span class="property-value" aria-labelledby="owAppliedDate-label"><g:formatDate date="${unitInfoOwnershipInfoInstance?.owAppliedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoOwnershipInfoInstance?.owLastModifiedDate}">
				<li class="fieldcontain">
					<span id="owLastModifiedDate-label" class="property-label"><g:message code="unitInfoOwnershipInfo.owLastModifiedDate.label" default="Ow Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="owLastModifiedDate-label"><g:formatDate date="${unitInfoOwnershipInfoInstance?.owLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoOwnershipInfoInstance?.owApprovedDate}">
				<li class="fieldcontain">
					<span id="owApprovedDate-label" class="property-label"><g:message code="unitInfoOwnershipInfo.owApprovedDate.label" default="Ow Approved Date" /></span>
					
						<span class="property-value" aria-labelledby="owApprovedDate-label"><g:formatDate date="${unitInfoOwnershipInfoInstance?.owApprovedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoOwnershipInfoInstance?.owStatus}">
				<li class="fieldcontain">
					<span id="owStatus-label" class="property-label"><g:message code="unitInfoOwnershipInfo.owStatus.label" default="Ow Status" /></span>
					
						<span class="property-value" aria-labelledby="owStatus-label"><g:fieldValue bean="${unitInfoOwnershipInfoInstance}" field="owStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoOwnershipInfoInstance?.owRemark}">
				<li class="fieldcontain">
					<span id="owRemark-label" class="property-label"><g:message code="remark.label" default="Ow Remark" /></span>
					
						<span class="property-value" aria-labelledby="owRemark-label"><g:fieldValue bean="${unitInfoOwnershipInfoInstance}" field="owRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoOwnershipInfoInstance?.owUnId}">
				<li class="fieldcontain">
					<span id="owUnId-label" class="property-label"><g:message code="unitInfoOwnershipInfo.owUnId.label" default="Ow Un Id" /></span>
					
						<span class="property-value" aria-labelledby="owUnId-label"><g:fieldValue bean="${unitInfoOwnershipInfoInstance}" field="owUnId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoOwnershipInfoInstance?.unitInfo}">
				<li class="fieldcontain">
					<span id="unitInfo-label" class="property-label"><g:message code="unitInfoOwnershipInfo.unitInfo.label" default="Unit Info" /></span>
					
						<span class="property-value" aria-labelledby="unitInfo-label"><g:link controller="unitInfo" action="show" id="${unitInfoOwnershipInfoInstance?.unitInfo?.id}">${unitInfoOwnershipInfoInstance?.unitInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:unitInfoOwnershipInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${unitInfoOwnershipInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
