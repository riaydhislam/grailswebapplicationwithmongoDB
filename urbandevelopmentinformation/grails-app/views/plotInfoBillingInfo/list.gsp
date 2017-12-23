vopkri
<%@ page import="urbandevelopmentinformation.PlotInfoBillingInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plotInfoBillingInfo', default: 'PlotInfoBillingInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-plotInfoBillingInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				 <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
				 <li><g:link controller="userRegistration" action="index4" > <g:message code="back.to.form.label"/></g:link></li>
			</ul>
		</div>
		
			<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="plotInfoBillingSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 
<div id="list-plotInfoBillingInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="biId" title="${message(code:'biId.label')}" />
					
						<g:sortableColumn property="biPlId" title="${message(code:'plId.label')}" />
					
						<g:sortableColumn property="biCreaterAddressId" title="${message(code:'addressId.label')}" />
						
						<g:sortableColumn property="biCreaterName" title="${message(code:'Name.label')}" />
						
						<g:sortableColumn property="biReferenceNumber" title="${message(code:'referenceNumber.label')}" />
					
						<g:sortableColumn property="biCreaterAuthority" title="${message(code:'createrAuthority.label')}" />
					
						
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${plotInfoBillingInfoList}" status="i" var="plotInfoBillingInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						
						<td><g:link action="show" id="${plotInfoBillingInfoInstance.id}">${fieldValue(bean: plotInfoBillingInfoInstance, field: "biId")}</g:link></td>
						
					    <td>${fieldValue(bean: plotInfoBillingInfoInstance, field: "biPlId")}</td>
					
						<td>${fieldValue(bean: plotInfoBillingInfoInstance, field: "biCreaterAddressId")}</td>
						
						<td>${fieldValue(bean: plotInfoBillingInfoInstance, field: "biCreaterName")}</td>
						
						<td>${fieldValue(bean: plotInfoBillingInfoInstance, field: "biReferenceNumber")}</td>
						
						<td>${fieldValue(bean: plotInfoBillingInfoInstance, field: "biCreaterAuthority")}</td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${plotInfoBillingInfoListTotal?: 0}" />
			</div>
		</div>
	</body>
</html>
