<%@ page import="urbandevelopmentinformation.FloorInfoOwnershipInfo" %>
<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'unitInfoOwnershipInfo.label', default: 'unitInfoOwnershipInfo')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
 </head>
 <body>
  <a href="#list-unitInfoOwnershipInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
   <ul>
    
    <li><g:link class="create" action="create"><g:message code="ownership.create.label"/></g:link></li>
     <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
   </ul>
  </div>
  
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="unitInfoOwnershipSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 
   
   <div id="list-unitInfoOwnershipInfo" class="content scaffold-list" role="main">
   <h1><g:message code="register.unitInfoOwnershipInfo.list.label"/>: ${unitInfoOwnershipInfoListTotal}</h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
   
   <table>
   <thead>
     <tr>
     
      <g:sortableColumn property="owId" title="${message(code: 'owId.label')}" />
      <g:sortableColumn property="owUnId" title="${message(code: 'unId.label')}" />
      <g:sortableColumn property="owFullName" title="${message(code: 'fullName.label')}" />
      <g:sortableColumn property="owAppliedDate" title="${message(code: 'appliedDate.label')}" />
      <g:sortableColumn property="owLastModifiedDate" title="${message(code: 'lastModifiedDate.label')}" />
      <g:sortableColumn property="owApprovedDate" title="${message(code: 'approvedDate.label')}" />
     
     </tr>
    </thead>
    <tbody>
    <g:each in="${unitInfoOwnershipInfoList}" status="i" var="unitInfoOwnershipInfoInstance">
     <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
     
      <td><g:link action="show" id="${unitInfoOwnershipInfoInstance.id}">${fieldValue(bean: unitInfoOwnershipInfoInstance, field: "owId")}</g:link></td>
      <td>${fieldValue(bean: unitInfoOwnershipInfoInstance, field: "owUnId")}</td>
      <td>${fieldValue(bean: unitInfoOwnershipInfoInstance, field: "owFullName")}</td>
      <td><g:formatDate date="${unitInfoOwnershipInfoInstance.owAppliedDate}" type="date" style="SHORT"/></td>
    
      <td><g:formatDate date="${unitInfoOwnershipInfoInstance.owLastModifiedDate}" type="date" style="SHORT"/></td>
      <td><g:formatDate date="${unitInfoOwnershipInfoInstance.owApprovedDate}" type="date" style="SHORT"/></td>
     
     </tr>
    </g:each>
    </tbody>
   </table>
  
  </div>
  
  <g:paginate controller="unitInfoOwnershipInfo" action="list" total="${unitInfoOwnershipInfoListTotal}" />

        <g:paginate next="Forward" prev="Back" maxsteps="0" controller="unitInfoOwnershipInfo" action="list" total="${unitInfoOwnershipInfoListTotal}" />
  
 </body>
</html>