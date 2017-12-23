<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Floor Payment Info</title>
</head>
<body>

<g:form action="floorInfoPaymentInfoPublicList">
<g:render template="floorInfoPaymentPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="floorInfoPaymentInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="floorInfoPaymentPublicSearchResult"></g:render>
</g:form>

  
</body>
</html>