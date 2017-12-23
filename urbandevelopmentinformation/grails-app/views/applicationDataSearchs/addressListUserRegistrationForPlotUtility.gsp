<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered User Address Info</title>
</head>
<body>


<g:form action="addressListUserRegistrationForPlotUtility">
<g:render template="addressSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="addressListUserRegistrationForPlotUtility" value="Search"/></td>


</tr>
</table>

<g:render template="addressUserRegistrationForPlotUtility"></g:render>
</g:form>

</body>
</html>