<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Utility Information</title>
</head>
<body>

<g:form action="utilityList">
<g:render template="utilitySearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="utilityList" value="Search"/></td>
</tr>
</table>

<g:render template="utilitySearchResult"></g:render>
</g:form>

</body>

</body>
</html>