
<%@ page import="urbandevelopmentinformation.FloorInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfo.label', default: 'FloorInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-floorInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-floorInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="flId" title="${message(code: 'floorInfo.flId.label', default: 'Fl Id')}" />
					
						<g:sortableColumn property="flBuId" title="${message(code: 'floorInfo.flBuId.label', default: 'Fl Bu Id')}" />
					
						<g:sortableColumn property="flCode" title="${message(code: 'floorInfo.flCode.label', default: 'Fl Code')}" />
					
						<g:sortableColumn property="flName" title="${message(code: 'floorInfo.flName.label', default: 'Fl Name')}" />
					
						<g:sortableColumn property="flUseType" title="${message(code: 'floorInfo.flUseType.label', default: 'Fl Use Type')}" />
					
						<g:sortableColumn property="flNumberOfFloorUnit" title="${message(code: 'floorInfo.flNumberOfFloorUnit.label', default: 'Fl Number Of Floor Unit')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${floorInfoInstanceList}" status="i" var="floorInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${floorInfoInstance.id}">${fieldValue(bean: floorInfoInstance, field: "flId")}</g:link></td>
					
						<td>${fieldValue(bean: floorInfoInstance, field: "flBuId")}</td>
					
						<td>${fieldValue(bean: floorInfoInstance, field: "flCode")}</td>
					
						<td>${fieldValue(bean: floorInfoInstance, field: "flName")}</td>
					
						<td>${fieldValue(bean: floorInfoInstance, field: "flUseType")}</td>
					
						<td>${fieldValue(bean: floorInfoInstance, field: "flNumberOfFloorUnit")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${floorInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
