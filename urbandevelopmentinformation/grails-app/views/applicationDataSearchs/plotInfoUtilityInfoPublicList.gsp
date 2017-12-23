<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Plot Utility Info</title>
</head>
<body>

<g:form action="plotInfoUtilityInfoPublicList">
<g:render template="plotInfoUtilityPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="plotInfoUtilityInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="plotInfoUtilityPublicSearchResult"></g:render>
</g:form>

</body>
</html>