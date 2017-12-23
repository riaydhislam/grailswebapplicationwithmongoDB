<%@ page import="urbandevelopmentinformation.FloorInfoOwnershipInfo" %>
<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'floorInfoOwnershipInfo.label', default: 'PlotInfoOwnershipInfo')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
 </head>
 <body>
  <a href="#list-floorInfoOwnershipInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
   <ul>
    
    <li><g:link class="create" action="create"><g:message code="ownership.create.label"/></g:link></li>
     <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
   </ul>
  </div>
  
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="floorInfoOwnershipSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 
   
   <div id="list-floorInfoOwnershipInfo" class="content scaffold-list" role="main">
   <h1><g:message code="register.floorInfoOwnershipInfo.list.label"/>: ${floorInfoOwnershipInfoListTotal}</h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
   
   <table>
   <thead>
     <tr>
     
      <g:sortableColumn property="owId" title="${message(code: 'owId.label')}" />
      <g:sortableColumn property="owFlId" title="${message(code: 'flId.label')}" />
      <g:sortableColumn property="owFullName" title="${message(code: 'fullName.label')}" />
      <g:sortableColumn property="owAppliedDate" title="${message(code: 'appliedDate.label')}" />
      <g:sortableColumn property="owLastModifiedDate" title="${message(code: 'lastModifiedDate.label')}" />
      <g:sortableColumn property="owApprovedDate" title="${message(code: 'approvedDate.label')}" />
     
     </tr>
    </thead>
    <tbody>
    <g:each in="${floorInfoOwnershipInfoList}" status="i" var="floorInfoOwnershipInfoInstance">
     <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
     
      <td><g:link action="show" id="${floorInfoOwnershipInfoInstance.id}">${fieldValue(bean: floorInfoOwnershipInfoInstance, field: "owId")}</g:link></td>
      <td>${fieldValue(bean: floorInfoOwnershipInfoInstance, field: "owFlId")}</td>
      <td>${fieldValue(bean: floorInfoOwnershipInfoInstance, field: "owFullName")}</td>
      <td><g:formatDate date="${floorInfoOwnershipInfoInstance.owAppliedDate}" type="date" style="SHORT"/></td>
    
      <td><g:formatDate date="${floorInfoOwnershipInfoInstance.owLastModifiedDate}" type="date" style="SHORT"/></td>
      <td><g:formatDate date="${floorInfoOwnershipInfoInstance.owApprovedDate}" type="date" style="SHORT"/></td>
     
     </tr>
    </g:each>
    </tbody>
   </table>
  
  </div>
  
  <g:paginate controller="floorInfoOwnershipInfo" action="list" total="${floorInfoOwnershipInfoListTotal}" />

        <g:paginate next="Forward" prev="Back" maxsteps="0" controller="floorInfoOwnershipInfo" action="list" total="${floorInfoOwnershipInfoListTotal}" />
  
 </body>
</html>