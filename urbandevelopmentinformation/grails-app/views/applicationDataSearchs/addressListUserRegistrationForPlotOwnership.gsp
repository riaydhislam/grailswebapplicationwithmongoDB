<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered User Address Info</title>
</head>
<body>


<g:form action="addressListUserRegistrationForPlotOwnership">
<g:render template="addressSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="addressListUserRegistrationForPlotOwnership" value="Search"/></td>



</tr>
</table>

<g:render template="addressUserRegistrationForPlotOwnership"></g:render>
</g:form>

</body>
</html>