<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Address Location Search</title>
</head>
<body>

<g:form action="getAddressLocationData">
<g:render template="addressLocationSearchForm"></g:render>
<table>
<tr>
<td width="50">
<g:submitButton name="addressinfo" value="Search"/>
</td>
<td width="">
<td>
 <g:link controller="addressLocationInfo" action="create"><input type="button" value="<g:message code="back.to.form.label"/>"></g:link>
</td>
</td>


</tr>
</table>
<g:render template="addressLocationSearchResult"></g:render>
</g:form>


</body>
</html>