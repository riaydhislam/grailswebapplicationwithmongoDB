
<%@ page import="urbandevelopmentinformation.BuildingInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buildingInfo.label', default: 'BuildingInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-buildingInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-buildingInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list buildingInfo">
			
				<g:if test="${buildingInfoInstance?.buId}">
				<li class="fieldcontain">
					<span id="buId-label" class="property-label"><g:message code="buildingInfo.buId.label" default="Bu Id" /></span>
					
						<span class="property-value" aria-labelledby="buId-label"><g:fieldValue bean="${buildingInfoInstance}" field="buId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buAddressId}">
				<li class="fieldcontain">
					<span id="buAddressId-label" class="property-label"><g:message code="buildingInfo.buAddressId.label" default="Bu Address Id" /></span>
					
						<span class="property-value" aria-labelledby="buAddressId-label"><g:fieldValue bean="${buildingInfoInstance}" field="buAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buPlId}">
				<li class="fieldcontain">
					<span id="buPlId-label" class="property-label"><g:message code="buildingInfo.buPlId.label" default="Bu Pl Id" /></span>
					
						<span class="property-value" aria-labelledby="buPlId-label"><g:fieldValue bean="${buildingInfoInstance}" field="buPlId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buCode}">
				<li class="fieldcontain">
					<span id="buCode-label" class="property-label"><g:message code="buildingInfo.buCode.label" default="Bu Code" /></span>
					
						<span class="property-value" aria-labelledby="buCode-label"><g:fieldValue bean="${buildingInfoInstance}" field="buCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buName}">
				<li class="fieldcontain">
					<span id="buName-label" class="property-label"><g:message code="buildingInfo.buName.label" default="Bu Name" /></span>
					
						<span class="property-value" aria-labelledby="buName-label"><g:fieldValue bean="${buildingInfoInstance}" field="buName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buUseType}">
				<li class="fieldcontain">
					<span id="buUseType-label" class="property-label"><g:message code="buildingInfo.buUseType.label" default="Bu Use Type" /></span>
					
						<span class="property-value" aria-labelledby="buUseType-label"><g:fieldValue bean="${buildingInfoInstance}" field="buUseType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buNumberOfFloor}">
				<li class="fieldcontain">
					<span id="buNumberOfFloor-label" class="property-label"><g:message code="buildingInfo.buNumberOfFloor.label" default="Bu Number Of Floor" /></span>
					
						<span class="property-value" aria-labelledby="buNumberOfFloor-label"><g:fieldValue bean="${buildingInfoInstance}" field="buNumberOfFloor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buTotalHeight}">
				<li class="fieldcontain">
					<span id="buTotalHeight-label" class="property-label"><g:message code="buildingInfo.buTotalHeight.label" default="Bu Total Height" /></span>
					
						<span class="property-value" aria-labelledby="buTotalHeight-label"><g:fieldValue bean="${buildingInfoInstance}" field="buTotalHeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buNumberOfFloorUnit}">
				<li class="fieldcontain">
					<span id="buNumberOfFloorUnit-label" class="property-label"><g:message code="buildingInfo.buNumberOfFloorUnit.label" default="Bu Number Of Floor Unit" /></span>
					
						<span class="property-value" aria-labelledby="buNumberOfFloorUnit-label"><g:fieldValue bean="${buildingInfoInstance}" field="buNumberOfFloorUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buTotalGroundArea}">
				<li class="fieldcontain">
					<span id="buTotalGroundArea-label" class="property-label"><g:message code="buildingInfo.buTotalGroundArea.label" default="Bu Total Ground Area" /></span>
					
						<span class="property-value" aria-labelledby="buTotalGroundArea-label"><g:fieldValue bean="${buildingInfoInstance}" field="buTotalGroundArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buTotalFloorArea}">
				<li class="fieldcontain">
					<span id="buTotalFloorArea-label" class="property-label"><g:message code="buildingInfo.buTotalFloorArea.label" default="Bu Total Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="buTotalFloorArea-label"><g:fieldValue bean="${buildingInfoInstance}" field="buTotalFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buSetBackFront}">
				<li class="fieldcontain">
					<span id="buSetBackFront-label" class="property-label"><g:message code="buildingInfo.buSetBackFront.label" default="Bu Set Back Front" /></span>
					
						<span class="property-value" aria-labelledby="buSetBackFront-label"><g:fieldValue bean="${buildingInfoInstance}" field="buSetBackFront"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buSetBackBack}">
				<li class="fieldcontain">
					<span id="buSetBackBack-label" class="property-label"><g:message code="buildingInfo.buSetBackBack.label" default="Bu Set Back Back" /></span>
					
						<span class="property-value" aria-labelledby="buSetBackBack-label"><g:fieldValue bean="${buildingInfoInstance}" field="buSetBackBack"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buSetBackRight}">
				<li class="fieldcontain">
					<span id="buSetBackRight-label" class="property-label"><g:message code="buildingInfo.buSetBackRight.label" default="Bu Set Back Right" /></span>
					
						<span class="property-value" aria-labelledby="buSetBackRight-label"><g:fieldValue bean="${buildingInfoInstance}" field="buSetBackRight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buSetBackLeft}">
				<li class="fieldcontain">
					<span id="buSetBackLeft-label" class="property-label"><g:message code="buildingInfo.buSetBackLeft.label" default="Bu Set Back Left" /></span>
					
						<span class="property-value" aria-labelledby="buSetBackLeft-label"><g:fieldValue bean="${buildingInfoInstance}" field="buSetBackLeft"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buCenterLongitude}">
				<li class="fieldcontain">
					<span id="buCenterLongitude-label" class="property-label"><g:message code="buildingInfo.buCenterLongitude.label" default="Bu Center Longitude" /></span>
					
						<span class="property-value" aria-labelledby="buCenterLongitude-label"><g:fieldValue bean="${buildingInfoInstance}" field="buCenterLongitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.buCenterLatitude}">
				<li class="fieldcontain">
					<span id="buCenterLatitude-label" class="property-label"><g:message code="buildingInfo.buCenterLatitude.label" default="Bu Center Latitude" /></span>
					
						<span class="property-value" aria-labelledby="buCenterLatitude-label"><g:fieldValue bean="${buildingInfoInstance}" field="buCenterLatitude"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${buildingInfoInstance?.buRemark}">
				<li class="fieldcontain">
					<span id="buRemark-label" class="property-label"><g:message code="buildingInfo.buRemark.label" default="Bu Remark" /></span>
					
						<span class="property-value" aria-labelledby="buRemark-label"><g:fieldValue bean="${buildingInfoInstance}" field="buRemark"/></span>
					
				</li>
				</g:if>
			
	<g:if test="${buildingInfoInstance?.buLayoutPicture}">
    <table>
    <tr><td><g:message code="plotInfo.utilityLocationMap.label"/></td>
    <td><img  src="${createLink(controller:'buildingInfo', action:'viewImageBuildingLayout', id:"${buildingInfoInstance.id}")}" />
    </td>
    </tr>
    </table>
       </g:if>
			
			
				
			
				
			
				<g:if test="${buildingInfoInstance?.ownership}">
				<li class="fieldcontain">
					<span id="ownership-label" class="property-label"><g:message code="buildingInfo.ownership.label" default="Ownership" /></span>
					
						<g:each in="${buildingInfoInstance.ownership}" var="o">
						<span class="property-value" aria-labelledby="ownership-label"><g:link controller="buildingInfoOwnershipInfo" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.authorizationInfo}">
				<li class="fieldcontain">
					<span id="authorizationInfo-label" class="property-label"><g:message code="buildingInfo.authorizationInfo.label" default="Authorization Info" /></span>
					
						<g:each in="${buildingInfoInstance.authorizationInfo}" var="a">
						<span class="property-value" aria-labelledby="authorizationInfo-label"><g:link controller="buildingInfoAuthorizationInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.utilityInfo}">
				<li class="fieldcontain">
					<span id="utilityInfo-label" class="property-label"><g:message code="buildingInfo.utilityInfo.label" default="Utility Info" /></span>
					
						<g:each in="${buildingInfoInstance.utilityInfo}" var="u">
						<span class="property-value" aria-labelledby="utilityInfo-label"><g:link controller="buildingInfoUtilityInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.billingInfo}">
				<li class="fieldcontain">
					<span id="billingInfo-label" class="property-label"><g:message code="buildingInfo.billingInfo.label" default="Billing Info" /></span>
					
						<g:each in="${buildingInfoInstance.billingInfo}" var="b">
						<span class="property-value" aria-labelledby="billingInfo-label"><g:link controller="buildingInfoBillingInfo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.paymentInfo}">
				<li class="fieldcontain">
					<span id="paymentInfo-label" class="property-label"><g:message code="buildingInfo.paymentInfo.label" default="Payment Info" /></span>
					
						<g:each in="${buildingInfoInstance.paymentInfo}" var="p">
						<span class="property-value" aria-labelledby="paymentInfo-label"><g:link controller="buildingInfoPaymentInfo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.floorInfo}">
				<li class="fieldcontain">
					<span id="floorInfo-label" class="property-label"><g:message code="buildingInfo.floorInfo.label" default="Floor Info" /></span>
					
						<g:each in="${buildingInfoInstance.floorInfo}" var="f">
						<span class="property-value" aria-labelledby="floorInfo-label"><g:link controller="floorInfo" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoInstance?.plotInfo}">
				<li class="fieldcontain">
					<span id="plotInfo-label" class="property-label"><g:message code="buildingInfo.plotInfo.label" default="Plot Info" /></span>
					
						<span class="property-value" aria-labelledby="plotInfo-label"><g:link controller="plotInfo" action="show" id="${buildingInfoInstance?.plotInfo?.id}">${buildingInfoInstance?.plotInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:buildingInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${buildingInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
