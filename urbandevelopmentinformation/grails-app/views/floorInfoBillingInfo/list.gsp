
<%@ page import="urbandevelopmentinformation.FloorInfoBillingInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoBillingInfo', default: 'floorInfoBillingInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-floorInfoBillingInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				 <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
			</ul>
		</div>
		
			<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="floorInfoBillingSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 

      <div id="list-floorInfoBillingInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
      
      
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="biId" title="${message(code:'biId.label')}" />
					
						<g:sortableColumn property="biFlId" title="${message(code:'flId.label')}" />
					
						<g:sortableColumn property="biCreaterAddressId" title="${message(code:'addressId.label')}" />
					
						
						
						<g:sortableColumn property="biCreaterAuthority" title="${message(code:'createrAuthority.label')}" />
						
						<g:sortableColumn property="biReferenceNumber" title="${message(code:'referenceNumber.label')}" />
					
						<g:sortableColumn property="biCreaterName" title="${message(code:'createrName.label')}" />
					
						
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${floorInfoBillingInfoList}" status="i" var="floorInfoBillingInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						
						<td><g:link action="show" id="${floorInfoBillingInfoInstance.id}">${fieldValue(bean: floorInfoBillingInfoInstance, field: "biId")}</g:link></td>
						
					    <td>${fieldValue(bean: floorInfoBillingInfoInstance, field: "biFlId")}</td>
					
						<td>${fieldValue(bean: floorInfoBillingInfoInstance, field: "biCreaterAddressId")}</td>
						
						<td>${fieldValue(bean: floorInfoBillingInfoInstance, field: "biCreaterAuthority")}</td>
						
						<td>${fieldValue(bean: floorInfoBillingInfoInstance, field: "biReferenceNumber")}</td>
						
						<td>${fieldValue(bean: floorInfoBillingInfoInstance, field: "biCreaterName")}</td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${floorInfoBillingInfoListTotal?: 0}" />
			</div>
		</div>
	</body>
</html>
