
<%@ page import="urbandevelopmentinformation.UnitInfoAuthorizationInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfoAuthorizationInfo', default: 'unitInfoAuthorizationInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-unitInfoAuthorizationInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				 <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
			</ul>
		</div>
		
			<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="unitInfoAuthorizationSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 

    <div id="list-unitInfoAuthorizationInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="auId" title="${message(code:'auId.label')}" />
					
						<g:sortableColumn property="auUnId" title="${message(code:'unId.label')}" />
					
						<g:sortableColumn property="auAddressId" title="${message(code:'addressId.label')}" />
					
						
						
						<g:sortableColumn property="auName" title="${message(code:'Name.label')}" />
						
						<g:sortableColumn property="auType" title="${message(code:'type.label')}" />
					
						<g:sortableColumn property="auNumber" title="${message(code:'Number.label')}" />
					
						
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${unitInfoAuthorizationInfoList}" status="i" var="unitInfoAuthorizationInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						
						<td><g:link action="show" id="${unitInfoAuthorizationInfoInstance.id}">${fieldValue(bean: unitInfoAuthorizationInfoInstance, field: "auId")}</g:link></td>
						
					    <td>${fieldValue(bean: unitInfoAuthorizationInfoInstance, field: "auUnId")}</td>
					
						<td>${fieldValue(bean: unitInfoAuthorizationInfoInstance, field: "auAddressId")}</td>
						
						<td>${fieldValue(bean: unitInfoAuthorizationInfoInstance, field: "auName")}</td>
						
						<td>${fieldValue(bean: unitInfoAuthorizationInfoInstance, field: "auType")}</td>
						
						<td>${fieldValue(bean: unitInfoAuthorizationInfoInstance, field: "auNumber")}</td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${unitInfoAuthorizationInfoListTotal?: 0}" />
			</div>
		</div>
	</body>
</html>
