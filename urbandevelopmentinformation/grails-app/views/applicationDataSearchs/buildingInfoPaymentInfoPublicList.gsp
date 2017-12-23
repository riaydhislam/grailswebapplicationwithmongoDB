<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Building Payment Info</title>
</head>
<body>

<g:form action="buildingInfoPaymentInfoPublicList">
<g:render template="buildingInfoPaymentPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="buildingInfoPaymentInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="buildingInfoPaymentPublicSearchResult"></g:render>
</g:form>

  
</body>
</html>