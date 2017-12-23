<%@ page import="urbandevelopmentinformation.UserRegistration" %>



<div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'userRegistrationId', 'error')} required">
	<label for="userRegistrationId">
		<g:message code="userRegistration.userRegistrationId.label" />
		<span class="required-indicator">*</span>
	</label>
	
	<g:field name="userRegistrationId" type="number" value="${userRegistrationInstance.userRegistrationId}" required=""/>
	
</div>

<div class="fieldcontain ${hasErrors(bean:userRegistrationInstance, field: 'userAddressId', 'error')} required">
 <label for="userAddressId">
  <g:message code="addressId.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="userAddressId" type="number" value="${userRegistrationInstance.userAddressId}" required=""/>
 
  <g:link controller="applicationDataSearchs" action="addressUserRegistrationForUserRegistration">
     <input type="button" class="button" value="<g:message code="addressList.search.label"/>"></g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'userRegistrationFName', 'error')} required">
	<label for="userRegistrationFName">
		<g:message code="userRegistration.userRegistrationFName.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userRegistrationFName" required="" value="${userRegistrationInstance?.userRegistrationFName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'userRegistrationMName', 'error')} required">
	<label for="userRegistrationMName">
		<g:message code="userRegistration.userRegistrationMName.label" />
		<span class="required-indicator">*</span>
	</label>
	
	<g:textField name="userRegistrationMName" required="" value="${userRegistrationInstance?.userRegistrationMName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'userRegistrationLName', 'error')} required">
	<label for="userRegistrationLName">
		<g:message code="userRegistration.userRegistrationLName.label"/>
		<span class="required-indicator">*</span>
	</label>
	
	
	<g:textField name="userRegistrationLName" required="" value="${userRegistrationInstance?.userRegistrationLName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'userRegistrationfullName', 'error')} required">
	<label for="userRegistrationfullName">
		<g:message code="userRegistration.userRegistrationfullName.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userRegistrationfullName" required="" value="${userRegistrationInstance?.userRegistrationfullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'userRegistrationCrDate', 'error')} required">
	<label for="userRegistrationCrDate">
		<g:message code="userRegistration.userRegistrationCrDate.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="userRegistrationCrDate" precision="day"  value="${userRegistrationInstance?.userRegistrationCrDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'userRegistrationLDate', 'error')} required">
	<label for="userRegistrationLDate">
		<g:message code="userRegistration.userRegistrationLDate.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="userRegistrationLDate" precision="day"  value="${userRegistrationInstance?.userRegistrationLDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'userRegistrationName', 'error')} required">
	<label for="userRegistrationName">
		<g:message code="userRegistration.userRegistrationName.label"  />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userRegistrationName" required="" value="${userRegistrationInstance?.userRegistrationName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'userRegistrationPassword', 'error')} required">
	<label for="userRegistrationPassword">
		<g:message code="userRegistration.userRegistrationPassword.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="userRegistrationPassword" required="" value="${userRegistrationInstance?.userRegistrationPassword}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'roles', 'error')} ">
	<label for="roles">
		<g:message code="userRegistration.roles.label" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userRegistrationInstance?.roles?}" var="r">
    <li><g:link controller="userRole" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="userRole" action="create" params="['userRegistration.id': userRegistrationInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'userRole.label', default: 'UserRole')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userRegistrationInstance, field: 'addresses', 'error')} ">
	<label for="addresses">
		<g:message code="userRegistration.addresses.label" default="Addresses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userRegistrationInstance?.addresses?}" var="a">
    <li><g:link controller="addressInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="addressInfo" action="create" params="['userRegistration.id': userRegistrationInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'addressInfo.label', default: 'AddressInfo')])}</g:link>
</li>
</ul>
</div>

