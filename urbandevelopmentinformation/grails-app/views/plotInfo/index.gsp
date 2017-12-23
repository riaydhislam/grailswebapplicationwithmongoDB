
<%@ page import="urbandevelopmentinformation.PlotInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plotInfo.label', default: 'PlotInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-plotInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-plotInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="plId" title="${message(code: 'plId.label',)}" />
					
						<g:sortableColumn property="plAddressId" title="${message(code: 'addressId.label',)}" />
					
						<g:sortableColumn property="plCode" title="${message(code: 'code.label',)}" />
					
						<g:sortableColumn property="plName" title="${message(code: 'plName.label',)}" />
					
						<g:sortableColumn property="plType" title="${message(code: 'Type.label', )}" />
					
						<g:sortableColumn property="plNumber" title="${message(code: 'Number.label',)}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${plotInfoInstanceList}" status="i" var="plotInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${plotInfoInstance.id}">${fieldValue(bean: plotInfoInstance, field: "plId")}</g:link></td>
					
						<td>${fieldValue(bean: plotInfoInstance, field: "plAddressId")}</td>
					
						<td>${fieldValue(bean: plotInfoInstance, field: "plCode")}</td>
					
						<td>${fieldValue(bean: plotInfoInstance, field: "plName")}</td>
					
						<td>${fieldValue(bean: plotInfoInstance, field: "plType")}</td>
					
						<td>${fieldValue(bean: plotInfoInstance, field: "plNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${plotInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
