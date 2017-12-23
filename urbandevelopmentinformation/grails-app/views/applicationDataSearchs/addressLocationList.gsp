<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Address Location Information</title>
</head>
<body>

<g:form action="addressLocationList">
<g:render template="addressLocationSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="addressLocationList" value="Search"/></td>
</tr>
</table>

<g:render template="addressLocationSearchResult"></g:render>
</g:form>

</body>
</html>