<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Building Authorization Info</title>
</head>
<body>

<g:form action="buildingInfoAuthorizationPublicList">
<g:render template="buildingInfoAuthorizationPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="buildingInfoAuthorizationPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="buildingInfoAuthorizationPublicSearchResult"></g:render>
</g:form>

</body>
</html>