<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Plot Billing Info</title>
</head>
<body>

<g:form action="buildingInfoBillingInfoPublicList">
<g:render template="buildingInfoBillingPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="buildingInfoBillingInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="buildingInfoBillingPublicSearchResult"></g:render>
</g:form>

</body>
</html>