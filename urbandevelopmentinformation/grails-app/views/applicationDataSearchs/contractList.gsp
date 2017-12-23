<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Contract Information</title>
</head>
<body>

<g:form action="contractList">
<g:render template="contractSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="contractList" value="Search"/></td>
</tr>
</table>

<g:render template="contractSearchResult"></g:render>
</g:form>

</body>
</html>