
<%@ page import="urbandevelopmentinformation.PlotInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plotInfo.label', default: 'PlotInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-plotInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="create" action="create"><g:message code="plot.create.label"/></g:link></li>
				 <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
				 <li> 
 <g:link controller="userRegistration" action="index4" > <g:message code="back.to.form.label"/></g:link></li>

			</ul>
		</div>
			

			
			
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="plotSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
<g:link controller="Webmaps" action="createVectorLayer" name="createVectorLayer"><input type="button" value="<g:message code="show.map.label"/>"></g:link>
</g:form>

</fieldset>

 
  <div id="list-plotInfo" class="content scaffold-list" role="main">
<h1><g:message code="default.list.label" args="[entityName]" /></h1>
  
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
			<table>
			<thead>
					<tr>

						<g:sortableColumn property="plId" title="${message(code: 'plId.label')}" />
						<g:sortableColumn property="plType" title="${message(code: 'type.label')}" />
						<g:sortableColumn property="plMonzaNumber" title="${message(code: 'plotInfo.plMonzaNumber.label')}" />
						<g:sortableColumn property="plCSNumber" title="${message(code: 'plotInfo.plCSNumber.label')}" />
						<g:sortableColumn property="plMSNumber" title="${message(code: 'plotInfo.plMSNumber.label')}" />
						<g:sortableColumn property="plTotalArea" title="${message(code: 'plotInfo.plTotalArea.label')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${plotInfoInstanceList}" status="i" var="plotInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					<td><g:link action="show" id="${plotInfoInstance.id}">${fieldValue(bean: plotInfoInstance, field: "plId")}</g:link></td>
						<td>${fieldValue(bean: plotInfoInstance, field: "plType")}</td>
						<td>${fieldValue(bean: plotInfoInstance, field: "plMonzaNumber")}</td>
						<td>${fieldValue(bean: plotInfoInstance, field: "plCSNumber")}</td>
						<td>${fieldValue(bean: plotInfoInstance, field: "plMSNumber")}</td>
						<td>${fieldValue(bean: plotInfoInstance, field: "plTotalArea")}</td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
			  <g:paginate total="${plotInfoInstanceCount?: 0}"/>
				
			</div>
		</div>
	</body>
</html>
