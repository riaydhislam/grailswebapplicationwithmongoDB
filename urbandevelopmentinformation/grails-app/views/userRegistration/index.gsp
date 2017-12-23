
<%@ page import="urbandevelopmentinformation.UserRegistration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userRegistration.label', default: 'UserRegistration')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userRegistration" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
			
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userRegistration" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="userRegistrationId" title="${message(code: 'userRegistration.userRegistrationId.label')}" />
					
						<g:sortableColumn property="userRegistrationFName" title="${message(code: 'userRegistration.userRegistrationFName.label')}" />
					
						<g:sortableColumn property="userRegistrationMName" title="${message(code: 'userRegistration.userRegistrationMName.label')}" />
					
						<g:sortableColumn property="userRegistrationLName" title="${message(code: 'userRegistration.userRegistrationLName.label')}" />
					
						<g:sortableColumn property="userRegistrationfullName" title="${message(code: 'userRegistration.userRegistrationfullName.label')}" />
					
						<g:sortableColumn property="userRegistrationCrDate" title="${message(code: 'userRegistration.userRegistrationCrDate.label')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userRegistrationInstanceList}" status="i" var="userRegistrationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userRegistrationInstance.id}">${fieldValue(bean: userRegistrationInstance, field: "userRegistrationId")}</g:link></td>
					
						<td>${fieldValue(bean: userRegistrationInstance, field: "userRegistrationFName")}</td>
					
						<td>${fieldValue(bean: userRegistrationInstance, field: "userRegistrationMName")}</td>
					
						<td>${fieldValue(bean: userRegistrationInstance, field: "userRegistrationLName")}</td>
					
						<td>${fieldValue(bean: userRegistrationInstance, field: "userRegistrationfullName")}</td>
					
						<td><g:formatDate date="${userRegistrationInstance.userRegistrationCrDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userRegistrationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
