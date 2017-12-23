
<%@ page import="urbandevelopmentinformation.BuildingInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buildingInfoPaymentInfo.label', default: 'BuildingInfoPaymentInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-buildingInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-buildingInfoPaymentInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="paBuId" title="${message(code: 'buId.label')}" />
					
						<g:sortableColumn property="paId" title="${message(code: 'paId.label')}" />
					
						<g:sortableColumn property="paBiId" title="${message(code: 'paBiId.label')}" />
					
						<g:sortableColumn property="paCreaterAddressId" title="${message(code: 'addressId.label')}" />
					
						<g:sortableColumn property="paCreaterName" title="${message(code: 'createrName.label')}" />
					
						<g:sortableColumn property="pyCreaterAuthority" title="${message(code: 'createrAuthority.label')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${buildingInfoPaymentInfoInstanceList}" status="i" var="buildingInfoPaymentInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${buildingInfoPaymentInfoInstance.id}">${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "paPlId")}</g:link></td>
					
						<td>${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "paId")}</td>
					
						<td>${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "paBiId")}</td>
					
						<td>${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "paCreaterAddressId")}</td>
					
						<td>${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "paCreaterName")}</td>
					
						<td>${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "pyCreaterAuthority")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${buildingInfoPaymentInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
