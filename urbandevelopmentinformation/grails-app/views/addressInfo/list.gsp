
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
			  
				<li><g:link class="create" action="create"><g:message code="address.create.label" args="[entityName]" /></g:link></li>
				
				  <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a>
				<%--  <li> <g:link controller="userRegistration" action="index4" > <g:message code="back.to.form.label"/></g:link></li> --%>
				
			</ul>
		</div>
		
		<g:if test="${flash.message}">
<div class="message" role="status">${flash.message}</div>
</g:if>

<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="addressSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
<g:link controller="Webmaps" action="createVectorLayer" name="createVectorLayer"><input type="button" value="<g:message code="show.map.label"/>"></g:link>
</g:form>
</fieldset>
    <div id="list-addressInfo" class="content scaffold-list" role="main">
   <h1><g:message code="address.list.label"/>: ${addressInfoInstanceCount}</h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
	
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="adId" title="${message(code: 'addressInfo.adId.label')}" />
						<g:sortableColumn property="adalId" title="${message(code: 'alId.label')}" />
						<g:sortableColumn property="adFirstName" title="${message(code: 'addressInfo.adFirstName.label')}" />
						<g:sortableColumn property="adMiddleName" title="${message(code: 'addressInfo.adMiddleName.label')}" />
						<g:sortableColumn property="adLastName" title="${message(code: 'addressInfo.adLastName.label')}" />
						<g:sortableColumn property="adNationalIdNumber" title="${message(code: 'addressInfo.adNationalIdNumber.label')}" />
						
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${addressInfos}" status="i" var="addressInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${addressInfoInstance.id}">${fieldValue(bean: addressInfoInstance, field: "adId")}</g:link></td>
						<td>${fieldValue(bean: addressInfoInstance, field: "adalId")}</td>
						<td>${fieldValue(bean: addressInfoInstance, field: "adFirstName")}</td>
						<td>${fieldValue(bean: addressInfoInstance, field: "adMiddleName")}</td>
						<td>${fieldValue(bean: addressInfoInstance, field: "adLastName")}</td>
						<td>${fieldValue(bean: addressInfoInstance, field: "adNationalIdNumber")}</td>
						
						
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
