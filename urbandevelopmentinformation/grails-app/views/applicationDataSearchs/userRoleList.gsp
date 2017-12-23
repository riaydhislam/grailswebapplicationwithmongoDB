<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Payment Information</title>
</head>
<body>

<g:form action="userRoleList">
<g:render template="userRoleSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="userRoleList" value="Search"/></td>
</tr>
</table>

<g:render template="userRoleSearchResult"></g:render>
</g:form>

</body>
</html>