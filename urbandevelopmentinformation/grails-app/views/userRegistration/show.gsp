
<%@ page import="urbandevelopmentinformation.UserRegistration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userRegistration.label', default: 'UserRegistration')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-userRegistration" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-userRegistration" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list userRegistration">
			
				<g:if test="${userRegistrationInstance?.userRegistrationId}">
				<li class="fieldcontain">
					<span id="userRegistrationId-label" class="property-label"><g:message code="userRegistration.userRegistrationId.label" default="User Registration Id" /></span>
					
						<span class="property-value" aria-labelledby="userRegistrationId-label"><g:fieldValue bean="${userRegistrationInstance}" field="userRegistrationId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRegistrationInstance?.userRegistrationFName}">
				<li class="fieldcontain">
					<span id="userRegistrationFName-label" class="property-label"><g:message code="userRegistration.userRegistrationFName.label" default="User Registration FN ame" /></span>
					
						<span class="property-value" aria-labelledby="userRegistrationFName-label"><g:fieldValue bean="${userRegistrationInstance}" field="userRegistrationFName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRegistrationInstance?.userRegistrationMName}">
				<li class="fieldcontain">
					<span id="userRegistrationMName-label" class="property-label"><g:message code="userRegistration.userRegistrationMName.label" default="User Registration MN ame" /></span>
					
						<span class="property-value" aria-labelledby="userRegistrationMName-label"><g:fieldValue bean="${userRegistrationInstance}" field="userRegistrationMName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRegistrationInstance?.userRegistrationLName}">
				<li class="fieldcontain">
					<span id="userRegistrationLName-label" class="property-label"><g:message code="userRegistration.userRegistrationLName.label" default="User Registration LN ame" /></span>
					
						<span class="property-value" aria-labelledby="userRegistrationLName-label"><g:fieldValue bean="${userRegistrationInstance}" field="userRegistrationLName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRegistrationInstance?.userRegistrationfullName}">
				<li class="fieldcontain">
					<span id="userRegistrationfullName-label" class="property-label"><g:message code="userRegistration.userRegistrationfullName.label" default="User Registrationfull Name" /></span>
					
						<span class="property-value" aria-labelledby="userRegistrationfullName-label"><g:fieldValue bean="${userRegistrationInstance}" field="userRegistrationfullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRegistrationInstance?.userRegistrationCrDate}">
				<li class="fieldcontain">
					<span id="userRegistrationCrDate-label" class="property-label"><g:message code="userRegistration.userRegistrationCrDate.label" default="User Registration Cr Date" /></span>
					
						<span class="property-value" aria-labelledby="userRegistrationCrDate-label"><g:formatDate date="${userRegistrationInstance?.userRegistrationCrDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRegistrationInstance?.userRegistrationLDate}">
				<li class="fieldcontain">
					<span id="userRegistrationLDate-label" class="property-label"><g:message code="userRegistration.userRegistrationLDate.label" default="User Registration LD ate" /></span>
					
						<span class="property-value" aria-labelledby="userRegistrationLDate-label"><g:formatDate date="${userRegistrationInstance?.userRegistrationLDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRegistrationInstance?.userRegistrationName}">
				<li class="fieldcontain">
					<span id="userRegistrationName-label" class="property-label"><g:message code="userRegistration.userRegistrationName.label" default="User Registration Name" /></span>
					
						<span class="property-value" aria-labelledby="userRegistrationName-label"><g:fieldValue bean="${userRegistrationInstance}" field="userRegistrationName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRegistrationInstance?.userRegistrationPassword}">
				<li class="fieldcontain">
					<span id="userRegistrationPassword-label" class="property-label"><g:message code="userRegistration.userRegistrationPassword.label" default="User Registration Password" /></span>
					
						<span class="property-value" aria-labelledby="userRegistrationPassword-label"><g:fieldValue bean="${userRegistrationInstance}" field="userRegistrationPassword"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRegistrationInstance?.roles}">
				<li class="fieldcontain">
					<span id="roles-label" class="property-label"><g:message code="userRegistration.roles.label" default="Roles" /></span>
					
						<g:each in="${userRegistrationInstance.roles}" var="r">
						<span class="property-value" aria-labelledby="roles-label"><g:link controller="userRole" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userRegistrationInstance?.addresses}">
				<li class="fieldcontain">
					<span id="addresses-label" class="property-label"><g:message code="userRegistration.addresses.label" default="Addresses" /></span>
					
						<g:each in="${userRegistrationInstance.addresses}" var="a">
						<span class="property-value" aria-labelledby="addresses-label"><g:link controller="addressInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userRegistrationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userRegistrationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
