
<%@ page import="urbandevelopmentinformation.FloorInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfo.label', default: 'FloorInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-floorInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-floorInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list floorInfo">
			
				<g:if test="${floorInfoInstance?.flId}">
				<li class="fieldcontain">
					<span id="flId-label" class="property-label"><g:message code="floorInfo.flId.label" default="Fl Id" /></span>
					
						<span class="property-value" aria-labelledby="flId-label"><g:fieldValue bean="${floorInfoInstance}" field="flId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.flBuId}">
				<li class="fieldcontain">
					<span id="flBuId-label" class="property-label"><g:message code="floorInfo.flBuId.label" default="Fl Bu Id" /></span>
					
						<span class="property-value" aria-labelledby="flBuId-label"><g:fieldValue bean="${floorInfoInstance}" field="flBuId"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${floorInfoInstance?.flAddressId}">
				<li class="fieldcontain">
					<span id="flAddressId-label" class="property-label"><g:message code="addressId.label" /></span>
					
						<span class="property-value" aria-labelledby="flAddressId-label"><g:fieldValue bean="${floorInfoInstance}" field="flAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.flCode}">
				<li class="fieldcontain">
					<span id="flCode-label" class="property-label"><g:message code="floorInfo.flCode.label" default="Fl Code" /></span>
					
						<span class="property-value" aria-labelledby="flCode-label"><g:fieldValue bean="${floorInfoInstance}" field="flCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.flName}">
				<li class="fieldcontain">
					<span id="flName-label" class="property-label"><g:message code="floorInfo.flName.label" default="Fl Name" /></span>
					
						<span class="property-value" aria-labelledby="flName-label"><g:fieldValue bean="${floorInfoInstance}" field="flName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.flUseType}">
				<li class="fieldcontain">
					<span id="flUseType-label" class="property-label"><g:message code="floorInfo.flUseType.label" default="Fl Use Type" /></span>
					
						<span class="property-value" aria-labelledby="flUseType-label"><g:fieldValue bean="${floorInfoInstance}" field="flUseType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.flNumberOfFloorUnit}">
				<li class="fieldcontain">
					<span id="flNumberOfFloorUnit-label" class="property-label"><g:message code="floorInfo.flNumberOfFloorUnit.label" default="Fl Number Of Floor Unit" /></span>
					
						<span class="property-value" aria-labelledby="flNumberOfFloorUnit-label"><g:fieldValue bean="${floorInfoInstance}" field="flNumberOfFloorUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.flTotalFloorArea}">
				<li class="fieldcontain">
					<span id="flTotalFloorArea-label" class="property-label"><g:message code="floorInfo.flTotalFloorArea.label" default="Fl Total Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="flTotalFloorArea-label"><g:fieldValue bean="${floorInfoInstance}" field="flTotalFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.flTotalFloorHeight}">
				<li class="fieldcontain">
					<span id="flTotalFloorHeight-label" class="property-label"><g:message code="floorInfo.flTotalFloorHeight.label" default="Fl Total Floor Height" /></span>
					
						<span class="property-value" aria-labelledby="flTotalFloorHeight-label"><g:fieldValue bean="${floorInfoInstance}" field="flTotalFloorHeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.flCenterLongitude}">
				<li class="fieldcontain">
					<span id="flCenterLongitude-label" class="property-label"><g:message code="floorInfo.flCenterLongitude.label" default="Fl Center Longitude" /></span>
					
						<span class="property-value" aria-labelledby="flCenterLongitude-label"><g:fieldValue bean="${floorInfoInstance}" field="flCenterLongitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.flCenterLatitude}">
				<li class="fieldcontain">
					<span id="flCenterLatitude-label" class="property-label"><g:message code="floorInfo.flCenterLatitude.label" default="Fl Center Latitude" /></span>
					
						<span class="property-value" aria-labelledby="flCenterLatitude-label"><g:fieldValue bean="${floorInfoInstance}" field="flCenterLatitude"/></span>
					
				</li>
				</g:if>
			
			
			
	<g:if test="${floorInfoInstance?.flLayoutPicture}">
    <table>
    <tr><td><g:message code="floorInfo.utilityLocationMap.label"/></td>
    <td><img  src="${createLink(controller:'floorInfo', action:'viewImageFloorLayout', id:"${floorInfoInstance.id}")}" />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${floorInfoInstance?.flRemark}">
				<li class="fieldcontain">
					<span id="flRemark-label" class="property-label"><g:message code="remark.label"/></span>
					
						<span class="property-value" aria-labelledby="flRemark-label"><g:fieldValue bean="${floorInfoInstance}" field="flRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.ownership}">
				<li class="fieldcontain">
					<span id="ownership-label" class="property-label"><g:message code="floorInfo.ownership.label" default="Ownership" /></span>
					
						<g:each in="${floorInfoInstance.ownership}" var="o">
						<span class="property-value" aria-labelledby="ownership-label"><g:link controller="floorInfoOwnershipInfo" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.authorizationInfo}">
				<li class="fieldcontain">
					<span id="authorizationInfo-label" class="property-label"><g:message code="floorInfo.authorizationInfo.label" default="Authorization Info" /></span>
					
						<g:each in="${floorInfoInstance.authorizationInfo}" var="a">
						<span class="property-value" aria-labelledby="authorizationInfo-label"><g:link controller="floorInfoAuthorizationInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.utilityInfo}">
				<li class="fieldcontain">
					<span id="utilityInfo-label" class="property-label"><g:message code="floorInfo.utilityInfo.label" default="Utility Info" /></span>
					
						<g:each in="${floorInfoInstance.utilityInfo}" var="u">
						<span class="property-value" aria-labelledby="utilityInfo-label"><g:link controller="floorInfoUtilityInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.billingInfo}">
				<li class="fieldcontain">
					<span id="billingInfo-label" class="property-label"><g:message code="floorInfo.billingInfo.label" default="Billing Info" /></span>
					
						<g:each in="${floorInfoInstance.billingInfo}" var="b">
						<span class="property-value" aria-labelledby="billingInfo-label"><g:link controller="floorInfoBillingInfo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.paymentInfo}">
				<li class="fieldcontain">
					<span id="paymentInfo-label" class="property-label"><g:message code="floorInfo.paymentInfo.label" default="Payment Info" /></span>
					
						<g:each in="${floorInfoInstance.paymentInfo}" var="p">
						<span class="property-value" aria-labelledby="paymentInfo-label"><g:link controller="floorInfoPaymentInfo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.unitInfo}">
				<li class="fieldcontain">
					<span id="unitInfo-label" class="property-label"><g:message code="floorInfo.unitInfo.label" default="Unit Info" /></span>
					
						<g:each in="${floorInfoInstance.unitInfo}" var="u">
						<span class="property-value" aria-labelledby="unitInfo-label"><g:link controller="unitInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoInstance?.buildingInfo}">
				<li class="fieldcontain">
					<span id="buildingInfo-label" class="property-label"><g:message code="floorInfo.buildingInfo.label" default="Building Info" /></span>
					
						<span class="property-value" aria-labelledby="buildingInfo-label"><g:link controller="buildingInfo" action="show" id="${floorInfoInstance?.buildingInfo?.id}">${floorInfoInstance?.buildingInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:floorInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${floorInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
