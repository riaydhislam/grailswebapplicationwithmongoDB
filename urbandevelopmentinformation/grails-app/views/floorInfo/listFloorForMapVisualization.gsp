
<%@ page import="urbandevelopmentinformation.FloorInfo" %>
<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'floorInfo.label', default: 'FloorInfo')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
 </head>
 <body>
  <a href="#list-floorInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
   <ul>
  
    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
     <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
   </ul>
  </div>
 
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="floorSearchForm"></g:render> 
<g:submitButton name="listFloorForMapVisualization" value="Search"/>
<g:link controller="Webmaps" action="createVectorLayer" name="createVectorLayer"><input type="button" value="<g:message code="show.map.label"/>"></g:link>
</g:form>
</fieldset>

     <div id="list-floorInfo" class="content scaffold-list" role="main">
   <h1><g:message code="default.list.label" args="[entityName]" /></h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
   

   <table>
   <thead>
     <tr>
     
      <g:sortableColumn property="flId" title="${message(code: 'flId.label')}" />
     
      <g:sortableColumn property="flBuId" title="${message(code: 'buId.label')}" />
     
      <g:sortableColumn property="flCode" title="${message(code: 'code.label')}" />
     
      <g:sortableColumn property="flName" title="${message(code: 'name.label')}" />
     
      <g:sortableColumn property="flUseType" title="${message(code: 'type.label')}" />
     
      <g:sortableColumn property="flNumberOfFloorUnit" title="${message(code: 'floorInfo.flNumberOfFloorUnit.label')}" />
     
     </tr>
    </thead>
    <tbody>
    <g:each in="${floorInfoInstanceList}" status="i" var="floorInfoInstance">
     <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
     
      <td><g:link action="show" id="${floorInfoInstance.id}">${fieldValue(bean: floorInfoInstance, field: "flId")}</g:link></td>
     
      <td>${fieldValue(bean: floorInfoInstance, field: "flBuId")}</td>
     
      <td>${fieldValue(bean: floorInfoInstance, field: "flCode")}</td>
     
      <td>${fieldValue(bean: floorInfoInstance, field: "flName")}</td>
     
      <td>${fieldValue(bean: floorInfoInstance, field: "flUseType")}</td>
     
      <td>${fieldValue(bean: floorInfoInstance, field: "flNumberOfFloorUnit")}</td>
     
     </tr>
    </g:each>
    </tbody>
   </table>
   <div class="pagination">
    <g:paginate total="${floorInfoInstanceCount ?: 0}" />
   </div>
  </div>
 </body>
</html>