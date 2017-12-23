<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Register User Address Info</title>
</head>
<body>


<g:form action="addressListUserRegistrationForUnitOwnership">
<g:render template="addressSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="addressListUserRegistrationForUnitOwnership" value="Search"/></td>

<td>
 <g:link controller="unitInfoOwnershipInfo" action="create"><input type="button" value="<g:message code="back.to.form.label"/>"></g:link>
</td>
</tr>
</table>

<g:render template="addressUserRegistrationForUnitOwnership"></g:render>
</g:form>

</body>
</html>