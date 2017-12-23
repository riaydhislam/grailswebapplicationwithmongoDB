
<%@ page import="urbandevelopmentinformation.AddressLocationInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'addressLocationInfo.label', default: 'AddressLocationInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-addressLocationInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-addressLocationInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list addressLocationInfo">
			
				<g:if test="${addressLocationInfoInstance?.alId}">
				<li class="fieldcontain">
					<span id="alId-label" class="property-label"><g:message code="address.locationInfo.alId.label" default="Al Id" /></span>
					
						<span class="property-value" aria-labelledby="alId-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alId"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${addressLocationInfoInstance?.adId}">
				<li class="fieldcontain">
					<span id="adId-label" class="property-label"><g:message code="adId.label"/></span>
					
						<span class="property-value" aria-labelledby="adId-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="adId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alReferenceId}">
				<li class="fieldcontain">
					<span id="alReferenceId-label" class="property-label"><g:message code="addressLocationInfo.alReferenceId.label" default="Al Reference Id" /></span>
					
						<span class="property-value" aria-labelledby="alReferenceId-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alReferenceId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alType}">
				<li class="fieldcontain">
					<span id="alType-label" class="property-label"><g:message code="addressLocationInfo.alType.label" default="Al Type" /></span>
					
						<span class="property-value" aria-labelledby="alType-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alThanaCode}">
				<li class="fieldcontain">
					<span id="alThanaCode-label" class="property-label"><g:message code="addressLocationInfo.alThanaCode.label" default="Al Thana Code" /></span>
					
						<span class="property-value" aria-labelledby="alThanaCode-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alThanaCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alDistictCode}">
				<li class="fieldcontain">
					<span id="alDistictCode-label" class="property-label"><g:message code="addressLocationInfo.alDistictCode.label" default="Al Distict Code" /></span>
					
						<span class="property-value" aria-labelledby="alDistictCode-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alDistictCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alDivisionName}">
				<li class="fieldcontain">
					<span id="alDivisionName-label" class="property-label"><g:message code="addressLocationInfo.alDivisionName.label" default="Al Division Name" /></span>
					
						<span class="property-value" aria-labelledby="alDivisionName-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alDivisionName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alDistictName}">
				<li class="fieldcontain">
					<span id="alDistictName-label" class="property-label"><g:message code="addressLocationInfo.alDistictName.label" default="Al Distict Name" /></span>
					
						<span class="property-value" aria-labelledby="alDistictName-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alDistictName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alUpzillaOrThanaName}">
				<li class="fieldcontain">
					<span id="alUpzillaOrThanaName-label" class="property-label"><g:message code="addressLocationInfo.alUpzillaOrThanaName.label" default="Al Upzilla Or Thana Name" /></span>
					
						<span class="property-value" aria-labelledby="alUpzillaOrThanaName-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alUpzillaOrThanaName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alUnionName}">
				<li class="fieldcontain">
					<span id="alUnionName-label" class="property-label"><g:message code="addressLocationInfo.alUnionName.label" default="Al Union Name" /></span>
					
						<span class="property-value" aria-labelledby="alUnionName-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alUnionName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alWardNumber}">
				<li class="fieldcontain">
					<span id="alWardNumber-label" class="property-label"><g:message code="addressLocationInfo.alWardNumber.label" default="Al Ward Number" /></span>
					
						<span class="property-value" aria-labelledby="alWardNumber-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alWardNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alBlockNumber}">
				<li class="fieldcontain">
					<span id="alBlockNumber-label" class="property-label"><g:message code="addressLocationInfo.alBlockNumber.label" default="Al Block Number" /></span>
					
						<span class="property-value" aria-labelledby="alBlockNumber-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alBlockNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alSectionNumber}">
				<li class="fieldcontain">
					<span id="alSectionNumber-label" class="property-label"><g:message code="addressLocationInfo.alSectionNumber.label" default="Al Section Number" /></span>
					
						<span class="property-value" aria-labelledby="alSectionNumber-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alSectionNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alRoadName}">
				<li class="fieldcontain">
					<span id="alRoadName-label" class="property-label"><g:message code="addressLocationInfo.alRoadName.label" default="Al Road Name" /></span>
					
						<span class="property-value" aria-labelledby="alRoadName-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alRoadName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alRoadType}">
				<li class="fieldcontain">
					<span id="alRoadType-label" class="property-label"><g:message code="addressLocationInfo.alRoadType.label" default="Al Road Type" /></span>
					
						<span class="property-value" aria-labelledby="alRoadType-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alRoadType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alRoadNumber}">
				<li class="fieldcontain">
					<span id="alRoadNumber-label" class="property-label"><g:message code="addressLocationInfo.alRoadNumber.label" default="Al Road Number" /></span>
					
						<span class="property-value" aria-labelledby="alRoadNumber-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alRoadNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alBuildingNumber}">
				<li class="fieldcontain">
					<span id="alBuildingNumber-label" class="property-label"><g:message code="addressLocationInfo.alBuildingNumber.label" default="Al Building Number" /></span>
					
						<span class="property-value" aria-labelledby="alBuildingNumber-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alBuildingNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alBuildingFloorNumber}">
				<li class="fieldcontain">
					<span id="alBuildingFloorNumber-label" class="property-label"><g:message code="addressLocationInfo.alBuildingFloorNumber.label" default="Al Building Floor Number" /></span>
					
						<span class="property-value" aria-labelledby="alBuildingFloorNumber-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alBuildingFloorNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressLocationInfoInstance?.alBuildingFloorUnitNumber}">
				<li class="fieldcontain">
					<span id="alBuildingFloorUnitNumber-label" class="property-label"><g:message code="addressLocationInfo.alBuildingFloorUnitNumber.label" default="Al Building Floor Unit Number" /></span>
					
						<span class="property-value" aria-labelledby="alBuildingFloorUnitNumber-label"><g:fieldValue bean="${addressLocationInfoInstance}" field="alBuildingFloorUnitNumber"/></span>
					
				</li>
				</g:if>
			
				
				
				
				<g:if test="${addressLocationInfoInstance?.alLocationPic}">
    <table>
    <tr><td><g:message code="addressLocationInfo.alLocationPic.label"/></td>
    <td><img  src="${createLink(controller:'addressLocationInfo', action:'viewImageLayoutLocation', id:"${addressLocationInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${addressLocationInfoInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="addressLocationInfo.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:link controller="addressInfo" action="show" id="${addressLocationInfoInstance?.address?.id}">${addressLocationInfoInstance?.address?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:addressLocationInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${addressLocationInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
