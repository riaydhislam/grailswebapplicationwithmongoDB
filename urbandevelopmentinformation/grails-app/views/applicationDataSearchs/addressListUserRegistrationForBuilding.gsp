<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered User Address Info</title>
</head>
<body>


<g:form action="addressListUserRegistrationForBuilding">
<g:render template="addressLocationSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="addressListUserRegistrationForBuilding" value="Search"/></td>

<td>
 <g:link controller="buildingInfo" action="create"><input type="button" value="<g:message code="back.to.form.label"/>"></g:link>
</td>
</tr>
</table>

<g:render template="addressListUserRegistrationForBuilding"></g:render>
</g:form>

</body>
</html>