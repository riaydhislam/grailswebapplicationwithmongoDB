
<%@ page import="urbandevelopmentinformation.FloorInfoUtilityInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoUtilityInfo.label', default: 'floorInfoUtilityInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-floorInfoUtilityInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				 <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
			</ul>
		</div>
		
			<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="floorInfoUtilitySearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 


    <div id="list-floorInfoUtilityInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="utId" title="${message(code:'utId.label')}" />
					
						<g:sortableColumn property="utFlId" title="${message(code:'flId.label')}" />
					
						<g:sortableColumn property="utCreaterAddressId" title="${message(code:'addressId.label')}" />
					
						<g:sortableColumn property="utType" title="${message(code:'type.label')}" />
						
						<g:sortableColumn property="utCreaterAuthority" title="${message(code:'createrAuthority.label')}" />
					
						<g:sortableColumn property="utCreaterName" title="${message(code:'createrName.label')}" />
					
						
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${floorInfoUtilityInfoList}" status="i" var="floorInfoUtilityInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						
						<td><g:link action="show" id="${floorInfoUtilityInfoInstance.id}">${fieldValue(bean: floorInfoUtilityInfoInstance, field: "utId")}</g:link></td>
						
					    <td>${fieldValue(bean: floorInfoUtilityInfoInstance, field: "utFlId")}</td>
					
						<td>${fieldValue(bean: floorInfoUtilityInfoInstance, field: "utCreaterAddressId")}</td>
						
						<td>${fieldValue(bean: floorInfoUtilityInfoInstance, field: "utType")}</td>
						
						
					
					
						<td>${fieldValue(bean: floorInfoUtilityInfoInstance, field: "utCreaterAuthority")}</td>
						
						<td>${fieldValue(bean: floorInfoUtilityInfoInstance, field: "utCreaterName")}</td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${floorInfoUtilityInfoListTotal?: 0}" />
			</div>
		</div>
	</body>
</html>
