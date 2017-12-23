<%@ page import="urbandevelopmentinformation.PlotInfoOwnershipInfo" %>
<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'plotInfoOwnershipInfo.label', default: 'PlotInfoOwnershipInfo')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
 </head>
 <body>
  <a href="#list-plotInfoOwnershipInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
   <ul>
  
    <li><g:link class="create" action="create"><g:message code="ownership.create.label"/></g:link></li>
     <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
     <li><g:link controller="userRegistration" action="index4" > <g:message code="back.to.form.label"/></g:link></li>
   </ul>
  </div>
  
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="plotInfoOwnershipSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 
   
   <div id="list-plotInfoOwnershipInfo" class="content scaffold-list" role="main">
   <h1><g:message code="register.plotInfoOwnershipInfo.list.label"/>: ${plotInfoOwnershipInfoInstanceCount}</h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
   
   <table>
   <thead>
     <tr>
     
      <g:sortableColumn property="owId" title="${message(code: 'owId.label')}" />
      <g:sortableColumn property="owPlId" title="${message(code: 'plId.label')}" />
      <g:sortableColumn property="owFullName" title="${message(code: 'fullName.label')}" />
      <g:sortableColumn property="owAppliedDate" title="${message(code: 'appliedDate.label')}" />
      <g:sortableColumn property="owLastModifiedDate" title="${message(code: 'lastModifiedDate.label')}" />
      <g:sortableColumn property="owApprovedDate" title="${message(code: 'approvedDate.label')}" />
     
     </tr>
    </thead>
    <tbody>
    <g:each in="${plotInfoOwnershipInfoList}" status="i" var="plotInfoOwnershipInfoInstance">
     <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
     
      <td><g:link action="show" id="${plotInfoOwnershipInfoInstance.id}">${fieldValue(bean: plotInfoOwnershipInfoInstance, field: "owId")}</g:link></td>
      <td>${fieldValue(bean: plotInfoOwnershipInfoInstance, field: "owPlId")}</td>
      <td>${fieldValue(bean: plotInfoOwnershipInfoInstance, field: "owFullName")}</td>
      <td><g:formatDate date="${plotInfoOwnershipInfoInstance.owAppliedDate}" type="date" style="SHORT"/></td>
    
      <td><g:formatDate date="${plotInfoOwnershipInfoInstance.owLastModifiedDate}" type="date" style="SHORT"/></td>
      <td><g:formatDate date="${plotInfoOwnershipInfoInstance.owApprovedDate}" type="date" style="SHORT"/></td>
     
     </tr>
    </g:each>
    </tbody>
   </table>
  
  </div>
  
  <g:paginate controller="plotInfoOwnershipInfo" action="list" total="${plotInfoOwnershipInfoTotal}" />

        <g:paginate next="Forward" prev="Back" maxsteps="0" controller="plotInfoOwnershipInfo" action="list" total="${plotInfoOwnershipInfoTotal}" />
  
 </body>
</html>