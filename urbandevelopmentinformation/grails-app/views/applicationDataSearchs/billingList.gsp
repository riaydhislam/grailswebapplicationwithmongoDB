<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Bill Information</title>
</head>
<body>

<g:form action="billingList">
<g:render template="billingSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="billingList" value="Search"/></td>
</tr>
</table>

<g:render template="billingSearchResult"></g:render>
</g:form>

</body>
</html>