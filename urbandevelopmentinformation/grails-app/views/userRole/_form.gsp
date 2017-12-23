<%@ page import="urbandevelopmentinformation.UserRole" %>



<div class="fieldcontain ${hasErrors(bean: userRoleInstance, field: 'userRoleId', 'error')} required">
	<label for="userRoleId">
		<g:message code="userRole.userRoleId.label" default="User Role Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="userRoleId" type="number" value="${userRoleInstance.userRoleId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRoleInstance, field: 'userRoleName', 'error')} required">
	<label for="userRoleName">
		<g:message code="userRole.userRoleName.label" default="User Role Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="userRoleName" from="${userRoleInstance.constraints.userRoleName.inList}" required="" value="${userRoleInstance?.userRoleName}" valueMessagePrefix="userRole.userRoleName"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRoleInstance, field: 'userRoleType', 'error')} required">
	<label for="userRoleType">
		<g:message code="userRole.userRoleType.label" default="User Role Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="userRoleType" from="${userRoleInstance.constraints.userRoleType.inList}" required="" value="${userRoleInstance?.userRoleType}" valueMessagePrefix="userRole.userRoleType"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRoleInstance, field: 'userRoleDate', 'error')} required">
	<label for="userRoleDate">
		<g:message code="userRole.userRoleDate.label" default="User Role Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="userRoleDate" precision="day"  value="${userRoleInstance?.userRoleDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userRoleInstance, field: 'userRegistrations', 'error')} required">
	<label for="userRegistrations">
		<g:message code="userRole.userRegistrations.label" default="User Registrations" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="userRegistrations" name="userRegistrations.id" from="${urbandevelopmentinformation.UserRegistration.list()}" optionKey="id" required="" value="${userRoleInstance?.userRegistrations?.id}" class="many-to-one"/>

</div>

