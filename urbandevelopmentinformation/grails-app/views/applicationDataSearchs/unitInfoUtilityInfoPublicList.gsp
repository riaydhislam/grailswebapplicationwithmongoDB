<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Unit Utility Info</title>
</head>
<body>

<g:form action="unitInfoUtilityInfoPublicList">
<g:render template="unitInfoUtilityPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="unitInfoUtilityInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="unitInfoUtilityPublicSearchResult"></g:render>
</g:form>

</body>
</html>