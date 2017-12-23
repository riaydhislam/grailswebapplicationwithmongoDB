
<%@ page import="urbandevelopmentinformation.UserRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userRole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li> <a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a></li>
			</ul>
		</div>
		<div id="list-userRole" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="userRoleId" title="${message(code: 'userRole.userRoleId.label', default: 'User Role Id')}" />
					
						<g:sortableColumn property="userRoleName" title="${message(code: 'userRole.userRoleName.label', default: 'User Role Name')}" />
					
						<g:sortableColumn property="userRoleType" title="${message(code: 'userRole.userRoleType.label', default: 'User Role Type')}" />
					
						<g:sortableColumn property="userRoleDate" title="${message(code: 'userRole.userRoleDate.label', default: 'User Role Date')}" />
					
						<th><g:message code="userRole.userRegistrations.label" default="User Registrations" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userRoleInstanceList}" status="i" var="userRoleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userRoleInstance.id}">${fieldValue(bean: userRoleInstance, field: "userRoleId")}</g:link></td>
					
						<td>${fieldValue(bean: userRoleInstance, field: "userRoleName")}</td>
					
						<td>${fieldValue(bean: userRoleInstance, field: "userRoleType")}</td>
					
						<td><g:formatDate date="${userRoleInstance.userRoleDate}" /></td>
					
						<td>${fieldValue(bean: userRoleInstance, field: "userRegistrations")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userRoleInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
