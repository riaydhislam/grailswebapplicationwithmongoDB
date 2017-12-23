<%@ page import="urbandevelopmentinformation.BuildingInfoOwnershipInfo" %>
<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'buildingInfoOwnershipInfo.label', default: 'PlotInfoOwnershipInfo')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
 </head>
 <body>
  <a href="#list-buildingInfoOwnershipInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
   <ul>
    
    <li><g:link class="create" action="create"><g:message code="ownership.create.label"/></g:link></li>
     <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
   </ul>
  </div>
  
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="buildingInfoOwnershipSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 
   
   <div id="list-buildingInfoOwnershipInfo" class="content scaffold-list" role="main">
   <h1><g:message code="building.list.label"/>: ${buildingInfoOwnershipInfoListTotal}</h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
   
   <table>
   <thead>
     <tr>
     
      <g:sortableColumn property="owId" title="${message(code: 'owId.label')}" />
      <g:sortableColumn property="owBuId" title="${message(code: 'buId.label')}" />
      <g:sortableColumn property="owFullName" title="${message(code: 'fullName.label')}" />
      <g:sortableColumn property="owAppliedDate" title="${message(code: 'appliedDate.label')}" />
      <g:sortableColumn property="owLastModifiedDate" title="${message(code: 'lastModifiedDate.label')}" />
      <g:sortableColumn property="owApprovedDate" title="${message(code: 'approvedDate.label')}" />
     
     </tr>
    </thead>
    <tbody>
    <g:each in="${buildingInfoOwnershipInfoList}" status="i" var="buildingInfoOwnershipInfoInstance">
     <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
     
      <td><g:link action="show" id="${buildingInfoOwnershipInfoInstance.id}">${fieldValue(bean: buildingInfoOwnershipInfoInstance, field: "owId")}</g:link></td>
      <td>${fieldValue(bean: buildingInfoOwnershipInfoInstance, field: "owBuId")}</td>
      <td>${fieldValue(bean: buildingInfoOwnershipInfoInstance, field: "owFullName")}</td>
      <td><g:formatDate date="${buildingInfoOwnershipInfoInstance.owAppliedDate}" type="date" style="SHORT"/></td>
    
      <td><g:formatDate date="${buildingInfoOwnershipInfoInstance.owLastModifiedDate}" type="date" style="SHORT"/></td>
      <td><g:formatDate date="${buildingInfoOwnershipInfoInstance.owApprovedDate}" type="date" style="SHORT"/></td>
     
     </tr>
    </g:each>
    </tbody>
   </table>
  
  </div>
  
  <g:paginate controller="buildingInfoOwnershipInfo" action="list" total="${buildingInfoOwnershipInfoListTotal}" />

        <g:paginate next="Forward" prev="Back" maxsteps="0" controller="buildingInfoOwnershipInfo" action="list" total="${buildingInfoOwnershipInfoListTotal}" />
  
 </body>
</html>