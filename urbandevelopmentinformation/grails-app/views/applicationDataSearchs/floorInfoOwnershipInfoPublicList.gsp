<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Floor OwnerShip Info</title>
</head>
<body>

<g:form action="floorInfoOwnershipInfoPublicList">
<g:render template="floorInfoOwnershipPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="floorInfoOwnershipInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="floorInfoOwnershipPublicSearchResult"></g:render>
</g:form>

</body>
</html>