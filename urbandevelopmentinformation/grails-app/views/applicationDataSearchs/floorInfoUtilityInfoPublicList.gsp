<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Floor Utility Info</title>
</head>
<body>

<g:form action="floorInfoUtilityInfoPublicList">
<g:render template="floorInfoUtilityPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="floorInfoUtilityInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="floorInfoUtilityPublicSearchResult"></g:render>
</g:form>

</body>
</html>