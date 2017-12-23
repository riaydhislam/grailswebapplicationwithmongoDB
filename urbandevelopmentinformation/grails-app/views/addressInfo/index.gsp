
<%@ page import="urbandevelopmentinformation.AddressInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'addressInfo.label', default: 'AddressInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-addressInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-addressInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="adId" title="${message(code: 'addressInfo.adId.label', default: 'Ad Id')}" />
						<g:sortableColumn property="adFirstName" title="${message(code: 'addressInfo.adFirstName.label', default: 'Ad First Name')}" />				
						<g:sortableColumn property="adMiddleName" title="${message(code: 'addressInfo.adMiddleName.label', default: 'Ad Middle Name')}" />
						<g:sortableColumn property="adLastName" title="${message(code: 'addressInfo.adLastName.label', default: 'Ad Last Name')}" />
						<g:sortableColumn property="adBirthDate" title="${message(code: 'addressInfo.adBirthDate.label', default: 'Ad Birth Date')}" />
						<g:sortableColumn property="adBirthCertificateNumber" title="${message(code: 'addressInfo.adBirthCertificateNumber.label', default: 'Ad Birth Certificate Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${addressInfoInstanceList}" status="i" var="addressInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: addressInfoInstance, field: "adId")}</td>
					
						<td>${fieldValue(bean: addressInfoInstance, field: "adFirstName")}</td>
					
						<td>${fieldValue(bean: addressInfoInstance, field: "adMiddleName")}</td>
					
						<td>${fieldValue(bean: addressInfoInstance, field: "adLastName")}</td>
					
						<td><g:formatDate date="${addressInfoInstance.adBirthDate}" /></td>
					
						<td>${fieldValue(bean: addressInfoInstance, field: "adBirthCertificateNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${addressInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
