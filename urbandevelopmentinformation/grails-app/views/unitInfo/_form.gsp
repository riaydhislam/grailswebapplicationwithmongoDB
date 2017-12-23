<%@ page import="urbandevelopmentinformation.UnitInfo" %>



<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unId', 'error')} required">
	<label for="unId">
		<g:message code="unitInfo.unId.label" default="Un Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unId" type="number" value="${unitInfoInstance.unId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'floorInfo', 'error')} required">
	<label for="floorInfo">
		<b><g:message code="unitInfo.floorInfo.label" default="Floor Info" /></b>
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorInfo" name="floorInfo.id" from="${urbandevelopmentinformation.FloorInfo.list()}" optionKey="id" required="" value="${unitInfoInstance?.floorInfo?.id}" class="many-to-one"/>

</div>


<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unflId', 'error')} required">
	<label for="unflId">
		<g:message code="unitInfo.unflId.label" default="Unfl Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unflId" type="number" value="${unitInfoInstance.unflId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unAddressId', 'error')} required">
 <label for="unAddressId">
  <b><g:message code="alId.label"/></b>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="unAddressId" type="number" value="${unitInfoInstance.unAddressId}" required=""/>
 
 <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForUnit">
    <input type="button" value="<g:message code="addressLocation.search.label"/>" > </g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unName', 'error')} required">
	<label for="unName">
		<g:message code="unitInfo.unName.label" default="Un Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unName" required="" value="${unitInfoInstance?.unName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unCode', 'error')} required">
 <label for="unCode">
  <g:message code="code.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:select name="unCode" from="${[
    message(code:'useType.unit.code.1.label'),
    message(code:'useType.unit.code.2.label'),
    message(code:'useType.unit.code.3.label'),
       message(code:'useType.unit.code.4.label'),
    message(code:'useType.unit.code.5.label'),
    message(code:'useType.unit.code.6.label'),
    message(code:'useType.unit.code.7.label'),
    message(code:'useType.unit.code.8.label'),
    message(code:'useType.unit.code.9.label'),
    message(code:'useType.unit.code.10.label'),
    message(code:'useType.unit.code.11.label'),
    message(code:'useType.unit.code.12.label')
  
  
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unUseType', 'error')} required">
 <label for="unUseType">
  <g:message code="type.label"/>
  <span class="required-indicator">*</span>
 </label>
<g:select name="unUseType" from="${[
    message(code:'useType.unit.1.label'),
    message(code:'useType.unit.2.label'),
    message(code:'useType.unit.3.label'),
       message(code:'useType.unit.4.label'),
    message(code:'useType.unit.5.label'),
    message(code:'useType.unit.6.label'),
    message(code:'useType.unit.7.label'),
    message(code:'useType.unit.8.label'),
    message(code:'useType.unit.9.label'),
    message(code:'useType.unit.10.label'),
    message(code:'useType.unit.11.label'),
    message(code:'useType.unit.12.label')
  
  
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unNumberOfFloorUnit', 'error')} required">
	<label for="unNumberOfFloorUnit">
		<g:message code="unitInfo.unNumberOfFloorUnit.label" default="Un Number Of Floor Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unNumberOfFloorUnit" value="${fieldValue(bean: unitInfoInstance, field: 'unNumberOfFloorUnit')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unTotalUnitArea', 'error')} required">
	<label for="unTotalUnitArea">
		<g:message code="unitInfo.unTotalUnitArea.label" default="Un Total Unit Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unTotalUnitArea" value="${fieldValue(bean: unitInfoInstance, field: 'unTotalUnitArea')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unTotalHeight', 'error')} required">
	<label for="unTotalHeight">
		<g:message code="unitInfo.unTotalHeight.label" default="Un Total Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unTotalHeight" value="${fieldValue(bean: unitInfoInstance, field: 'unTotalHeight')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unCenterLongitude', 'error')} required">
	<label for="unCenterLongitude">
		<g:message code="unitInfo.unCenterLongitude.label" default="Un Center Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unCenterLongitude" value="${fieldValue(bean: unitInfoInstance, field: 'unCenterLongitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unCenterLatitude', 'error')} required">
	<label for="unCenterLatitude">
		<g:message code="unitInfo.unCenterLatitude.label" default="Un Center Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unCenterLatitude" value="${fieldValue(bean: unitInfoInstance, field: 'unCenterLatitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unLayoutPicture', 'error')} required">
	<label for="unLayoutPicture">
		<g:message code="unitInfo.unLayoutPicture.label" default="Un Layout Picture" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="unLayoutPicture" name="unLayoutPicture" />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unRemark', 'error')} required">
	<label for="unRemark">
		<g:message code="remark.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="unRemark" required="" value="${unitInfoInstance?.unRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'ownership', 'error')} ">
	<label for="ownership">
		<g:message code="unitInfo.ownership.label" default="Ownership" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitInfoInstance?.ownership?}" var="o">
    <li><g:link controller="unitInfoOwnershipInfo" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unitInfoOwnershipInfo" action="create" params="['unitInfo.id': unitInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'unitInfoOwnershipInfo.label', default: 'UnitInfoOwnershipInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'authorizationInfo', 'error')} ">
	<label for="authorizationInfo">
		<g:message code="unitInfo.authorizationInfo.label" default="Authorization Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitInfoInstance?.authorizationInfo?}" var="a">
    <li><g:link controller="unitInfoAuthorizationInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unitInfoAuthorizationInfo" action="create" params="['unitInfo.id': unitInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'unitInfoAuthorizationInfo.label', default: 'UnitInfoAuthorizationInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'utilityInfo', 'error')} ">
	<label for="utilityInfo">
		<g:message code="unitInfo.utilityInfo.label" default="Utility Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitInfoInstance?.utilityInfo?}" var="u">
    <li><g:link controller="unitInfoUtilityInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unitInfoUtilityInfo" action="create" params="['unitInfo.id': unitInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'unitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'billingInfo', 'error')} ">
	<label for="billingInfo">
		<g:message code="unitInfo.billingInfo.label" default="Billing Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitInfoInstance?.billingInfo?}" var="b">
    <li><g:link controller="unitInfoBillingInfo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unitInfoBillingInfo" action="create" params="['unitInfo.id': unitInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'unitInfoBillingInfo.label', default: 'UnitInfoBillingInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'paymentInfo', 'error')} ">
	<label for="paymentInfo">
		<g:message code="unitInfo.paymentInfo.label" default="Payment Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitInfoInstance?.paymentInfo?}" var="p">
    <li><g:link controller="unitInfoPaymentInfo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unitInfoPaymentInfo" action="create" params="['unitInfo.id': unitInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'unitInfoPaymentInfo.label', default: 'UnitInfoPaymentInfo')])}"></g:link>
</li>
</ul>


</div>


