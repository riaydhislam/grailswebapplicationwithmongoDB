<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Plot Information</title>
</head>
<body>

<g:form action="plotList">
<g:render template="plotSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="plotList" value="Search"/></td>


<td>

 <g:link controller="userRegistration" action="authenticateWebPortal"><input type="button" value="<g:message code="back.to.form.label"/>"></g:link>

</td>
</tr>
</table>

<g:render template="plotSearchResult"></g:render>
</g:form>

</body>
</html>