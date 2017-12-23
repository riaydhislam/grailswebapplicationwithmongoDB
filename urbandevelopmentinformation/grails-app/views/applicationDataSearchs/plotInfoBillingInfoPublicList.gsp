<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Plot Billing Info</title>
</head>
<body>

<g:form action="plotInfoBillingInfoPublicList">
<g:render template="plotInfoBillingPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="plotInfoBillingInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="plotInfoBillingPublicSearchResult"></g:render>
</g:form>

</body>
</html>