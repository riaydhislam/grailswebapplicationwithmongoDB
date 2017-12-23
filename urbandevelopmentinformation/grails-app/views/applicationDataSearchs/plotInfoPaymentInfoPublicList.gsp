<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Plot Payment Info</title>
</head>
<body>

<g:form action="plotInfoPaymentInfoPublicList">
<g:render template="plotInfoPaymentPublicSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="plotInfoPaymentInfoPublicList" value="Search"/></td>
</tr>
</table>

<g:render template="plotInfoPaymentPublicSearchResult"></g:render>
</g:form>

  
</body>
</html>