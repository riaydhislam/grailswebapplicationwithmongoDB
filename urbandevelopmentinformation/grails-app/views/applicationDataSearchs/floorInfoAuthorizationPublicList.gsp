<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Floor Authorization Info</title>
</head>
<body>

<g:form action="floorInfoAuthorizationPublicList">
<g:render template="floorInfoAuthorizationPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="floorInfoAuthorizationPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="floorInfoAuthorizationPublicSearchResult"></g:render>
</g:form>

</body>
</html>