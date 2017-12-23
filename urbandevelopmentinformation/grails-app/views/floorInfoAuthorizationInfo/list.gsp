
<%@ page import="urbandevelopmentinformation.FloorInfoAuthorizationInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoAuthorizationInfo', default: 'FloorInfoAuthorizationInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-floorInfoAuthorizationInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				 <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
			</ul>
		</div>
		
			<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="floorInfoAuthorizationSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 

   <div id="list-floorInfoAuthorizationInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="auId" title="${message(code:'auId.label')}" />
					
						<g:sortableColumn property="auFlId" title="${message(code:'flId.label')}" />
					
						<g:sortableColumn property="auAddressId" title="${message(code:'addressId.label')}" />
					
						
						
						<g:sortableColumn property="auName" title="${message(code:'Name.label')}" />
						
						<g:sortableColumn property="auType" title="${message(code:'type.label')}" />
					
						<g:sortableColumn property="auNumber" title="${message(code:'Number.label')}" />
					
						
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${floorInfoAuthorizationInfoList}" status="i" var="floorInfoAuthorizationInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						
						<td><g:link action="show" id="${floorInfoAuthorizationInfoInstance.id}">${fieldValue(bean: floorInfoAuthorizationInfoInstance, field: "auId")}</g:link></td>
						
					    <td>${fieldValue(bean: floorInfoAuthorizationInfoInstance, field: "auFlId")}</td>
					
						<td>${fieldValue(bean: floorInfoAuthorizationInfoInstance, field: "auAddressId")}</td>
						
						<td>${fieldValue(bean: floorInfoAuthorizationInfoInstance, field: "auName")}</td>
						
						<td>${fieldValue(bean: floorInfoAuthorizationInfoInstance, field: "auType")}</td>
						
						<td>${fieldValue(bean: floorInfoAuthorizationInfoInstance, field: "auNumber")}</td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${floorInfoAuthorizationInfoListTotal?: 0}" />
			</div>
		</div>
	</body>
</html>
