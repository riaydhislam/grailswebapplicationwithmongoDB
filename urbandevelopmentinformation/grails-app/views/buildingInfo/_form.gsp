<%@ page import="urbandevelopmentinformation.BuildingInfo" %>



<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buId', 'error')} required">
	<label for="buId">
		<g:message code="buildingInfo.buId.label"  />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buId" type="number" value="${buildingInfoInstance.buId}" required=""/>

</div>


<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buAddressId', 'error')} required">
 <label for="buAddressId">
  <b><g:message code="alId.label"/></b>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="buAddressId" type="number" value="${buildingInfoInstance.buAddressId}" required=""/>
 
 <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForBuilding">
    <input type="button" value="<g:message code="addressLocation.search.label"/>" > </g:link>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'plotInfo', 'error')} required">
	<label for="plotInfo">
		<b></b><g:message code="buildingInfo.plotInfo.label" default="Plot Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plotInfo" name="plotInfo.id" from="${urbandevelopmentinformation.PlotInfo.list()}" optionKey="id" required="" value="${buildingInfoInstance?.plotInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buPlId', 'error')} required">
	<label for="buPlId">
		<g:message code="buildingInfo.buPlId.label"  />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buPlId" type="number" value="${buildingInfoInstance.buPlId}" required=""/>

</div>



<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buName', 'error')} required">
	<label for="buName">
		<g:message code="buildingInfo.buName.label" default="Bu Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="buName" required="" value="${buildingInfoInstance?.buName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buCode', 'error')} required">
 <label for="buCode">
  <g:message code="code.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:select name="buCode" from="${[
    message(code:'useType.building.code.1.label'),
    message(code:'useType.building.code.2.label'),
    message(code:'useType.building.code.3.label'),
       message(code:'useType.building.code.4.label'),
    message(code:'useType.building.code.5.label'),
    message(code:'useType.building.code.6.label'),
    message(code:'useType.building.code.7.label'),
    message(code:'useType.building.code.8.label'),
    message(code:'useType.building.code.9.label'),
    message(code:'useType.building.code.10.label'),
    message(code:'useType.building.code.11.label'),
    message(code:'useType.building.code.12.label'),
    message(code:'useType.building.code.13.label'),
    message(code:'useType.building.code.14.label'),
    message(code:'useType.building.code.15.label'),
    message(code:'useType.building.code.16.label'),
    message(code:'useType.building.code.17.label')
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>


</div>


<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buUseType', 'error')} required">
 <label for="buUseType">
  <g:message code="type.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:select name="buUseType" from="${[
    message(code:'useType.building.1.label'),
    message(code:'useType.building.2.label'),
    message(code:'useType.building.3.label'),
       message(code:'useType.building.4.label'),
    message(code:'useType.building.5.label'),
    message(code:'useType.building.6.label'),
    message(code:'useType.building.7.label'),
    message(code:'useType.building.8.label'),
    message(code:'useType.building.9.label'),
    message(code:'useType.building.10.label'),
    message(code:'useType.building.11.label'),
    message(code:'useType.building.12.label'),
    message(code:'useType.building.13.label'),
    message(code:'useType.building.14.label'),
    message(code:'useType.building.15.label'),
    message(code:'useType.building.16.label'),
    message(code:'useType.building.17.label')
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>



<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buNumberOfFloor', 'error')} required">
	<label for="buNumberOfFloor">
		<g:message code="buildingInfo.buNumberOfFloor.label" default="Bu Number Of Floor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buNumberOfFloor" value="${fieldValue(bean: buildingInfoInstance, field: 'buNumberOfFloor')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buTotalHeight', 'error')} required">
	<label for="buTotalHeight">
		<g:message code="buildingInfo.buTotalHeight.label" default="Bu Total Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buTotalHeight" value="${fieldValue(bean: buildingInfoInstance, field: 'buTotalHeight')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buNumberOfFloorUnit', 'error')} required">
	<label for="buNumberOfFloorUnit">
		<g:message code="buildingInfo.buNumberOfFloorUnit.label" default="Bu Number Of Floor Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buNumberOfFloorUnit" value="${fieldValue(bean: buildingInfoInstance, field: 'buNumberOfFloorUnit')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buTotalGroundArea', 'error')} required">
	<label for="buTotalGroundArea">
		<g:message code="buildingInfo.buTotalGroundArea.label" default="Bu Total Ground Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buTotalGroundArea" value="${fieldValue(bean: buildingInfoInstance, field: 'buTotalGroundArea')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buTotalFloorArea', 'error')} required">
	<label for="buTotalFloorArea">
		<g:message code="buildingInfo.buTotalFloorArea.label" default="Bu Total Floor Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buTotalFloorArea" value="${fieldValue(bean: buildingInfoInstance, field: 'buTotalFloorArea')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buSetBackFront', 'error')} required">
	<label for="buSetBackFront">
		<g:message code="buildingInfo.buSetBackFront.label" default="Bu Set Back Front" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buSetBackFront" value="${fieldValue(bean: buildingInfoInstance, field: 'buSetBackFront')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buSetBackBack', 'error')} required">
	<label for="buSetBackBack">
		<g:message code="buildingInfo.buSetBackBack.label" default="Bu Set Back Back" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buSetBackBack" value="${fieldValue(bean: buildingInfoInstance, field: 'buSetBackBack')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buSetBackRight', 'error')} required">
	<label for="buSetBackRight">
		<g:message code="buildingInfo.buSetBackRight.label" default="Bu Set Back Right" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buSetBackRight" value="${fieldValue(bean: buildingInfoInstance, field: 'buSetBackRight')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buSetBackLeft', 'error')} required">
	<label for="buSetBackLeft">
		<g:message code="buildingInfo.buSetBackLeft.label" default="Bu Set Back Left" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buSetBackLeft" value="${fieldValue(bean: buildingInfoInstance, field: 'buSetBackLeft')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buCenterLongitude', 'error')} required">
	<label for="buCenterLongitude">
		<g:message code="buildingInfo.buCenterLongitude.label" default="Bu Center Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buCenterLongitude" value="${fieldValue(bean: buildingInfoInstance, field: 'buCenterLongitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buCenterLatitude', 'error')} required">
	<label for="buCenterLatitude">
		<g:message code="buildingInfo.buCenterLatitude.label" default="Bu Center Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="buCenterLatitude" value="${fieldValue(bean: buildingInfoInstance, field: 'buCenterLatitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buLayoutPicture', 'error')} required">
	<label for="buLayoutPicture">
		<g:message code="buildingInfo.buLayoutPicture.label" default="Bu Layout Picture" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="buLayoutPicture" name="buLayoutPicture" />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'buRemark', 'error')} required">
	<label for="buRemark">
		<g:message code="remark.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="buRemark" required="" value="${buildingInfoInstance?.buRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'ownership', 'error')} ">
	<label for="ownership">
		<g:message code="buildingInfo.ownership.label" default="Ownership" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${buildingInfoInstance?.ownership?}" var="o">
    <li><g:link controller="buildingInfoOwnershipInfo" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="buildingInfoOwnershipInfo" action="create" params="['buildingInfo.id': buildingInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'buildingInfoOwnershipInfo.label', default: 'BuildingInfoOwnershipInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'authorizationInfo', 'error')} ">
	<label for="authorizationInfo">
		<g:message code="buildingInfo.authorizationInfo.label" default="Authorization Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${buildingInfoInstance?.authorizationInfo?}" var="a">
    <li><g:link controller="buildingInfoAuthorizationInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="buildingInfoAuthorizationInfo" action="create" params="['buildingInfo.id': buildingInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'buildingInfoAuthorizationInfo.label', default: 'BuildingInfoAuthorizationInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'utilityInfo', 'error')} ">
	<label for="utilityInfo">
		<g:message code="buildingInfo.utilityInfo.label" default="Utility Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${buildingInfoInstance?.utilityInfo?}" var="u">
    <li><g:link controller="buildingInfoUtilityInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="buildingInfoUtilityInfo" action="create" params="['buildingInfo.id': buildingInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'buildingInfoUtilityInfo.label', default: 'BuildingInfoUtilityInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'billingInfo', 'error')} ">
	<label for="billingInfo">
		<g:message code="buildingInfo.billingInfo.label" default="Billing Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${buildingInfoInstance?.billingInfo?}" var="b">
    <li><g:link controller="buildingInfoBillingInfo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="buildingInfoBillingInfo" action="create" params="['buildingInfo.id': buildingInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'buildingInfoBillingInfo.label', default: 'BuildingInfoBillingInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'paymentInfo', 'error')} ">
	<label for="paymentInfo">
		<g:message code="buildingInfo.paymentInfo.label" default="Payment Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${buildingInfoInstance?.paymentInfo?}" var="p">
    <li><g:link controller="buildingInfoPaymentInfo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="buildingInfoPaymentInfo" action="create" params="['buildingInfo.id': buildingInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'buildingInfoPaymentInfo.label', default: 'BuildingInfoPaymentInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoInstance, field: 'floorInfo', 'error')} ">
	<label for="floorInfo">
		<g:message code="buildingInfo.floorInfo.label" default="Floor Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${buildingInfoInstance?.floorInfo?}" var="f">
    <li><g:link controller="floorInfo" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="floorInfo" action="create" params="['buildingInfo.id': buildingInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'floorInfo.label', default: 'FloorInfo')])}"></g:link>
</li>
</ul>


</div>


