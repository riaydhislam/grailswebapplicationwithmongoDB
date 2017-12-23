
<%@ page import="urbandevelopmentinformation.BuildingInfoOwnershipInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buildingInfoOwnershipInfo.label', default: 'BuildingInfoOwnershipInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-buildingInfoOwnershipInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-buildingInfoOwnershipInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="owId" title="${message(code: 'Id.label', default: 'Ow Id')}" />
					
						<g:sortableColumn property="owAddressId" title="${message(code: 'AddressId.label', default: 'Ow Address Id')}" />
					
						<g:sortableColumn property="owFullName" title="${message(code: 'FullName.label', default: 'Ow Full Name')}" />
					
						<g:sortableColumn property="owType" title="${message(code: 'Type.label', default: 'Ow Type')}" />
					
						<g:sortableColumn property="owAppliedDate" title="${message(code: 'AppliedDate.label', default: 'Ow Applied Date')}" />
					
						<g:sortableColumn property="owLastModifiedDate" title="${message(code: 'LastModifiedDate.label', default: 'Ow Last Modified Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${buildingInfoOwnershipInfoInstanceList}" status="i" var="buildingInfoOwnershipInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${buildingInfoOwnershipInfoInstance.id}">${fieldValue(bean: buildingInfoOwnershipInfoInstance, field: "owId")}</g:link></td>
					
						<td>${fieldValue(bean: buildingInfoOwnershipInfoInstance, field: "owAddressId")}</td>
					
						<td>${fieldValue(bean: buildingInfoOwnershipInfoInstance, field: "owFullName")}</td>
					
						<td>${fieldValue(bean: buildingInfoOwnershipInfoInstance, field: "owType")}</td>
					
						<td><g:formatDate date="${buildingInfoOwnershipInfoInstance.owAppliedDate}" /></td>
					
						<td><g:formatDate date="${buildingInfoOwnershipInfoInstance.owLastModifiedDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${buildingInfoOwnershipInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
