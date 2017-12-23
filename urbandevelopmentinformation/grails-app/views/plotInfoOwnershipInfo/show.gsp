
<%@ page import="urbandevelopmentinformation.PlotInfoOwnershipInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plotInfoOwnershipInfo.label', default: 'PlotInfoOwnershipInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-plotInfoOwnershipInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-plotInfoOwnershipInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list plotInfoOwnershipInfo">
			
				<g:if test="${plotInfoOwnershipInfoInstance?.owId}">
				<li class="fieldcontain">
					<span id="owId-label" class="property-label"><g:message code="plotInfoOwnershipInfo.owId.label" default="Ow Id" /></span>
					
						<span class="property-value" aria-labelledby="owId-label"><g:fieldValue bean="${plotInfoOwnershipInfoInstance}" field="owId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoOwnershipInfoInstance?.owAddressId}">
				<li class="fieldcontain">
					<span id="owAddressId-label" class="property-label"><g:message code="plotInfoOwnershipInfo.owAddressId.label" default="Ow Address Id" /></span>
					
						<span class="property-value" aria-labelledby="owAddressId-label"><g:fieldValue bean="${plotInfoOwnershipInfoInstance}" field="owAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoOwnershipInfoInstance?.owFullName}">
				<li class="fieldcontain">
					<span id="owFullName-label" class="property-label"><g:message code="plotInfoOwnershipInfo.owFullName.label" default="Ow Full Name" /></span>
					
						<span class="property-value" aria-labelledby="owFullName-label"><g:fieldValue bean="${plotInfoOwnershipInfoInstance}" field="owFullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoOwnershipInfoInstance?.owType}">
				<li class="fieldcontain">
					<span id="owType-label" class="property-label"><g:message code="plotInfoOwnershipInfo.owType.label" default="Ow Type" /></span>
					
						<span class="property-value" aria-labelledby="owType-label"><g:fieldValue bean="${plotInfoOwnershipInfoInstance}" field="owType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoOwnershipInfoInstance?.owAppliedDate}">
				<li class="fieldcontain">
					<span id="owAppliedDate-label" class="property-label"><g:message code="plotInfoOwnershipInfo.owAppliedDate.label" default="Ow Applied Date" /></span>
					
						<span class="property-value" aria-labelledby="owAppliedDate-label"><g:formatDate date="${plotInfoOwnershipInfoInstance?.owAppliedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoOwnershipInfoInstance?.owLastModifiedDate}">
				<li class="fieldcontain">
					<span id="owLastModifiedDate-label" class="property-label"><g:message code="plotInfoOwnershipInfo.owLastModifiedDate.label" default="Ow Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="owLastModifiedDate-label"><g:formatDate date="${plotInfoOwnershipInfoInstance?.owLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoOwnershipInfoInstance?.owApprovedDate}">
				<li class="fieldcontain">
					<span id="owApprovedDate-label" class="property-label"><g:message code="plotInfoOwnershipInfo.owApprovedDate.label" default="Ow Approved Date" /></span>
					
						<span class="property-value" aria-labelledby="owApprovedDate-label"><g:formatDate date="${plotInfoOwnershipInfoInstance?.owApprovedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoOwnershipInfoInstance?.owStatus}">
				<li class="fieldcontain">
					<span id="owStatus-label" class="property-label"><g:message code="plotInfoOwnershipInfo.owStatus.label" default="Ow Status" /></span>
					
						<span class="property-value" aria-labelledby="owStatus-label"><g:fieldValue bean="${plotInfoOwnershipInfoInstance}" field="owStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoOwnershipInfoInstance?.owRemark}">
				<li class="fieldcontain">
					<span id="owRemark-label" class="property-label"><g:message code="remark.label" default="Ow Remark" /></span>
					
						<span class="property-value" aria-labelledby="owRemark-label"><g:fieldValue bean="${plotInfoOwnershipInfoInstance}" field="owRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoOwnershipInfoInstance?.owPlId}">
				<li class="fieldcontain">
					<span id="owPlId-label" class="property-label"><g:message code="plotInfoOwnershipInfo.owPlId.label" default="Ow Pl Id" /></span>
					
						<span class="property-value" aria-labelledby="owPlId-label"><g:fieldValue bean="${plotInfoOwnershipInfoInstance}" field="owPlId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoOwnershipInfoInstance?.plotInfo}">
				<li class="fieldcontain">
					<span id="plotInfo-label" class="property-label"><g:message code="plotInfoOwnershipInfo.plotInfo.label" default="Plot Info" /></span>
					
						<span class="property-value" aria-labelledby="plotInfo-label"><g:link controller="plotInfo" action="show" id="${plotInfoOwnershipInfoInstance?.plotInfo?.id}">${plotInfoOwnershipInfoInstance?.plotInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:plotInfoOwnershipInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${plotInfoOwnershipInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
