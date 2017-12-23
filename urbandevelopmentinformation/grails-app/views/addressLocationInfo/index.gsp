
<%@ page import="urbandevelopmentinformation.AddressLocationInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'addressLocationInfo.label', default: 'AddressLocationInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-addressLocationInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-addressLocationInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="alId" title="${message(code: 'addressLocationInfo.alId.label')}" />
						<g:sortableColumn property="alReferenceId" title="${message(code: 'addressLocationInfo.alReferenceId.label')}" />
						<g:sortableColumn property="alType" title="${message(code: 'addressLocationInfo.alType.label')}" />
						<g:sortableColumn property="alThanaCode" title="${message(code: 'addressLocationInfo.alThanaCode.label')}" />
						<g:sortableColumn property="alDistictCode" title="${message(code: 'addressLocationInfo.alDistictCode.label')}" />
						<g:sortableColumn property="alDivisionName" title="${message(code: 'addressLocationInfo.alDivisionName.label')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${addressLocationInfoInstanceList}" status="i" var="addressLocationInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${addressLocationInfoInstance.id}">${fieldValue(bean: addressLocationInfoInstance, field: "alId")}</g:link></td>
					
						<td>${fieldValue(bean: addressLocationInfoInstance, field: "alReferenceId")}</td>
					
						<td>${fieldValue(bean: addressLocationInfoInstance, field: "alType")}</td>
					
						<td>${fieldValue(bean: addressLocationInfoInstance, field: "alThanaCode")}</td>
					
						<td>${fieldValue(bean: addressLocationInfoInstance, field: "alDistictCode")}</td>
					
						<td>${fieldValue(bean: addressLocationInfoInstance, field: "alDivisionName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${addressLocationInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
