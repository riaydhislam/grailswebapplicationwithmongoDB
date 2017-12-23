<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Plot Authorization Info</title>
</head>
<body>

<g:form action="plotInfoAuthorizationPublicList">
<g:render template="plotInfoAuthorizationPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="plotInfoAuthorizationPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="plotInfoAuthorizationPublicSearchResult"></g:render>
</g:form>

</body>
</html>