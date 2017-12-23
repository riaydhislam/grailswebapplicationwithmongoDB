<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Plot OwnerShip Info</title>
</head>
<body>

<g:form action="plotInfoOwnershipInfoPublicList">
<g:render template="plotInfoOwnershipPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="plotInfoOwnershipInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="plotInfoOwnershipPublicSearchResult"></g:render>
</g:form>

</body>
</html>