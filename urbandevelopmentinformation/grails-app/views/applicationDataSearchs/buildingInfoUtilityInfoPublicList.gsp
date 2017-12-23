<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Building Utility Info</title>
</head>
<body>

<g:form action="buildingInfoUtilityInfoPublicList">
<g:render template="buildingInfoUtilityPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="buildingInfoUtilityInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="buildingInfoUtilityPublicSearchResult"></g:render>
</g:form>

</body>
</html>