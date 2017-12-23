<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Unit Billing Info</title>
</head>
<body>

<g:form action="unitInfoBillingInfoPublicList">
<g:render template="unitInfoBillingPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="unitInfoBillingInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="unitInfoBillingPublicSearchResult"></g:render>
</g:form>

</body>
</html>