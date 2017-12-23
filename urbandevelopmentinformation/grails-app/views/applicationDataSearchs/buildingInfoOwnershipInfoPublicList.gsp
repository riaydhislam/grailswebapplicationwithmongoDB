<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Plot OwnerShip Info</title>
</head>
<body>

<g:form action="buildingInfoOwnershipInfoPublicList">
<g:render template="buildingInfoOwnershipPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="buildingInfoOwnershipInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="buildingInfoOwnershipPublicSearchResult"></g:render>
</g:form>

</body>
</html>