<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Floor Information</title>
</head>
<body>

<g:form action="floorList">
<g:render template="floorSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="floorList" value="Search"/></td>
</tr>
</table>

<g:render template="floorSearchResult"></g:render>
</g:form>

</body>
</html>