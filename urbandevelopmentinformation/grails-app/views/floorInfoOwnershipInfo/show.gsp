
<%@ page import="urbandevelopmentinformation.FloorInfoOwnershipInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoOwnershipInfo.label', default: 'FloorInfoOwnershipInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-floorInfoOwnershipInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-floorInfoOwnershipInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list floorInfoOwnershipInfo">
			
				<g:if test="${floorInfoOwnershipInfoInstance?.owId}">
				<li class="fieldcontain">
					<span id="owId-label" class="property-label"><g:message code="floorInfoOwnershipInfo.owId.label" default="Ow Id" /></span>
					
						<span class="property-value" aria-labelledby="owId-label"><g:fieldValue bean="${floorInfoOwnershipInfoInstance}" field="owId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoOwnershipInfoInstance?.owAddressId}">
				<li class="fieldcontain">
					<span id="owAddressId-label" class="property-label"><g:message code="floorInfoOwnershipInfo.owAddressId.label" default="Ow Address Id" /></span>
					
						<span class="property-value" aria-labelledby="owAddressId-label"><g:fieldValue bean="${floorInfoOwnershipInfoInstance}" field="owAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoOwnershipInfoInstance?.owFullName}">
				<li class="fieldcontain">
					<span id="owFullName-label" class="property-label"><g:message code="floorInfoOwnershipInfo.owFullName.label" default="Ow Full Name" /></span>
					
						<span class="property-value" aria-labelledby="owFullName-label"><g:fieldValue bean="${floorInfoOwnershipInfoInstance}" field="owFullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoOwnershipInfoInstance?.owType}">
				<li class="fieldcontain">
					<span id="owType-label" class="property-label"><g:message code="floorInfoOwnershipInfo.owType.label" default="Ow Type" /></span>
					
						<span class="property-value" aria-labelledby="owType-label"><g:fieldValue bean="${floorInfoOwnershipInfoInstance}" field="owType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoOwnershipInfoInstance?.owAppliedDate}">
				<li class="fieldcontain">
					<span id="owAppliedDate-label" class="property-label"><g:message code="floorInfoOwnershipInfo.owAppliedDate.label" default="Ow Applied Date" /></span>
					
						<span class="property-value" aria-labelledby="owAppliedDate-label"><g:formatDate date="${floorInfoOwnershipInfoInstance?.owAppliedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoOwnershipInfoInstance?.owLastModifiedDate}">
				<li class="fieldcontain">
					<span id="owLastModifiedDate-label" class="property-label"><g:message code="floorInfoOwnershipInfo.owLastModifiedDate.label" default="Ow Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="owLastModifiedDate-label"><g:formatDate date="${floorInfoOwnershipInfoInstance?.owLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoOwnershipInfoInstance?.owApprovedDate}">
				<li class="fieldcontain">
					<span id="owApprovedDate-label" class="property-label"><g:message code="floorInfoOwnershipInfo.owApprovedDate.label" default="Ow Approved Date" /></span>
					
						<span class="property-value" aria-labelledby="owApprovedDate-label"><g:formatDate date="${floorInfoOwnershipInfoInstance?.owApprovedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoOwnershipInfoInstance?.owStatus}">
				<li class="fieldcontain">
					<span id="owStatus-label" class="property-label"><g:message code="floorInfoOwnershipInfo.owStatus.label" default="Ow Status" /></span>
					
						<span class="property-value" aria-labelledby="owStatus-label"><g:fieldValue bean="${floorInfoOwnershipInfoInstance}" field="owStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoOwnershipInfoInstance?.owRemark}">
				<li class="fieldcontain">
					<span id="owRemark-label" class="property-label"><g:message code="remark.label" default="Ow Remark" /></span>
					
						<span class="property-value" aria-labelledby="owRemark-label"><g:fieldValue bean="${floorInfoOwnershipInfoInstance}" field="owRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoOwnershipInfoInstance?.owFlId}">
				<li class="fieldcontain">
					<span id="owFlId-label" class="property-label"><g:message code="floorInfoOwnershipInfo.owFlId.label" default="Ow Fl Id" /></span>
					
						<span class="property-value" aria-labelledby="owFlId-label"><g:fieldValue bean="${floorInfoOwnershipInfoInstance}" field="owFlId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoOwnershipInfoInstance?.floorInfo}">
				<li class="fieldcontain">
					<span id="floorInfo-label" class="property-label"><g:message code="floorInfoOwnershipInfo.floorInfo.label" default="Floor Info" /></span>
					
						<span class="property-value" aria-labelledby="floorInfo-label"><g:link controller="floorInfo" action="show" id="${floorInfoOwnershipInfoInstance?.floorInfo?.id}">${floorInfoOwnershipInfoInstance?.floorInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:floorInfoOwnershipInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${floorInfoOwnershipInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
