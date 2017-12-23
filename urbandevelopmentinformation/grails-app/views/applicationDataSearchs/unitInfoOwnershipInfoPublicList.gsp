<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Unit OwnerShip Info</title>
</head>
<body>

<g:form action="unitInfoOwnershipInfoPublicList">
<g:render template="unitInfoOwnershipPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="unitInfoOwnershipInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="unitInfoOwnershipPublicSearchResult"></g:render>
</g:form>

</body>
</html>