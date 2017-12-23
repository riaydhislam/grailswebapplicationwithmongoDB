
<%@ page import="urbandevelopmentinformation.PlotInfo" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plotInfo.label', default: 'PlotInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-plotInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-plotInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list plotInfo">
			
				<g:if test="${plotInfoInstance?.plId}">
				<li class="fieldcontain">
					<span id="plId-label" class="property-label"><g:message code="plId.label" /></span>
					
						<span class="property-value" aria-labelledby="plId-label"><g:fieldValue bean="${plotInfoInstance}" field="plId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plAddressId}">
				<li class="fieldcontain">
					<span id="plAddressId-label" class="property-label"><g:message code="addressId.label" /></span>
					
						<span class="property-value" aria-labelledby="plAddressId-label"><g:fieldValue bean="${plotInfoInstance}" field="plAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plCode}">
				<li class="fieldcontain">
					<span id="plCode-label" class="property-label"><g:message code="plCode.label" /></span>
					
						<span class="property-value" aria-labelledby="plCode-label"><g:fieldValue bean="${plotInfoInstance}" field="plCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plName}">
				<li class="fieldcontain">
					<span id="plName-label" class="property-label"><g:message code="plName.label" default="Pl Name" /></span>
					
						<span class="property-value" aria-labelledby="plName-label"><g:fieldValue bean="${plotInfoInstance}" field="plName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plType}">
				<li class="fieldcontain">
					<span id="plType-label" class="property-label"><g:message code="Type.label" default="Pl Type" /></span>
					
						<span class="property-value" aria-labelledby="plType-label"><g:fieldValue bean="${plotInfoInstance}" field="plType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plNumber}">
				<li class="fieldcontain">
					<span id="plNumber-label" class="property-label"><g:message code="Number.label" default="Pl Number" /></span>
					
						<span class="property-value" aria-labelledby="plNumber-label"><g:fieldValue bean="${plotInfoInstance}" field="plNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plMonzaNumber}">
				<li class="fieldcontain">
					<span id="plMonzaNumber-label" class="property-label"><g:message code="plMonzaNumber.label" default="Pl Monza Number" /></span>
					
						<span class="property-value" aria-labelledby="plMonzaNumber-label"><g:fieldValue bean="${plotInfoInstance}" field="plMonzaNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plCSNumber}">
				<li class="fieldcontain">
					<span id="plCSNumber-label" class="property-label"><g:message code="plCSNumber.label" default="Pl CSN umber" /></span>
					
						<span class="property-value" aria-labelledby="plCSNumber-label"><g:fieldValue bean="${plotInfoInstance}" field="plCSNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plMSNumber}">
				<li class="fieldcontain">
					<span id="plMSNumber-label" class="property-label"><g:message code="plMSNumber.label" default="Pl MSN umber" /></span>
					
						<span class="property-value" aria-labelledby="plMSNumber-label"><g:fieldValue bean="${plotInfoInstance}" field="plMSNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plTotalArea}">
				<li class="fieldcontain">
					<span id="plTotalArea-label" class="property-label"><g:message code="plTotalArea.label" default="Pl Total Area" /></span>
					
						<span class="property-value" aria-labelledby="plTotalArea-label"><g:fieldValue bean="${plotInfoInstance}" field="plTotalArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plTotalBuildingCoverArea}">
				<li class="fieldcontain">
					<span id="plTotalBuildingCoverArea-label" class="property-label"><g:message code="plTotalBuildingCoverArea.label" default="Pl Total Building Cover Area" /></span>
					
						<span class="property-value" aria-labelledby="plTotalBuildingCoverArea-label"><g:fieldValue bean="${plotInfoInstance}" field="plTotalBuildingCoverArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plNumberOfBuilding}">
				<li class="fieldcontain">
					<span id="plNumberOfBuilding-label" class="property-label"><g:message code="plNumberOfBuilding.label" default="Pl Number Of Building" /></span>
					
						<span class="property-value" aria-labelledby="plNumberOfBuilding-label"><g:fieldValue bean="${plotInfoInstance}" field="plNumberOfBuilding"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plHeightFromMSL}">
				<li class="fieldcontain">
					<span id="plHeightFromMSL-label" class="property-label"><g:message code="plHeightFromMSL.label" default="Pl Height From MSL" /></span>
					
						<span class="property-value" aria-labelledby="plHeightFromMSL-label"><g:fieldValue bean="${plotInfoInstance}" field="plHeightFromMSL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plCenterLongitude}">
				<li class="fieldcontain">
					<span id="plCenterLongitude-label" class="property-label"><g:message code="plCenterLongitude.label" default="Pl Center Longitude" /></span>
					
						<span class="property-value" aria-labelledby="plCenterLongitude-label"><g:fieldValue bean="${plotInfoInstance}" field="plCenterLongitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plCenterLatitude}">
				<li class="fieldcontain">
					<span id="plCenterLatitude-label" class="property-label"><g:message code="plCenterLatitude.label" default="Pl Center Latitude" /></span>
					
						<span class="property-value" aria-labelledby="plCenterLatitude-label"><g:fieldValue bean="${plotInfoInstance}" field="plCenterLatitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.plLayoutPicture}">
    <table>
    <tr><td><g:message code="plLayoutPicture.label"/></td>
    <td><img  src="${createLink(controller:'plotInfo', action:'viewImageLayout', id:"${plotInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
       
       <g:if test="${plotInfoInstance?.utilityLocationMap}">
    <table>
    <tr><td><g:message code="utilityLocationMap.label"/></td>
    <td><img  src="${createLink(controller:'plotInfo', action:'viewImageUtilityLocation', id:"${plotInfoInstance.id}")}" />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${plotInfoInstance?.plRemark}">
				<li class="fieldcontain">
					<span id="plRemark-label" class="property-label"><g:message code="Remark.label" /></span>
					
						<span class="property-value" aria-labelledby="plRemark-label"><g:fieldValue bean="${plotInfoInstance}" field="plRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.ownership}">
				<li class="fieldcontain">
					<span id="ownership-label" class="property-label"><g:message code="ownership.label" default="Ownership" /></span>
					
						<g:each in="${plotInfoInstance.ownership}" var="o">
						<span class="property-value" aria-labelledby="ownership-label"><g:link controller="plotInfoOwnershipInfo" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.authorizationInfo}">
				<li class="fieldcontain">
					<span id="authorizationInfo-label" class="property-label"><g:message code="authorizationInfo.label" default="Authorization Info" /></span>
					
						<g:each in="${plotInfoInstance.authorizationInfo}" var="a">
						<span class="property-value" aria-labelledby="authorizationInfo-label"><g:link controller="plotInfoAuthorizationInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.utilityInfo}">
				<li class="fieldcontain">
					<span id="utilityInfo-label" class="property-label"><g:message code="plotInfo.utilityInfo.label" default="Utility Info" /></span>
					
						<g:each in="${plotInfoInstance.utilityInfo}" var="u">
						<span class="property-value" aria-labelledby="utilityInfo-label"><g:link controller="plotInfoUtilityInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.billingInfo}">
				<li class="fieldcontain">
					<span id="billingInfo-label" class="property-label"><g:message code="plotInfo.billingInfo.label" default="Billing Info" /></span>
					
						<g:each in="${plotInfoInstance.billingInfo}" var="b">
						<span class="property-value" aria-labelledby="billingInfo-label"><g:link controller="plotInfoBillingInfo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.paymentInfo}">
				<li class="fieldcontain">
					<span id="paymentInfo-label" class="property-label"><g:message code="plotInfo.paymentInfo.label" default="Payment Info" /></span>
					
						<g:each in="${plotInfoInstance.paymentInfo}" var="p">
						<span class="property-value" aria-labelledby="paymentInfo-label"><g:link controller="plotInfoPaymentInfo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoInstance?.buildingInfo}">
				<li class="fieldcontain">
					<span id="buildingInfo-label" class="property-label"><g:message code="plotInfo.buildingInfo.label" default="Building Info" /></span>
					
						<g:each in="${plotInfoInstance.buildingInfo}" var="b">
						<span class="property-value" aria-labelledby="buildingInfo-label"><g:link controller="buildingInfo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:plotInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${plotInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
