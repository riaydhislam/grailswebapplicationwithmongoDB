<%@ page import="urbandevelopmentinformation.FloorInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'floorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
 </head>
 <body>
  <a href="#list-floorInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
   <ul>
   
    <li><g:link class="create" action="create"><g:message code="floorInfoPaymentInfo.create.label"/></g:link></li>
     <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
   </ul>
  </div>
  
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="floorInfoPaymentSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 
   
   <div id="list-floorInfoPaymentInfo" class="content scaffold-list" role="main">
   <h1><g:message code="register.floorInfoPaymentInfo.list.label"/>: ${floorInfoPaymentInfoListTotal}</h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
   
   <table>
   <thead>
     <tr>
     
      <g:sortableColumn property="paId" title="${message(code: 'paId.label')}" />
      <g:sortableColumn property="paBiId" title="${message(code: 'biId.label')}" />
      <g:sortableColumn property="paFlId" title="${message(code: 'flId.label')}" />
      <g:sortableColumn property="paType" title="${message(code: 'type.label')}" />
      <g:sortableColumn property="paCreaterName" title="${message(code: 'createrName.label')}" />
      <g:sortableColumn property="pyCreaterAuthority" title="${message(code: 'createrAuthority.label')}" />
     
     </tr>
    </thead>
    <tbody>
    <g:each in="${floorInfoPaymentInfoList}" status="i" var="floorInfoPaymentInfoInstance">
     <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
     
      <td><g:link action="show" id="${floorInfoPaymentInfoInstance.id}">${fieldValue(bean: floorInfoPaymentInfoInstance, field: "paId")}</g:link></td>
      <td>${fieldValue(bean: floorInfoPaymentInfoInstance, field: "paBiId")}</td>
      <td>${fieldValue(bean: floorInfoPaymentInfoInstance, field: "paFlId")}</td>
      <td>${fieldValue(bean: floorInfoPaymentInfoInstance, field: "paType")}</td>
      <td>${fieldValue(bean: floorInfoPaymentInfoInstance, field: "paCreaterName")}</td>
      <td>${fieldValue(bean: floorInfoPaymentInfoInstance, field: "pyCreaterAuthority")}</td>
     
      
     
     </tr>
    </g:each>
    </tbody>
   </table>
  
  </div>
  
  <g:paginate controller="floorInfoPaymentInfo" action="list" total="${floorInfoPaymentInfoListTotal}" />

        <g:paginate next="Forward" prev="Back" maxsteps="0" controller="floorInfoPaymentInfo" action="list" total="${floorInfoPaymentInfoListTotal}" />
  
 </body>
</html>