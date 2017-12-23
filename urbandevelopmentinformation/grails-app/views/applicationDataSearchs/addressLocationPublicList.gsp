<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Address Location Info</title>
</head>
<body>

<g:form action="addressLocationPublicList">
<g:render template="addressLocationSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="addressLocationList" value="Search"/></td>
</tr>
</table>

<g:render template="addressLocationPublicSearchResult"></g:render>
</g:form>

</body>
</html>