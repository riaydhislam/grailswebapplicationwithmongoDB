<%@ page import="urbandevelopmentinformation.BuildingInfo" %>
<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'buildingInfo.label', default: 'BuildingInfo')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
 </head>
 <body>
  <a href="#list-buildingInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
   <ul>
   
    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
   </ul>
  </div>
  <div id="list-buildingInfo" class="content scaffold-list" role="main">
   <h1><g:message code="default.list.label" args="[entityName]" /></h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
   
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="buildingSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset>

   <table>
   <thead>
     <tr>
     

      <g:sortableColumn property="buId" title="${message(code: 'buId.label')}" />
      <g:sortableColumn property="buPlId" title="${message(code: 'plId.label')}" />
      <g:sortableColumn property="buUseType" title="${message(code: 'type.label')}" />
      <g:sortableColumn property="buNumberOfFloor" title="${message(code: 'buildingInfo.buNumberOfFloor.label')}" />
      <g:sortableColumn property="buTotalGroundArea" title="${message(code: 'buildingInfo.buTotalGroundArea.label')}" />
      <g:sortableColumn property="buTotalFloorArea" title="${message(code: 'buildingInfo.buTotalFloorArea.label')}" />
      <g:sortableColumn property="buTotalHeight" title="${message(code: 'buildingInfo.buTotalHeight.label')}" />
     
     </tr>
    </thead>
    <tbody>
    <g:each in="${buildingInfoInstanceList}" status="i" var="buildingInfoInstance">
     <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
     
      <td><g:link action="show" id="${buildingInfoInstance.id}">${fieldValue(bean: buildingInfoInstance, field: "buId")}</g:link></td>
      
      <td>${fieldValue(bean: buildingInfoInstance, field: "buPlId")}</td> 
      <td>${fieldValue(bean: buildingInfoInstance, field: "buUseType")}</td>     
      <td>${fieldValue(bean: buildingInfoInstance, field: "buNumberOfFloor")}</td>
      <td>${fieldValue(bean: buildingInfoInstance, field: "buTotalGroundArea")}</td>
      <td>${fieldValue(bean: buildingInfoInstance, field: "buTotalFloorArea")}</td>
      <td>${fieldValue(bean: buildingInfoInstance, field: "buTotalHeight")}</td>
     
     </tr>
    </g:each>
    </tbody>
   </table>
   <div class="pagination">
    <g:paginate total="${buildingInfoInstanceCount ?: 0}" />
   </div>
  </div>
 </body>
</html>