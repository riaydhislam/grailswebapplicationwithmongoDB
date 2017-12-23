<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered user Information</title>
</head>
<body>

<g:form action="userRegistration">
<g:render template="userRegistrationSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="userRegistration" value="Search"/></td>
</tr>
</table>

<g:render template="userRegistrationSearchResult"></g:render>
</g:form>

</body>
</html>