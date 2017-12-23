<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Unit Authorization Info</title>
</head>
<body>

<g:form action="unitInfoAuthorizationPublicList">
<g:render template="unitInfoAuthorizationPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="unitInfoAuthorizationPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="unitInfoAuthorizationPublicSearchResult"></g:render>
</g:form>

</body>
</html>