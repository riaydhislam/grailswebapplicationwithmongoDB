
<%@ page import="urbandevelopmentinformation.FloorInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-floorInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-floorInfoPaymentInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="paFlId" title="${message(code: 'paFlId.label')}" />
					
						<g:sortableColumn property="paId" title="${message(code: 'floorInfoPaymentInfo.paId.label', default: 'Pa Id')}" />
					
						<g:sortableColumn property="paBiId" title="${message(code: 'floorInfoPaymentInfo.paBiId.label', default: 'Pa Bi Id')}" />
					
						<g:sortableColumn property="paCreaterAddressId" title="${message(code: 'floorInfoPaymentInfo.paCreaterAddressId.label', default: 'Pa Creater Address Id')}" />
					
						<g:sortableColumn property="paCreaterName" title="${message(code: 'floorInfoPaymentInfo.paCreaterName.label', default: 'Pa Creater Name')}" />
					
						<g:sortableColumn property="pyCreaterAuthority" title="${message(code: 'floorInfoPaymentInfo.pyCreaterAuthority.label', default: 'Py Creater Authority')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${floorInfoPaymentInfoInstanceList}" status="i" var="floorInfoPaymentInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${floorInfoPaymentInfoInstance.id}">${fieldValue(bean: floorInfoPaymentInfoInstance, field: "paFlId")}</g:link></td>
					
						<td>${fieldValue(bean: floorInfoPaymentInfoInstance, field: "paId")}</td>
					
						<td>${fieldValue(bean: floorInfoPaymentInfoInstance, field: "paBiId")}</td>
					
						<td>${fieldValue(bean: floorInfoPaymentInfoInstance, field: "paCreaterAddressId")}</td>
					
						<td>${fieldValue(bean: floorInfoPaymentInfoInstance, field: "paCreaterName")}</td>
					
						<td>${fieldValue(bean: floorInfoPaymentInfoInstance, field: "pyCreaterAuthority")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${floorInfoPaymentInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
