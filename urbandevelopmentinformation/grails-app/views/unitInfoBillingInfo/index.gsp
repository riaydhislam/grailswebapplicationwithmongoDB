
<%@ page import="urbandevelopmentinformation.UnitInfoBillingInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfoBillingInfo.label', default: 'UnitInfoBillingInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-unitInfoBillingInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-unitInfoBillingInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="biId" title="${message(code: 'unitInfoBillingInfo.biId.label', default: 'Bi Id')}" />
					
						<g:sortableColumn property="biCreaterAddressId" title="${message(code: 'unitInfoBillingInfo.biCreaterAddressId.label', default: 'Bi Creater Address Id')}" />
					
						<g:sortableColumn property="biCreaterName" title="${message(code: 'unitInfoBillingInfo.biCreaterName.label', default: 'Bi Creater Name')}" />
					
						<g:sortableColumn property="biCreaterAuthority" title="${message(code: 'unitInfoBillingInfo.biCreaterAuthority.label', default: 'Bi Creater Authority')}" />
					
						<g:sortableColumn property="biCreateDate" title="${message(code: 'unitInfoBillingInfo.biCreateDate.label', default: 'Bi Create Date')}" />
					
						<g:sortableColumn property="biPayDateUntil" title="${message(code: 'unitInfoBillingInfo.biPayDateUntil.label', default: 'Bi Pay Date Until')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${unitInfoBillingInfoInstanceList}" status="i" var="unitInfoBillingInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${unitInfoBillingInfoInstance.id}">${fieldValue(bean: unitInfoBillingInfoInstance, field: "biId")}</g:link></td>
					
						<td>${fieldValue(bean: unitInfoBillingInfoInstance, field: "biCreaterAddressId")}</td>
					
						<td>${fieldValue(bean: unitInfoBillingInfoInstance, field: "biCreaterName")}</td>
					
						<td>${fieldValue(bean: unitInfoBillingInfoInstance, field: "biCreaterAuthority")}</td>
					
						<td><g:formatDate date="${unitInfoBillingInfoInstance.biCreateDate}" /></td>
					
						<td><g:formatDate date="${unitInfoBillingInfoInstance.biPayDateUntil}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${unitInfoBillingInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
