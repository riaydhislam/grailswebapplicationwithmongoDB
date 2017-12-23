<%@ page import="urbandevelopmentinformation.PlotInfo" %>



<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plId', 'error')} required">
	<label for="plId">
		<g:message code="plId.label"  />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="plId" type="number" value="${plotInfoInstance.plId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plAddressId', 'error')} required">
 <label for="plAddressId">
  <b><g:message code="alId.label"/></b>
  <span class="required-indicator">*</span>
 </label>
 <g:field name="plAddressId" type="number" value="${plotInfoInstance.plAddressId}" required=""/>
 
 <g:link controller="applicationDataSearchs" action="addressListUserRegistrationForPlot">
    <input type="button" value="<g:message code="addressLocation.search.label"/>" > </g:link>

</div>



<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plName', 'error')} required">
	<label for="plName">
		<g:message code="plName.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="plName" required="" value="${plotInfoInstance?.plName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plCode', 'error')} required">
 <label for="plCode">
  <g:message code="code.label"/>
  <span class="required-indicator">*</span>
 </label>
 <g:select name="plCode" from="${[
    message(code:'useType.plot.code.1.label'),
    message(code:'useType.plot.code.2.label'),
    message(code:'useType.plot.code.3.label'),
       message(code:'useType.plot.code.4.label'),
    message(code:'useType.plot.code.5.label'),
    message(code:'useType.plot.code.6.label'),
    message(code:'useType.plot.code.7.label'),
    message(code:'useType.plot.code.8.label'),
    message(code:'useType.plot.code.9.label'),
    message(code:'useType.plot.code.10.label'),
    message(code:'useType.plot.code.11.label'),
    message(code:'useType.plot.code.12.label'),
    message(code:'useType.plot.code.13.label'),
    message(code:'useType.plot.code.14.label')
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plType', 'error')} required">
 <label for="plType">
  <g:message code="type.label"/>
  <span class="required-indicator">*</span>
 </label>
 
     <g:select name="plType" from="${[
    message(code:'useType.plot.1.label'),
    message(code:'useType.plot.2.label'),
    message(code:'useType.plot.3.label'),
       message(code:'useType.plot.4.label'),
    message(code:'useType.plot.5.label'),
    message(code:'useType.plot.6.label'),
    message(code:'useType.plot.7.label'),
    message(code:'useType.plot.8.label'),
    message(code:'useType.plot.9.label'),
    message(code:'useType.plot.10.label'),
    message(code:'useType.plot.11.label'),
    message(code:'useType.plot.12.label'),
    message(code:'useType.plot.13.label'),
    message(code:'useType.plot.14.label')
     ]}" onSelection="${[(null):message(code:'general.any')] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plNumber', 'error')} required">
	<label for="plNumber">
		<g:message code="Number.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="plNumber" required="" value="${plotInfoInstance?.plNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plMonzaNumber', 'error')} required">
	<label for="plMonzaNumber">
		<g:message code="plMonzaNumber.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="plMonzaNumber" required="" value="${plotInfoInstance?.plMonzaNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plCSNumber', 'error')} required">
	<label for="plCSNumber">
		<g:message code="plCSNumber.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="plCSNumber" required="" value="${plotInfoInstance?.plCSNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plMSNumber', 'error')} required">
	<label for="plMSNumber">
		<g:message code="plMSNumber.label"  />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="plMSNumber" required="" value="${plotInfoInstance?.plMSNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plTotalArea', 'error')} required">
	<label for="plTotalArea">
		<g:message code="plTotalArea.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="plTotalArea" value="${fieldValue(bean: plotInfoInstance, field: 'plTotalArea')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plTotalBuildingCoverArea', 'error')} required">
	<label for="plTotalBuildingCoverArea">
		<g:message code="plTotalBuildingCoverArea.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="plTotalBuildingCoverArea" value="${fieldValue(bean: plotInfoInstance, field: 'plTotalBuildingCoverArea')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plNumberOfBuilding', 'error')} required">
	<label for="plNumberOfBuilding">
		<g:message code="plNumberOfBuilding.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="plNumberOfBuilding" value="${fieldValue(bean: plotInfoInstance, field: 'plNumberOfBuilding')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plHeightFromMSL', 'error')} required">
	<label for="plHeightFromMSL">
		<g:message code="plHeightFromMSL.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="plHeightFromMSL" value="${fieldValue(bean: plotInfoInstance, field: 'plHeightFromMSL')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plCenterLongitude', 'error')} required">
	<label for="plCenterLongitude">
		<g:message code="plCenterLongitude.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="plCenterLongitude" value="${fieldValue(bean: plotInfoInstance, field: 'plCenterLongitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plCenterLatitude', 'error')} required">
	<label for="plCenterLatitude">
		<g:message code="plCenterLatitude.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:field name="plCenterLatitude" value="${fieldValue(bean: plotInfoInstance, field: 'plCenterLatitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plLayoutPicture', 'error')} required">
	<label for="plLayoutPicture">
		<g:message code="plLayoutPicture.label" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="plLayoutPicture" name="plLayoutPicture" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'utilityLocationMap', 'error')} required">
	<label for="utilityLocationMap">
		<g:message code="utilityLocationMap.label"/>
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="utilityLocationMap" name="utilityLocationMap" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'plRemark', 'error')} required">
	<label for="plRemark">
		<g:message code="Remark.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="plRemark" required="" value="${plotInfoInstance?.plRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'ownership', 'error')} ">
	<label for="ownership">
	
		 <g:message code="plotInfo.ownership.label" default="Ownership" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${plotInfoInstance?.ownership?}" var="o">


    <li><g:link controller="plotInfoOwnershipInfo" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="plotInfoOwnershipInfo" action="create" params="['plotInfo.id': plotInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'plotInfoOwnershipInfo.label', default: 'PlotInfoOwnershipInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'authorizationInfo', 'error')} ">
	<label for="authorizationInfo">
		<g:message code="plotInfo.authorizationInfo.label" default="Authorization Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${plotInfoInstance?.authorizationInfo?}" var="a">
    <li><g:link controller="plotInfoAuthorizationInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="plotInfoAuthorizationInfo" action="create" params="['plotInfo.id': plotInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'plotInfoAuthorizationInfo.label', default: 'PlotInfoAuthorizationInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'utilityInfo', 'error')} ">
	<label for="utilityInfo">
		<g:message code="plotInfo.utilityInfo.label" default="Utility Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${plotInfoInstance?.utilityInfo?}" var="u">
    <li><g:link controller="plotInfoUtilityInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="plotInfoUtilityInfo" action="create" params="['plotInfo.id': plotInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'plotInfoUtilityInfo.label', default: 'PlotInfoUtilityInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'billingInfo', 'error')} ">
	<label for="billingInfo">
		<g:message code="plotInfo.billingInfo.label" default="Billing Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${plotInfoInstance?.billingInfo?}" var="b">
    <li><g:link controller="plotInfoBillingInfo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="plotInfoBillingInfo" action="create" params="['plotInfo.id': plotInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'plotInfoBillingInfo.label', default: 'PlotInfoBillingInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'paymentInfo', 'error')} ">
	<label for="paymentInfo">
		<g:message code="plotInfo.paymentInfo.label" default="Payment Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${plotInfoInstance?.paymentInfo?}" var="p">
    <li><g:link controller="plotInfoPaymentInfo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="plotInfoPaymentInfo" action="create" params="['plotInfo.id': plotInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'plotInfoPaymentInfo.label', default: 'PlotInfoPaymentInfo')])}"></g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoInstance, field: 'buildingInfo', 'error')} ">
	<label for="buildingInfo">
		<g:message code="plotInfo.buildingInfo.label" default="Building Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${plotInfoInstance?.buildingInfo?}" var="b">
    <li><g:link controller="buildingInfo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="buildingInfo" action="create" params="['plotInfo.id': plotInfoInstance?.id]"><input type="button" value="${message(code: 'default.add.label', args: [message(code: 'buildingInfo.label', default: 'BuildingInfo')])}"></g:link>
</li>
</ul>


</div>

