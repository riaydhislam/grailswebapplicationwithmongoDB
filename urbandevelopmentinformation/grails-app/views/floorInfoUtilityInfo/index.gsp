
<%@ page import="urbandevelopmentinformation.FloorInfoUtilityInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoUtilityInfo.label', default: 'FloorInfoUtilityInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-floorInfoUtilityInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-floorInfoUtilityInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="utId" title="${message(code: 'floorInfoUtilityInfo.utId.label', default: 'Ut Id')}" />
					
						<g:sortableColumn property="utCreaterAddressId" title="${message(code: 'floorInfoUtilityInfo.utCreaterAddressId.label', default: 'Ut Creater Address Id')}" />
					
						<g:sortableColumn property="utCreaterName" title="${message(code: 'floorInfoUtilityInfo.utCreaterName.label', default: 'Ut Creater Name')}" />
					
						<g:sortableColumn property="utCreaterAuthority" title="${message(code: 'floorInfoUtilityInfo.utCreaterAuthority.label', default: 'Ut Creater Authority')}" />
					
						<g:sortableColumn property="utCreateDate" title="${message(code: 'floorInfoUtilityInfo.utCreateDate.label', default: 'Ut Create Date')}" />
					
						<g:sortableColumn property="utLastModifiedDate" title="${message(code: 'floorInfoUtilityInfo.utLastModifiedDate.label', default: 'Ut Last Modified Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${floorInfoUtilityInfoInstanceList}" status="i" var="floorInfoUtilityInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${floorInfoUtilityInfoInstance.id}">${fieldValue(bean: floorInfoUtilityInfoInstance, field: "utId")}</g:link></td>
					
						<td>${fieldValue(bean: floorInfoUtilityInfoInstance, field: "utCreaterAddressId")}</td>
					
						<td>${fieldValue(bean: floorInfoUtilityInfoInstance, field: "utCreaterName")}</td>
					
						<td>${fieldValue(bean: floorInfoUtilityInfoInstance, field: "utCreaterAuthority")}</td>
					
						<td><g:formatDate date="${floorInfoUtilityInfoInstance.utCreateDate}" /></td>
					
						<td><g:formatDate date="${floorInfoUtilityInfoInstance.utLastModifiedDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${floorInfoUtilityInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
