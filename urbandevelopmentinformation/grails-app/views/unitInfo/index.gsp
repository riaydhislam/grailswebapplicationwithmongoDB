
<%@ page import="urbandevelopmentinformation.UnitInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfo.label', default: 'UnitInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-unitInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-unitInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="unId" title="${message(code: 'unitInfo.unId.label', default: 'Un Id')}" />
					
						<g:sortableColumn property="unflId" title="${message(code: 'unitInfo.unflId.label', default: 'Unfl Id')}" />
					
						<g:sortableColumn property="unCode" title="${message(code: 'unitInfo.unCode.label', default: 'Un Code')}" />
					
						<g:sortableColumn property="unName" title="${message(code: 'unitInfo.unName.label', default: 'Un Name')}" />
					
						<g:sortableColumn property="unUseType" title="${message(code: 'unitInfo.unUseType.label', default: 'Un Use Type')}" />
					
						<g:sortableColumn property="unNumberOfFloorUnit" title="${message(code: 'unitInfo.unNumberOfFloorUnit.label', default: 'Un Number Of Floor Unit')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${unitInfoInstanceList}" status="i" var="unitInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${unitInfoInstance.id}">${fieldValue(bean: unitInfoInstance, field: "unId")}</g:link></td>
					
						<td>${fieldValue(bean: unitInfoInstance, field: "unflId")}</td>
					
						<td>${fieldValue(bean: unitInfoInstance, field: "unCode")}</td>
					
						<td>${fieldValue(bean: unitInfoInstance, field: "unName")}</td>
					
						<td>${fieldValue(bean: unitInfoInstance, field: "unUseType")}</td>
					
						<td>${fieldValue(bean: unitInfoInstance, field: "unNumberOfFloorUnit")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${unitInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
