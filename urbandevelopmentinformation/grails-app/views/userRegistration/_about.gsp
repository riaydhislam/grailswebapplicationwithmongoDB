<%@ page import="urbandevelopmentinformation.UserRegistration" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="urbanviewwebapp Login" />
        <title><g:message code="urbanviewwebapp.login.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-endUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        
        <div id="create-endUser" class="content scaffold-create" role="main">
            <h1><g:message code="urbanviewwebapp.login.label" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${userRegistrationInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${userRegistrationInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="authenticateWebApplication" >
                <fieldset class="form">
                    <div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'userRegistrationName', 'error')} ">
                        <label for="userRegistrationName">
                            <g:message code="userRegistrationInstance.userRegistrationName.label"/>
                           
                        </label>
                        <g:textField name="userRegistrationName" value="${userRegistrationInstance?.userRegistrationName}"/>
                    </div>
                   
                    <div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'userRegistrationPassword', 'error')} ">
                        <label for="userRegistrationPassword">
                            <g:message code="userRegistrationInstance.userRegistrationPassword.label" />
                           
                        </label>
                        <g:field type="password" name="userRegistrationPassword" value="${userRegistrationInstance?.userRegistrationPassword}"/>
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="about" class="save" value="Login" />
                  
                </fieldset>
           
            </g:form>
            
              <br>
            <p font-size="18";> <center> <b> About Project Development Team </b> </center> </p> <br>
           <table border="1">
<tr>
<th>Name</th>
<th>Status</th>
<th>Photo</th>
</tr>
<tr>
<td><b>Nazmun Nessa Moon</b></td>
<td>Project Supervisor <br>
Internal Examiner <br>
<b> Assistant Professor <br> 
Department of Computer Science and Engineering <br> 
Faculty of Science & Information Technology <br> 
Daffodil International University <br> </b>
</td>
<td><asset:image src="moon.png" alt="Grails"/></td>
</tr>
<tr>
<td><b>Dr. Mohammad Shorif Uddin</b></td>
<td>
External Examiner <br>
<b>Assistant Professor <br>
Professor and Chairman <br>	
Department of Computer Science and Engineering <br>
Jahangirnagar University </b>
 </td>
<td><asset:image src="sorifju.png" alt="sorifju"/></td>
</tr>

<tr>
<td><b>Shaiful Islam</b></td>
<td>ID: 123-15-2057 <br> Student of CSE Department<br> Daffodil International University </td>
<td><asset:image src="shaiful.png" alt="shaiful"/></td>
</tr>

<tr>
<td><b>Abubakar Siddique</b></td>
<td>ID: 123-15-2023 <br> Student of CSE Department<br> Daffodil International University </td>
<td><asset:image src="abs.png" alt="abs"/></td>
</tr>

<tr>
<td><b>Istihak Hosian </b></td>
<td>ID: 123-15-2075 <br> Student of CSE Department<br> Daffodil International University </td>
<td><asset:image src="zesan.png" alt="zesan"/></td>
</tr>

<tr>
<td><b>Rashed Mamuhud</b></td>
<td>ID: 123-15-2064 <br> Student of CSE Department<br> Daffodil International University </td>
<td><asset:image src="rashed.png" alt="rashed"/></td>
</tr>


</table>
        </div>
    </body>
</html>