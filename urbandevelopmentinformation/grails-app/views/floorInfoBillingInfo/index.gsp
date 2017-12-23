
<%@ page import="urbandevelopmentinformation.FloorInfoBillingInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoBillingInfo.label', default: 'FloorInfoBillingInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-floorInfoBillingInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-floorInfoBillingInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="biId" title="${message(code: 'floorInfoBillingInfo.biId.label', default: 'Bi Id')}" />
					
						<g:sortableColumn property="biCreaterAddressId" title="${message(code: 'floorInfoBillingInfo.biCreaterAddressId.label', default: 'Bi Creater Address Id')}" />
					
						<g:sortableColumn property="biCreaterName" title="${message(code: 'floorInfoBillingInfo.biCreaterName.label', default: 'Bi Creater Name')}" />
					
						<g:sortableColumn property="biCreaterAuthority" title="${message(code: 'floorInfoBillingInfo.biCreaterAuthority.label', default: 'Bi Creater Authority')}" />
					
						<g:sortableColumn property="biCreateDate" title="${message(code: 'floorInfoBillingInfo.biCreateDate.label', default: 'Bi Create Date')}" />
					
						<g:sortableColumn property="biPayDateUntil" title="${message(code: 'floorInfoBillingInfo.biPayDateUntil.label', default: 'Bi Pay Date Until')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${floorInfoBillingInfoInstanceList}" status="i" var="floorInfoBillingInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${floorInfoBillingInfoInstance.id}">${fieldValue(bean: floorInfoBillingInfoInstance, field: "biId")}</g:link></td>
					
						<td>${fieldValue(bean: floorInfoBillingInfoInstance, field: "biCreaterAddressId")}</td>
					
						<td>${fieldValue(bean: floorInfoBillingInfoInstance, field: "biCreaterName")}</td>
					
						<td>${fieldValue(bean: floorInfoBillingInfoInstance, field: "biCreaterAuthority")}</td>
					
						<td><g:formatDate date="${floorInfoBillingInfoInstance.biCreateDate}" /></td>
					
						<td><g:formatDate date="${floorInfoBillingInfoInstance.biPayDateUntil}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${floorInfoBillingInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
