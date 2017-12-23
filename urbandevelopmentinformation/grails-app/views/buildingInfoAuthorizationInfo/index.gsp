
<%@ page import="urbandevelopmentinformation.BuildingInfoAuthorizationInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buildingInfoAuthorizationInfo.label', default: 'BuildingInfoAuthorizationInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-buildingInfoAuthorizationInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-buildingInfoAuthorizationInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="auId" title="${message(code: 'auId.label')}" />
					
						<g:sortableColumn property="auAddressId" title="${message(code: 'auAddressId.label', default: 'Au Address Id')}" />
					
						<g:sortableColumn property="auAppliedDate" title="${message(code: 'auAppliedDate.label', default: 'Au Applied Date')}" />
					
						<g:sortableColumn property="auApprovalDate" title="${message(code: 'auApprovalDate.label', default: 'Au Approval Date')}" />
					
						<g:sortableColumn property="auPublishDate" title="${message(code: 'auPublishDate.label', default: 'Au Publish Date')}" />
					
						<g:sortableColumn property="auCode" title="${message(code: 'auCode.label', default: 'Au Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${buildingInfoAuthorizationInfoInstanceList}" status="i" var="buildingInfoAuthorizationInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${buildingInfoAuthorizationInfoInstance.id}">${fieldValue(bean: buildingInfoAuthorizationInfoInstance, field: "auId")}</g:link></td>
					
						<td>${fieldValue(bean: buildingInfoAuthorizationInfoInstance, field: "auAddressId")}</td>
					
						<td><g:formatDate date="${buildingInfoAuthorizationInfoInstance.auAppliedDate}" /></td>
					
						<td><g:formatDate date="${buildingInfoAuthorizationInfoInstance.auApprovalDate}" /></td>
					
						<td><g:formatDate date="${buildingInfoAuthorizationInfoInstance.auPublishDate}" /></td>
					
						<td>${fieldValue(bean: buildingInfoAuthorizationInfoInstance, field: "auCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${buildingInfoAuthorizationInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
