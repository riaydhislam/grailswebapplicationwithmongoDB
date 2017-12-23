
<%@ page import="urbandevelopmentinformation.UnitInfoUtilityInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfoUtilityInfo', default: 'UnitInfoUtilityInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-unitInfoUtilityInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				 <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
			</ul>
		</div>
	
			<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="unitInfoUtilitySearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 


	<div id="list-unitInfoUtilityInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="utId" title="${message(code:'utId.label')}" />
					
						<g:sortableColumn property="utUnId" title="${message(code:'unId.label')}" />
					
						<g:sortableColumn property="utCreaterAddressId" title="${message(code:'addressId.label')}" />
					
						<g:sortableColumn property="utType" title="${message(code:'type.label')}" />
						
						<g:sortableColumn property="utCreaterAuthority" title="${message(code:'createrAuthority.label')}" />
					
						<g:sortableColumn property="utCreaterName" title="${message(code:'createrName.label')}" />
					
						
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${unitInfoUtilityInfoList}" status="i" var="unitInfoUtilityInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						
						<td><g:link action="show" id="${unitInfoUtilityInfoInstance.id}">${fieldValue(bean: unitInfoUtilityInfoInstance, field: "utId")}</g:link></td>
						
					    <td>${fieldValue(bean: unitInfoUtilityInfoInstance, field: "utUnId")}</td>
					
						<td>${fieldValue(bean: unitInfoUtilityInfoInstance, field: "utCreaterAddressId")}</td>
						
						<td>${fieldValue(bean: unitInfoUtilityInfoInstance, field: "utType")}</td>
						
						
					
					
						<td>${fieldValue(bean: unitInfoUtilityInfoInstance, field: "utCreaterAuthority")}</td>
						
						<td>${fieldValue(bean: unitInfoUtilityInfoInstance, field: "utCreaterName")}</td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${unitInfoUtilityInfoListTotal?: 0}" />
			</div>
		</div>
	</body>
</html>
