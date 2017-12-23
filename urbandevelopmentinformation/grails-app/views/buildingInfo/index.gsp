
<%@ page import="urbandevelopmentinformation.BuildingInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buildingInfo.label', default: 'BuildingInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-buildingInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-buildingInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="buId" title="${message(code: 'buildingInfo.buId.label', default: 'Bu Id')}" />
					
						<g:sortableColumn property="buAddressId" title="${message(code: 'buildingInfo.buAddressId.label', default: 'Bu Address Id')}" />
					
						<g:sortableColumn property="buPlId" title="${message(code: 'buildingInfo.buPlId.label', default: 'Bu Pl Id')}" />
					
						<g:sortableColumn property="buCode" title="${message(code: 'buildingInfo.buCode.label', default: 'Bu Code')}" />
					
						<g:sortableColumn property="buName" title="${message(code: 'buildingInfo.buName.label', default: 'Bu Name')}" />
					
						<g:sortableColumn property="buUseType" title="${message(code: 'buildingInfo.buUseType.label', default: 'Bu Use Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${buildingInfoInstanceList}" status="i" var="buildingInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${buildingInfoInstance.id}">${fieldValue(bean: buildingInfoInstance, field: "buId")}</g:link></td>
					
						<td>${fieldValue(bean: buildingInfoInstance, field: "buAddressId")}</td>
					
						<td>${fieldValue(bean: buildingInfoInstance, field: "buPlId")}</td>
					
						<td>${fieldValue(bean: buildingInfoInstance, field: "buCode")}</td>
					
						<td>${fieldValue(bean: buildingInfoInstance, field: "buName")}</td>
					
						<td>${fieldValue(bean: buildingInfoInstance, field: "buUseType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${buildingInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
