<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Floor Information</title>
</head>
<body>

<g:form action="unitList">
<g:render template="unitSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="unitList" value="Search"/></td>
</tr>
</table>

<g:render template="unitSearchResult"></g:render>
</g:form>

</body>
</html>