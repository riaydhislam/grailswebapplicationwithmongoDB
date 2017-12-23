<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Unit Payment Info</title>
</head>
<body>

<g:form action="unitInfoPaymentInfoPublicList">
<g:render template="unitInfoPaymentPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="unitInfoPaymentInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="unitInfoPaymentPublicSearchResult"></g:render>
</g:form>

  
</body>
</html>