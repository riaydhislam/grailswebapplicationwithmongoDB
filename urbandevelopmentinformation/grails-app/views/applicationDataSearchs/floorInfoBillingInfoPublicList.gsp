<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Plot Billing Info</title>
</head>
<body>

<g:form action="floorInfoBillingInfoPublicList">
<g:render template="floorInfoBillingPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="floorInfoBillingInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="floorInfoBillingPublicSearchResult"></g:render>
</g:form>

</body>
</html>