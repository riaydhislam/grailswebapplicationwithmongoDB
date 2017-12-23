<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main"/>
  <title>Urban Management System</title>
  <style type="text/css" media="screen">
   #status {
    background-color: #eee;
    border: .2em solid #fff;
    margin: 2em 2em 1em;
    padding: 1em;
    width: 25em;
    float: left;
    -moz-box-shadow: 0px 0px 1.25em #ccc;
    -webkit-box-shadow: 0px 0px 1.25em #ccc;
    box-shadow: 0px 0px 1.25em #ccc;
    -moz-border-radius: 0.6em;
    -webkit-border-radius: 0.6em;
    border-radius: 0.6em;
   }

   .ie6 #status {
    display: inline; / float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html /
   }

   #status ul {
    font-size: 0.9em;
    list-style-type: none;
    margin-bottom: 0.6em;
    padding: 0;
   }

   #status li {
    line-height: 1.3;
   }

   #status h1 {
    text-transform: uppercase;
    font-size: 1.1em;
    margin: 0 0 0.3em;
   }

   #page-body {
    margin: 2em 1em 1.25em 18em;
   }

   h2 {
    margin-top: 1em;
    margin-bottom: 0.3em;
    font-size: 1em;
   }

   p {
    line-height: 1.5;
    margin: 0.25em 0;
   }

   #controller-list ul {
    list-style-position: inside;
   }

   #controller-list li {
    line-height: 1.3;
    list-style-position: inside;
    margin: 0.25em 0;
   }

   @media screen and (max-width: 480px) {
    #status {
     display: none;
    }

    #page-body {
     margin: 0 1em 1em;
    }

    #page-body h1 {
     margin-top: 0;
    }
   }
  </style>
 </head>
 <body>



<table>
<tr><td><b>System Overview</b></td></tr>
  <tr>
  <td>
Application Version: <g:meta name="app.version"/>
</td>
<td>
Grails Version: <g:meta name="app.grails.version"/>
</td>
<td>
Groovy Version: ${GroovySystem.getVersion()}
</td>
<td>
Java JVM Version: ${System.getProperty('java.version')}
</td>
</tr>
<tr>
<td>
Reloading Active: ${grails.util.Environment.reloadingAgentEnabled}
</td>
<td>
Controllers: ${grailsApplication.controllerClasses.size()}
</td>
<td>
Domains: ${grailsApplication.domainClasses.size()}
</td>
<td>
Services: ${grailsApplication.serviceClasses.size()}
</td> 
</tr>
</table>

<table>

<tr><td><b>Database Information</b></td></tr>

<tr>   
<td><g:link  controller="systemInfo" action="systemInfo"><input type="button" value="<g:message code="system.information.lebel"/>" style="
    width: 249px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
    <td><g:link  controller="databaseInfoImpl2" action="getDatabases"><input type="button" value="<g:message code="getDatabases.information.lebel"/>" style="
    width: 249px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
   </tr>
   
   <tr>
   <td><g:link  controller="databaseInfoImpl2" action="getTableDescription"><input type="button" value="<g:message code="getTableDescription.information.lebel"/>" style="
    width: 249px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
  <td><g:link  controller="databaseInfoImpl2" action="getTables"><input type="button" value="<g:message code="databaseInfo.information.lebel"/>" style="
    width: 249px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
    

</tr>

</table>  


<table>
<tr><td><b>Web Map GIS Applications</b></td></tr>
  <tr>
 <td><g:link controller="webmaps" action="geoserverApplication"><input type="button" value="<g:message code="new.geoserverapplication.label"/>" style="
    width: 249px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>   
 <td><g:link controller="webmaps" action="createVectorLayer"><input type="button" value="<g:message code="new.mapapplication.label"/>" style="
    width: 249px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>   
 </tr>
</table>  


<table>
<tr><td><b> User Registration</b></td></tr>
 <tr>
 <td><g:link controller="addressInfo" action="index"><input type="button" value="<g:message code="new.address.label"/>" style="
    width: 249px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td> 
 <td><g:link controller="addressLocationInfo" action="index"><input type="button" value="<g:message code="new.addresslocation.label"/>" style="
    width: 249px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>  
 </tr>
 
 <tr>
 <td><g:link controller="userRegistration" action="index"><input type="button" value="<g:message code="new.userregistration.label"/>" style="
    width: 249px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>  
 <td><g:link controller="userRole" action="index"><input type="button" value="<g:message code="new.userrole.label"/>" style="
    width: 249px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>  
 </tr>
 
</table> 

</body>
</html>