
<%@ page import="urbandevelopmentinformation.UnitInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfoPaymentInfo.label', default: 'UnitInfoPaymentInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-unitInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-unitInfoPaymentInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="paUnId" title="${message(code: 'unId.label')}" />
					
						<g:sortableColumn property="paId" title="${message(code: 'unitInfoPaymentInfo.paId.label', default: 'Pa Id')}" />
					
						<g:sortableColumn property="paBiId" title="${message(code: 'unitInfoPaymentInfo.paBiId.label', default: 'Pa Bi Id')}" />
					
						<g:sortableColumn property="paCreaterAddressId" title="${message(code: 'unitInfoPaymentInfo.paCreaterAddressId.label', default: 'Pa Creater Address Id')}" />
					
						<g:sortableColumn property="paCreaterName" title="${message(code: 'unitInfoPaymentInfo.paCreaterName.label', default: 'Pa Creater Name')}" />
					
						<g:sortableColumn property="pyCreaterAuthority" title="${message(code: 'unitInfoPaymentInfo.pyCreaterAuthority.label', default: 'Py Creater Authority')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${unitInfoPaymentInfoInstanceList}" status="i" var="unitInfoPaymentInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${unitInfoPaymentInfoInstance.id}">${fieldValue(bean: unitInfoPaymentInfoInstance, field: "paUnId")}</g:link></td>
					
						<td>${fieldValue(bean: unitInfoPaymentInfoInstance, field: "paId")}</td>
					
						<td>${fieldValue(bean: unitInfoPaymentInfoInstance, field: "paBiId")}</td>
					
						<td>${fieldValue(bean: unitInfoPaymentInfoInstance, field: "paCreaterAddressId")}</td>
					
						<td>${fieldValue(bean: unitInfoPaymentInfoInstance, field: "paCreaterName")}</td>
					
						<td>${fieldValue(bean: unitInfoPaymentInfoInstance, field: "pyCreaterAuthority")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${unitInfoPaymentInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
