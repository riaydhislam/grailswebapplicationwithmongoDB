<%@ page import="urbandevelopmentinformation.PlotInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'plotInfoPaymentInfo.label', default: 'PlotInfoPaymentInfo')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
 </head>
 <body>
  <a href="#list-plotInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
   <ul>
    
    <li><g:link class="create" action="create"><g:message code="plotInfoPaymentInfo.create.label"/></g:link></li>
     <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
     <li><g:link controller="userRegistration" action="index4" > <g:message code="back.to.form.label"/></g:link></li>
   </ul>
  </div>
  
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="plotInfoPaymentSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 
   
   <div id="list-plotInfoPaymentInfo" class="content scaffold-list" role="main">
   <h1><g:message code="register.plotInfoPaymentInfo.list.label"/>: ${plotInfoPaymentInfoListTotal}</h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
   
   <table>
   <thead>
     <tr>
     
      <g:sortableColumn property="paId" title="${message(code: 'paId.label')}" />
      <g:sortableColumn property="paBiId" title="${message(code: 'biId.label')}" />
      <g:sortableColumn property="paPlId" title="${message(code: 'plId.label')}" />
      <g:sortableColumn property="paType" title="${message(code: 'type.label')}" />
      <g:sortableColumn property="paCreaterName" title="${message(code: 'createrName.label')}" />
      <g:sortableColumn property="pyCreaterAuthority" title="${message(code: 'createrAuthority.label')}" />
     
     </tr>
    </thead>
    <tbody>
    <g:each in="${plotInfoPaymentInfoList}" status="i" var="plotInfoPaymentInfoInstance">
     <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
     
      <td><g:link action="show" id="${plotInfoPaymentInfoInstance.id}">${fieldValue(bean: plotInfoPaymentInfoInstance, field: "paId")}</g:link></td>
      <td>${fieldValue(bean: plotInfoPaymentInfoInstance, field: "paBiId")}</td>
      <td>${fieldValue(bean: plotInfoPaymentInfoInstance, field: "paPlId")}</td>
      <td>${fieldValue(bean: plotInfoPaymentInfoInstance, field: "paType")}</td>
      <td>${fieldValue(bean: plotInfoPaymentInfoInstance, field: "paCreaterName")}</td>
      <td>${fieldValue(bean: plotInfoPaymentInfoInstance, field: "pyCreaterAuthority")}</td>
     
      
     
     </tr>
    </g:each>
    </tbody>
   </table>
  
  </div>
  
  <g:paginate controller="plotInfoPaymentInfo" action="list" total="${plotInfoPaymentInfoListTotal}" />

        <g:paginate next="Forward" prev="Back" maxsteps="0" controller="plotInfoPaymentInfo" action="list" total="${plotInfoPaymentInfoListTotal}" />
  
 </body>
</html>