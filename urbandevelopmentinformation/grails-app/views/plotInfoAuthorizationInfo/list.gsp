
<%@ page import="urbandevelopmentinformation.PlotInfoAuthorizationInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plotInfoAuthorizationInfo', default: 'plotInfoAuthorizationInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-plotInfoAuthorizationInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				 <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
				 <li><g:link controller="userRegistration" action="index4" > <g:message code="back.to.form.label"/></g:link></li>
			</ul>
		</div>
		
			<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="plotInfoAuthorizationSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 

<div id="list-plotInfoAuthorizationInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="auId" title="${message(code:'auId.label')}" />
					
						<g:sortableColumn property="auPlId" title="${message(code:'plId.label')}" />
					
						<g:sortableColumn property="auAddressId" title="${message(code:'addressId.label')}" />
					
						
						
						<g:sortableColumn property="auName" title="${message(code:'Name.label')}" />
						
						<g:sortableColumn property="auType" title="${message(code:'type.label')}" />
					
						<g:sortableColumn property="auNumber" title="${message(code:'Number.label')}" />
					
						
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${plotInfoAuthorizationInfoList}" status="i" var="plotInfoAuthorizationInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						
						<td><g:link action="show" id="${plotInfoAuthorizationInfoInstance.id}">${fieldValue(bean: plotInfoAuthorizationInfoInstance, field: "auId")}</g:link></td>
						
					    <td>${fieldValue(bean: plotInfoAuthorizationInfoInstance, field: "auPlId")}</td>
					
						<td>${fieldValue(bean: plotInfoAuthorizationInfoInstance, field: "auAddressId")}</td>
						
						<td>${fieldValue(bean: plotInfoAuthorizationInfoInstance, field: "auName")}</td>
						
						<td>${fieldValue(bean: plotInfoAuthorizationInfoInstance, field: "auType")}</td>
						
						<td>${fieldValue(bean: plotInfoAuthorizationInfoInstance, field: "auNumber")}</td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${plotInfoAuthorizationInfoListTotal?: 0}" />
			</div>
		</div>
	</body>
</html>
