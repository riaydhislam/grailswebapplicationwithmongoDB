<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered User Address Info</title>
</head>
<body>


<g:form action="addressListUserRegistrationForPlotPayment">
<g:render template="addressSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="addressListUserRegistrationForPlotPayment" value="Search"/></td>


</tr>
</table>

<g:render template="addressUserRegistrationForPlotPayment"></g:render>
</g:form>

</body>
</html>