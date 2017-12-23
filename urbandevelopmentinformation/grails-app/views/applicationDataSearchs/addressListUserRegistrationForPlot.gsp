<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered User Address Info</title>
</head>
<body>


<g:form action="addressListUserRegistrationForPlot">
<g:render template="addressLocationSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="addressListUserRegistrationForPlot" value="Search"/></td>


</tr>
</table>

<g:render template="addressListUserRegistrationForPlot"></g:render>
</g:form>

</body>
</html>