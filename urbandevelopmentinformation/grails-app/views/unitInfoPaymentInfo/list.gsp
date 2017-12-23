<%@ page import="urbandevelopmentinformation.UnitInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'unitInfoPaymentInfo.label', default: 'UnitInfoPaymentInfo')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
 </head>
 <body>
  <a href="#list-unitInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
   <ul>
   
    <li><g:link class="create" action="create"><g:message code="unitPayment.create.label"/></g:link></li>
     <li><a class="home"  href="${createLink(uri: '/')}"><g:message code="logout.home.label"/></a><li>
   </ul>
  </div>
  
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="unitInfoPaymentSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset> 
   
   <div id="list-unitInfoPaymentInfo" class="content scaffold-list" role="main">
   <h1><g:message code="register.unitInfoPaymentInfo.list.label"/>: ${unitInfoPaymentInfoListTotal}</h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
   
   <table>
   <thead>
     <tr>
     
      <g:sortableColumn property="paId" title="${message(code: 'paId.label')}" />
      <g:sortableColumn property="paBiId" title="${message(code: 'biId.label')}" />
      <g:sortableColumn property="paUnId" title="${message(code: 'unId.label')}" />
      <g:sortableColumn property="paType" title="${message(code: 'type.label')}" />
      <g:sortableColumn property="paCreaterName" title="${message(code: 'createrName.label')}" />
      <g:sortableColumn property="pyCreaterAuthority" title="${message(code: 'createrAuthority.label')}" />
     
     </tr>
    </thead>
    <tbody>
    <g:each in="${unitInfoPaymentInfoList}" status="i" var="unitInfoPaymentInfoInstance">
     <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
     
      <td><g:link action="show" id="${unitInfoPaymentInfoInstance.id}">${fieldValue(bean: unitInfoPaymentInfoInstance, field: "paId")}</g:link></td>
      <td>${fieldValue(bean: unitInfoPaymentInfoInstance, field: "paBiId")}</td>
      <td>${fieldValue(bean: unitInfoPaymentInfoInstance, field: "paUnId")}</td>
      <td>${fieldValue(bean: unitInfoPaymentInfoInstance, field: "paType")}</td>
      <td>${fieldValue(bean: unitInfoPaymentInfoInstance, field: "paCreaterName")}</td>
      <td>${fieldValue(bean: unitInfoPaymentInfoInstance, field: "pyCreaterAuthority")}</td>
     
      
     
     </tr>
    </g:each>
    </tbody>
   </table>
  
  </div>
  
  <g:paginate controller="unitInfoPaymentInfo" action="list" total="${unitInfoPaymentInfoListTotal}" />

        <g:paginate next="Forward" prev="Back" maxsteps="0" controller="unitInfoPaymentInfo" action="list" total="${unitInfoPaymentInfoListTotal}" />
  
 </body>
</html>