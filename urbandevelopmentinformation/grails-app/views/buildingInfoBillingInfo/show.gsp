
<%@ page import="urbandevelopmentinformation.BuildingInfoBillingInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buildingInfoBillingInfo.label', default: 'BuildingInfoBillingInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-buildingInfoBillingInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-buildingInfoBillingInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list buildingInfoBillingInfo">
			
				<g:if test="${buildingInfoBillingInfoInstance?.biId}">
				<li class="fieldcontain">
					<span id="biId-label" class="property-label"><g:message code="buildingInfoBillingInfo.biId.label" default="Bi Id" /></span>
					
						<span class="property-value" aria-labelledby="biId-label"><g:fieldValue bean="${buildingInfoBillingInfoInstance}" field="biId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biCreaterAddressId}">
				<li class="fieldcontain">
					<span id="biCreaterAddressId-label" class="property-label"><g:message code="buildingInfoBillingInfo.biCreaterAddressId.label" default="Bi Creater Address Id" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterAddressId-label"><g:fieldValue bean="${buildingInfoBillingInfoInstance}" field="biCreaterAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biCreaterName}">
				<li class="fieldcontain">
					<span id="biCreaterName-label" class="property-label"><g:message code="buildingInfoBillingInfo.biCreaterName.label" default="Bi Creater Name" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterName-label"><g:fieldValue bean="${buildingInfoBillingInfoInstance}" field="biCreaterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biCreaterAuthority}">
				<li class="fieldcontain">
					<span id="biCreaterAuthority-label" class="property-label"><g:message code="buildingInfoBillingInfo.biCreaterAuthority.label" default="Bi Creater Authority" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterAuthority-label"><g:fieldValue bean="${buildingInfoBillingInfoInstance}" field="biCreaterAuthority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biCreateDate}">
				<li class="fieldcontain">
					<span id="biCreateDate-label" class="property-label"><g:message code="buildingInfoBillingInfo.biCreateDate.label" default="Bi Create Date" /></span>
					
						<span class="property-value" aria-labelledby="biCreateDate-label"><g:formatDate date="${buildingInfoBillingInfoInstance?.biCreateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biPayDateUntil}">
				<li class="fieldcontain">
					<span id="biPayDateUntil-label" class="property-label"><g:message code="buildingInfoBillingInfo.biPayDateUntil.label" default="Bi Pay Date Until" /></span>
					
						<span class="property-value" aria-labelledby="biPayDateUntil-label"><g:formatDate date="${buildingInfoBillingInfoInstance?.biPayDateUntil}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biLastModifiedDate}">
				<li class="fieldcontain">
					<span id="biLastModifiedDate-label" class="property-label"><g:message code="buildingInfoBillingInfo.biLastModifiedDate.label" default="Bi Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="biLastModifiedDate-label"><g:formatDate date="${buildingInfoBillingInfoInstance?.biLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biPrintDate}">
				<li class="fieldcontain">
					<span id="biPrintDate-label" class="property-label"><g:message code="buildingInfoBillingInfo.biPrintDate.label" default="Bi Print Date" /></span>
					
						<span class="property-value" aria-labelledby="biPrintDate-label"><g:formatDate date="${buildingInfoBillingInfoInstance?.biPrintDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biCurrency}">
				<li class="fieldcontain">
					<span id="biCurrency-label" class="property-label"><g:message code="buildingInfoBillingInfo.biCurrency.label" default="Bi Currency" /></span>
					
						<span class="property-value" aria-labelledby="biCurrency-label"><g:fieldValue bean="${buildingInfoBillingInfoInstance}" field="biCurrency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biCostType}">
				<li class="fieldcontain">
					<span id="biCostType-label" class="property-label"><g:message code="buildingInfoBillingInfo.biCostType.label" default="Bi Cost Type" /></span>
					
						<span class="property-value" aria-labelledby="biCostType-label"><g:fieldValue bean="${buildingInfoBillingInfoInstance}" field="biCostType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biPrintCopy}">
    <table>
    <tr><td><g:message code="plotInfoBillingInfo.biPrintCopy.label"/></td>
    <td><img  src="${createLink(controller:'buildingInfoBillingInfo', action:'viewImageLayoutPrintCopy', id:"${buildingInfoBillingInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biAmount}">
				<li class="fieldcontain">
					<span id="biAmount-label" class="property-label"><g:message code="buildingInfoBillingInfo.biAmount.label" default="Bi Amount" /></span>
					
						<span class="property-value" aria-labelledby="biAmount-label"><g:fieldValue bean="${buildingInfoBillingInfoInstance}" field="biAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biReferenceNumber}">
				<li class="fieldcontain">
					<span id="biReferenceNumber-label" class="property-label"><g:message code="buildingInfoBillingInfo.biReferenceNumber.label" default="Bi Reference Number" /></span>
					
						<span class="property-value" aria-labelledby="biReferenceNumber-label"><g:fieldValue bean="${buildingInfoBillingInfoInstance}" field="biReferenceNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biRemark}">
				<li class="fieldcontain">
					<span id="biRemark-label" class="property-label"><g:message code="remark.label" /></span>
					
						<span class="property-value" aria-labelledby="biRemark-label"><g:fieldValue bean="${buildingInfoBillingInfoInstance}" field="biRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.biBuId}">
				<li class="fieldcontain">
					<span id="biBuId-label" class="property-label"><g:message code="buId.label"/></span>
					
						<span class="property-value" aria-labelledby="biBuId-label"><g:fieldValue bean="${buildingInfoBillingInfoInstance}" field="biBuId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoBillingInfoInstance?.buildingInfo}">
				<li class="fieldcontain">
					<span id="buildingInfo-label" class="property-label"><g:message code="buildingInfoBillingInfo.buildingInfo.label" default="Building Info" /></span>
					
						<span class="property-value" aria-labelledby="buildingInfo-label"><g:link controller="buildingInfo" action="show" id="${buildingInfoBillingInfoInstance?.buildingInfo?.id}">${buildingInfoBillingInfoInstance?.buildingInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:buildingInfoBillingInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${buildingInfoBillingInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
