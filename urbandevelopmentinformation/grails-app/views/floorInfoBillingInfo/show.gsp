
<%@ page import="urbandevelopmentinformation.FloorInfoBillingInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoBillingInfo.label', default: 'FloorInfoBillingInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-floorInfoBillingInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-floorInfoBillingInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list floorInfoBillingInfo">
			
				<g:if test="${floorInfoBillingInfoInstance?.biId}">
				<li class="fieldcontain">
					<span id="biId-label" class="property-label"><g:message code="floorInfoBillingInfo.biId.label" default="Bi Id" /></span>
					
						<span class="property-value" aria-labelledby="biId-label"><g:fieldValue bean="${floorInfoBillingInfoInstance}" field="biId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biCreaterAddressId}">
				<li class="fieldcontain">
					<span id="biCreaterAddressId-label" class="property-label"><g:message code="floorInfoBillingInfo.biCreaterAddressId.label" default="Bi Creater Address Id" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterAddressId-label"><g:fieldValue bean="${floorInfoBillingInfoInstance}" field="biCreaterAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biCreaterName}">
				<li class="fieldcontain">
					<span id="biCreaterName-label" class="property-label"><g:message code="floorInfoBillingInfo.biCreaterName.label" default="Bi Creater Name" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterName-label"><g:fieldValue bean="${floorInfoBillingInfoInstance}" field="biCreaterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biCreaterAuthority}">
				<li class="fieldcontain">
					<span id="biCreaterAuthority-label" class="property-label"><g:message code="floorInfoBillingInfo.biCreaterAuthority.label" default="Bi Creater Authority" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterAuthority-label"><g:fieldValue bean="${floorInfoBillingInfoInstance}" field="biCreaterAuthority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biCreateDate}">
				<li class="fieldcontain">
					<span id="biCreateDate-label" class="property-label"><g:message code="floorInfoBillingInfo.biCreateDate.label" default="Bi Create Date" /></span>
					
						<span class="property-value" aria-labelledby="biCreateDate-label"><g:formatDate date="${floorInfoBillingInfoInstance?.biCreateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biPayDateUntil}">
				<li class="fieldcontain">
					<span id="biPayDateUntil-label" class="property-label"><g:message code="floorInfoBillingInfo.biPayDateUntil.label" default="Bi Pay Date Until" /></span>
					
						<span class="property-value" aria-labelledby="biPayDateUntil-label"><g:formatDate date="${floorInfoBillingInfoInstance?.biPayDateUntil}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biLastModifiedDate}">
				<li class="fieldcontain">
					<span id="biLastModifiedDate-label" class="property-label"><g:message code="floorInfoBillingInfo.biLastModifiedDate.label" default="Bi Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="biLastModifiedDate-label"><g:formatDate date="${floorInfoBillingInfoInstance?.biLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biPrintDate}">
				<li class="fieldcontain">
					<span id="biPrintDate-label" class="property-label"><g:message code="floorInfoBillingInfo.biPrintDate.label" default="Bi Print Date" /></span>
					
						<span class="property-value" aria-labelledby="biPrintDate-label"><g:formatDate date="${floorInfoBillingInfoInstance?.biPrintDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biCurrency}">
				<li class="fieldcontain">
					<span id="biCurrency-label" class="property-label"><g:message code="floorInfoBillingInfo.biCurrency.label" default="Bi Currency" /></span>
					
						<span class="property-value" aria-labelledby="biCurrency-label"><g:fieldValue bean="${floorInfoBillingInfoInstance}" field="biCurrency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biCostType}">
				<li class="fieldcontain">
					<span id="biCostType-label" class="property-label"><g:message code="floorInfoBillingInfo.biCostType.label" default="Bi Cost Type" /></span>
					
						<span class="property-value" aria-labelledby="biCostType-label"><g:fieldValue bean="${floorInfoBillingInfoInstance}" field="biCostType"/></span>
					
				</li>
				</g:if>
			
				
				<g:if test="${floorInfoBillingInfoInstance?.biPrintCopy}">
    <table>
    <tr><td><g:message code="plotInfoBillingInfo.biPrintCopy.label"/></td>
    <td><img  src="${createLink(controller:'floorInfoBillingInfo', action:'viewImageLayoutPrintCopy', id:"${floorInfoBillingInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biAmount}">
				<li class="fieldcontain">
					<span id="biAmount-label" class="property-label"><g:message code="floorInfoBillingInfo.biAmount.label" default="Bi Amount" /></span>
					
						<span class="property-value" aria-labelledby="biAmount-label"><g:fieldValue bean="${floorInfoBillingInfoInstance}" field="biAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biReferenceNumber}">
				<li class="fieldcontain">
					<span id="biReferenceNumber-label" class="property-label"><g:message code="floorInfoBillingInfo.biReferenceNumber.label" default="Bi Reference Number" /></span>
					
						<span class="property-value" aria-labelledby="biReferenceNumber-label"><g:fieldValue bean="${floorInfoBillingInfoInstance}" field="biReferenceNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biRemark}">
				<li class="fieldcontain">
					<span id="biRemark-label" class="property-label"><g:message code="remark.label" /></span>
					
						<span class="property-value" aria-labelledby="biRemark-label"><g:fieldValue bean="${floorInfoBillingInfoInstance}" field="biRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.biFlId}">
				<li class="fieldcontain">
					<span id="biFlId-label" class="property-label"><g:message code="flId.label"/></span>
					
						<span class="property-value" aria-labelledby="biFlId-label"><g:fieldValue bean="${floorInfoBillingInfoInstance}" field="biFlId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoBillingInfoInstance?.floorInfo}">
				<li class="fieldcontain">
					<span id="floorInfo-label" class="property-label"><g:message code="floorInfoBillingInfo.floorInfo.label" default="Floor Info" /></span>
					
						<span class="property-value" aria-labelledby="floorInfo-label"><g:link controller="floorInfo" action="show" id="${floorInfoBillingInfoInstance?.floorInfo?.id}">${floorInfoBillingInfoInstance?.floorInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:floorInfoBillingInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${floorInfoBillingInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
