
<%@ page import="urbandevelopmentinformation.UnitInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfo.label', default: 'UnitInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-unitInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-unitInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list unitInfo">
			
				<g:if test="${unitInfoInstance?.unId}">
				<li class="fieldcontain">
					<span id="unId-label" class="property-label"><g:message code="unitInfo.unId.label" default="Un Id" /></span>
					
						<span class="property-value" aria-labelledby="unId-label"><g:fieldValue bean="${unitInfoInstance}" field="unId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.unflId}">
				<li class="fieldcontain">
					<span id="unflId-label" class="property-label"><g:message code="unitInfo.unflId.label" default="Unfl Id" /></span>
					
						<span class="property-value" aria-labelledby="unflId-label"><g:fieldValue bean="${unitInfoInstance}" field="unflId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.unCode}">
				<li class="fieldcontain">
					<span id="unCode-label" class="property-label"><g:message code="unitInfo.unCode.label" default="Un Code" /></span>
					
						<span class="property-value" aria-labelledby="unCode-label"><g:fieldValue bean="${unitInfoInstance}" field="unCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.unName}">
				<li class="fieldcontain">
					<span id="unName-label" class="property-label"><g:message code="unitInfo.unName.label" default="Un Name" /></span>
					
						<span class="property-value" aria-labelledby="unName-label"><g:fieldValue bean="${unitInfoInstance}" field="unName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.unUseType}">
				<li class="fieldcontain">
					<span id="unUseType-label" class="property-label"><g:message code="unitInfo.unUseType.label" default="Un Use Type" /></span>
					
						<span class="property-value" aria-labelledby="unUseType-label"><g:fieldValue bean="${unitInfoInstance}" field="unUseType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.unNumberOfFloorUnit}">
				<li class="fieldcontain">
					<span id="unNumberOfFloorUnit-label" class="property-label"><g:message code="unitInfo.unNumberOfFloorUnit.label" default="Un Number Of Floor Unit" /></span>
					
						<span class="property-value" aria-labelledby="unNumberOfFloorUnit-label"><g:fieldValue bean="${unitInfoInstance}" field="unNumberOfFloorUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.unTotalUnitArea}">
				<li class="fieldcontain">
					<span id="unTotalUnitArea-label" class="property-label"><g:message code="unitInfo.unTotalUnitArea.label" default="Un Total Unit Area" /></span>
					
						<span class="property-value" aria-labelledby="unTotalUnitArea-label"><g:fieldValue bean="${unitInfoInstance}" field="unTotalUnitArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.unTotalHeight}">
				<li class="fieldcontain">
					<span id="unTotalHeight-label" class="property-label"><g:message code="unitInfo.unTotalHeight.label" default="Un Total Height" /></span>
					
						<span class="property-value" aria-labelledby="unTotalHeight-label"><g:fieldValue bean="${unitInfoInstance}" field="unTotalHeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.unCenterLongitude}">
				<li class="fieldcontain">
					<span id="unCenterLongitude-label" class="property-label"><g:message code="unitInfo.unCenterLongitude.label" default="Un Center Longitude" /></span>
					
						<span class="property-value" aria-labelledby="unCenterLongitude-label"><g:fieldValue bean="${unitInfoInstance}" field="unCenterLongitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.unCenterLatitude}">
				<li class="fieldcontain">
					<span id="unCenterLatitude-label" class="property-label"><g:message code="unitInfo.unCenterLatitude.label" default="Un Center Latitude" /></span>
					
						<span class="property-value" aria-labelledby="unCenterLatitude-label"><g:fieldValue bean="${unitInfoInstance}" field="unCenterLatitude"/></span>
					
				</li>
				</g:if>
			
				
				<g:if test="${unitInfoInstance?.unLayoutPicture}">
    <table>
    <tr><td><g:message code="plLayoutPicture.label"/></td>
    <td><img  src="${createLink(controller:'unitInfo', action:'viewImageLayout', id:"${unitInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
				
				
			
				<g:if test="${unitInfoInstance?.unRemark}">
				<li class="fieldcontain">
					<span id="unRemark-label" class="property-label"><g:message code="unitInfo.unRemark.label" default="Un Remark" /></span>
					
						<span class="property-value" aria-labelledby="unRemark-label"><g:fieldValue bean="${unitInfoInstance}" field="unRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.ownership}">
				<li class="fieldcontain">
					<span id="ownership-label" class="property-label"><g:message code="unitInfo.ownership.label" default="Ownership" /></span>
					
						<g:each in="${unitInfoInstance.ownership}" var="o">
						<span class="property-value" aria-labelledby="ownership-label"><g:link controller="unitInfoOwnershipInfo" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.authorizationInfo}">
				<li class="fieldcontain">
					<span id="authorizationInfo-label" class="property-label"><g:message code="unitInfo.authorizationInfo.label" default="Authorization Info" /></span>
					
						<g:each in="${unitInfoInstance.authorizationInfo}" var="a">
						<span class="property-value" aria-labelledby="authorizationInfo-label"><g:link controller="unitInfoAuthorizationInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.utilityInfo}">
				<li class="fieldcontain">
					<span id="utilityInfo-label" class="property-label"><g:message code="unitInfo.utilityInfo.label" default="Utility Info" /></span>
					
						<g:each in="${unitInfoInstance.utilityInfo}" var="u">
						<span class="property-value" aria-labelledby="utilityInfo-label"><g:link controller="unitInfoUtilityInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.billingInfo}">
				<li class="fieldcontain">
					<span id="billingInfo-label" class="property-label"><g:message code="unitInfo.billingInfo.label" default="Billing Info" /></span>
					
						<g:each in="${unitInfoInstance.billingInfo}" var="b">
						<span class="property-value" aria-labelledby="billingInfo-label"><g:link controller="unitInfoBillingInfo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.paymentInfo}">
				<li class="fieldcontain">
					<span id="paymentInfo-label" class="property-label"><g:message code="unitInfo.paymentInfo.label" default="Payment Info" /></span>
					
						<g:each in="${unitInfoInstance.paymentInfo}" var="p">
						<span class="property-value" aria-labelledby="paymentInfo-label"><g:link controller="unitInfoPaymentInfo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoInstance?.floorInfo}">
				<li class="fieldcontain">
					<span id="floorInfo-label" class="property-label"><g:message code="unitInfo.floorInfo.label" default="Floor Info" /></span>
					
						<span class="property-value" aria-labelledby="floorInfo-label"><g:link controller="floorInfo" action="show" id="${unitInfoInstance?.floorInfo?.id}">${unitInfoInstance?.floorInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:unitInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${unitInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
