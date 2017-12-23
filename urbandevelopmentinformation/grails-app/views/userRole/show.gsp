
<%@ page import="urbandevelopmentinformation.UserRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-userRole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-userRole" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list userRole">
			
				<g:if test="${userRoleInstance?.userRoleId}">
				<li class="fieldcontain">
					<span id="userRoleId-label" class="property-label"><g:message code="userRole.userRoleId.label" default="User Role Id" /></span>
					
						<span class="property-value" aria-labelledby="userRoleId-label"><g:fieldValue bean="${userRoleInstance}" field="userRoleId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRoleInstance?.userRoleName}">
				<li class="fieldcontain">
					<span id="userRoleName-label" class="property-label"><g:message code="userRole.userRoleName.label" default="User Role Name" /></span>
					
						<span class="property-value" aria-labelledby="userRoleName-label"><g:fieldValue bean="${userRoleInstance}" field="userRoleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRoleInstance?.userRoleType}">
				<li class="fieldcontain">
					<span id="userRoleType-label" class="property-label"><g:message code="userRole.userRoleType.label" default="User Role Type" /></span>
					
						<span class="property-value" aria-labelledby="userRoleType-label"><g:fieldValue bean="${userRoleInstance}" field="userRoleType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRoleInstance?.userRoleDate}">
				<li class="fieldcontain">
					<span id="userRoleDate-label" class="property-label"><g:message code="userRole.userRoleDate.label" default="User Role Date" /></span>
					
						<span class="property-value" aria-labelledby="userRoleDate-label"><g:formatDate date="${userRoleInstance?.userRoleDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRoleInstance?.userRegistrations}">
				<li class="fieldcontain">
					<span id="userRegistrations-label" class="property-label"><g:message code="userRole.userRegistrations.label" default="User Registrations" /></span>
					
						<span class="property-value" aria-labelledby="userRegistrations-label"><g:link controller="userRegistration" action="show" id="${userRoleInstance?.userRegistrations?.id}">${userRoleInstance?.userRegistrations?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userRoleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userRoleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
