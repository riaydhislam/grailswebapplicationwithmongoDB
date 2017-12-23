<%@ page import="urbandevelopmentinformation.UserRegistration" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="urbanviewwebapp Login" />
        <title><g:message code="urbanviewwebapp.login.admin.label" args="[entityName]" /></title>
    </head>
    <body>
    
        <a href="#create-endUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
       
            <g:form action="authenticateWebPortal" >
               <g:render template="publicApplicationList"></g:render>
           
            </g:form>
      
    </body>
</html>