<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Authorization Information</title>
</head>
<body>

<g:form action="authorizationList">
<g:render template="authorizationSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="authorizationList" value="Search"/></td>
</tr>
</table>

<g:render template="authorizationSearchResult"></g:render>
</g:form>

</body>
</html>