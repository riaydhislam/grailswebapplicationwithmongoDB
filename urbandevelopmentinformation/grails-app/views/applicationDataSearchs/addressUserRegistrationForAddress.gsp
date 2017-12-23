<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered User Address Info</title>
</head>
<body>


<g:form action="addressUserRegistrationForAddress">
<g:render template="addressSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="addressUserRegistrationForAddress" value="Search"/></td>

<td>
 <g:link controller="addressInfo" action="create"><input type="button" value="<g:message code="back.to.form.label"/>"></g:link>
</td>
</tr>
</table>

<g:render template="addressUserRegistrationForAddress"></g:render>
</g:form>

</body>
</html>