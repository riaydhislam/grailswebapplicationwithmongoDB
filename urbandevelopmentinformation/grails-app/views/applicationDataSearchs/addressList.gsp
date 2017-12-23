<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Address Information</title>
</head>
<body>

<g:form action="addressList">
<g:render template="addressSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="addressList" value="Search"/></td>
</tr>
</table>

<g:render template="addressSearchResult"></g:render>
</g:form>

</body>
</html>