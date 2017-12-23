
<%@ page import="urbandevelopmentinformation.BuildingInfoUtilityInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buildingInfoUtilityInfo.label', default: 'BuildingInfoUtilityInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-buildingInfoUtilityInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-buildingInfoUtilityInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="utId" title="${message(code: 'buildingInfoUtilityInfo.utId.label', default: 'Ut Id')}" />
					
						<g:sortableColumn property="utCreaterAddressId" title="${message(code: 'buildingInfoUtilityInfo.utCreaterAddressId.label', default: 'Ut Creater Address Id')}" />
					
						<g:sortableColumn property="utCreaterName" title="${message(code: 'buildingInfoUtilityInfo.utCreaterName.label', default: 'Ut Creater Name')}" />
					
						<g:sortableColumn property="utCreaterAuthority" title="${message(code: 'buildingInfoUtilityInfo.utCreaterAuthority.label', default: 'Ut Creater Authority')}" />
					
						<g:sortableColumn property="utCreateDate" title="${message(code: 'buildingInfoUtilityInfo.utCreateDate.label', default: 'Ut Create Date')}" />
					
						<g:sortableColumn property="utLastModifiedDate" title="${message(code: 'buildingInfoUtilityInfo.utLastModifiedDate.label', default: 'Ut Last Modified Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${buildingInfoUtilityInfoInstanceList}" status="i" var="buildingInfoUtilityInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${buildingInfoUtilityInfoInstance.id}">${fieldValue(bean: buildingInfoUtilityInfoInstance, field: "utId")}</g:link></td>
					
						<td>${fieldValue(bean: buildingInfoUtilityInfoInstance, field: "utCreaterAddressId")}</td>
					
						<td>${fieldValue(bean: buildingInfoUtilityInfoInstance, field: "utCreaterName")}</td>
					
						<td>${fieldValue(bean: buildingInfoUtilityInfoInstance, field: "utCreaterAuthority")}</td>
					
						<td><g:formatDate date="${buildingInfoUtilityInfoInstance.utCreateDate}" /></td>
					
						<td><g:formatDate date="${buildingInfoUtilityInfoInstance.utLastModifiedDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${buildingInfoUtilityInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
