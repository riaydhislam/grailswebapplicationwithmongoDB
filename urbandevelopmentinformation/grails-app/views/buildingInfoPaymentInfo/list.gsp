<%@ page import="urbandevelopmentinformation.BuildingInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'buildingInfoPaymentInfo.label', default: 'BuildingInfoPaymentInfo')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
 </head>
 <body>
  <a href="#list-buildingInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
   <ul>
  
    <li><g:link class="create" action="create"><g:message code="buildingInfoPaymentInfo.create.label"/></g:link></li>
     <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
   </ul>
  </div>
  
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="buildingInfoPaymentSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 
   
   <div id="list-buildingInfoPaymentInfo" class="content scaffold-list" role="main">
   <h1><g:message code="register.buildingInfoPaymentInfo.list.label"/>: ${buildingInfoPaymentInfoListTotal}</h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
   
   <table>
   <thead>
     <tr>
     
      <g:sortableColumn property="paId" title="${message(code: 'paId.label')}" />
      <g:sortableColumn property="paBiId" title="${message(code: 'biId.label')}" />
      <g:sortableColumn property="paPlId" title="${message(code: 'buId.label')}" />
      <g:sortableColumn property="paType" title="${message(code: 'type.label')}" />
      <g:sortableColumn property="paCreaterName" title="${message(code: 'createrName.label')}" />
      <g:sortableColumn property="pyCreaterAuthority" title="${message(code: 'createrAuthority.label')}" />
     
     </tr>
    </thead>
    <tbody>
    <g:each in="${buildingInfoPaymentInfoList}" status="i" var="buildingInfoPaymentInfoInstance">
     <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
     
      <td><g:link action="show" id="${buildingInfoPaymentInfoInstance.id}">${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "paId")}</g:link></td>
      <td>${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "paBiId")}</td>
      <td>${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "paPlId")}</td>
      <td>${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "paType")}</td>
      <td>${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "paCreaterName")}</td>
      <td>${fieldValue(bean: buildingInfoPaymentInfoInstance, field: "pyCreaterAuthority")}</td>
     
      
     
     </tr>
    </g:each>
    </tbody>
   </table>
  
  </div>
  
  <g:paginate controller="buildingInfoPaymentInfo" action="list" total="${buildingInfoPaymentInfoListTotal}" />

        <g:paginate next="Forward" prev="Back" maxsteps="0" controller="buildingInfoPaymentInfo" action="list" total="${buildingInfoPaymentInfoListTotal}" />
  
 </body>
</html>