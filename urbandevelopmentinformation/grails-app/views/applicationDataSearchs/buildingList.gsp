<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Building Information</title>
</head>
<body>

<g:form action="buildingList">
<g:render template="buildingSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="buildingList" value="Search"/></td>
</tr>
</table>

<g:render template="buildingSearchResult"></g:render>
</g:form>

</body>
</html>