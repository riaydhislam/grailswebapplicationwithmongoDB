
<%@ page import="urbandevelopmentinformation.UnitInfoUtilityInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-unitInfoUtilityInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-unitInfoUtilityInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="utId" title="${message(code: 'unitInfoUtilityInfo.utId.label', default: 'Ut Id')}" />
					
						<g:sortableColumn property="utCreaterAddressId" title="${message(code: 'unitInfoUtilityInfo.utCreaterAddressId.label', default: 'Ut Creater Address Id')}" />
					
						<g:sortableColumn property="utCreaterName" title="${message(code: 'unitInfoUtilityInfo.utCreaterName.label', default: 'Ut Creater Name')}" />
					
						<g:sortableColumn property="utCreaterAuthority" title="${message(code: 'unitInfoUtilityInfo.utCreaterAuthority.label', default: 'Ut Creater Authority')}" />
					
						<g:sortableColumn property="utCreateDate" title="${message(code: 'unitInfoUtilityInfo.utCreateDate.label', default: 'Ut Create Date')}" />
					
						<g:sortableColumn property="utLastModifiedDate" title="${message(code: 'unitInfoUtilityInfo.utLastModifiedDate.label', default: 'Ut Last Modified Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${unitInfoUtilityInfoInstanceList}" status="i" var="unitInfoUtilityInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${unitInfoUtilityInfoInstance.id}">${fieldValue(bean: unitInfoUtilityInfoInstance, field: "utId")}</g:link></td>
					
						<td>${fieldValue(bean: unitInfoUtilityInfoInstance, field: "utCreaterAddressId")}</td>
					
						<td>${fieldValue(bean: unitInfoUtilityInfoInstance, field: "utCreaterName")}</td>
					
						<td>${fieldValue(bean: unitInfoUtilityInfoInstance, field: "utCreaterAuthority")}</td>
					
						<td><g:formatDate date="${unitInfoUtilityInfoInstance.utCreateDate}" /></td>
					
						<td><g:formatDate date="${unitInfoUtilityInfoInstance.utLastModifiedDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${unitInfoUtilityInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
