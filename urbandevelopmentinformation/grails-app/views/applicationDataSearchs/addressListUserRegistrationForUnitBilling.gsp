<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered User Address Info</title>
</head>
<body>


<g:form action="addressListUserRegistrationForBillingUtility">
<g:render template="addressSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="addressListUserRegistrationForUnitBilling" value="Search"/></td>

<td>
 <g:link controller="BillingInfoUtilityInfo" action="create"><input type="button" value="<g:message code="back.to.form.label"/>"></g:link>
</td>
</tr>
</table>

<g:render template="addressUserRegistrationForUnitBilling"></g:render>
</g:form>

</body>
</html>