
<%@ page import="urbandevelopmentinformation.UnitInfoBillingInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfoBillingInfo.label', default: 'UnitInfoBillingInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-unitInfoBillingInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-unitInfoBillingInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list unitInfoBillingInfo">
			
				<g:if test="${unitInfoBillingInfoInstance?.biId}">
				<li class="fieldcontain">
					<span id="biId-label" class="property-label"><g:message code="unitInfoBillingInfo.biId.label" default="Bi Id" /></span>
					
						<span class="property-value" aria-labelledby="biId-label"><g:fieldValue bean="${unitInfoBillingInfoInstance}" field="biId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biCreaterAddressId}">
				<li class="fieldcontain">
					<span id="biCreaterAddressId-label" class="property-label"><g:message code="unitInfoBillingInfo.biCreaterAddressId.label" default="Bi Creater Address Id" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterAddressId-label"><g:fieldValue bean="${unitInfoBillingInfoInstance}" field="biCreaterAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biCreaterName}">
				<li class="fieldcontain">
					<span id="biCreaterName-label" class="property-label"><g:message code="unitInfoBillingInfo.biCreaterName.label" default="Bi Creater Name" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterName-label"><g:fieldValue bean="${unitInfoBillingInfoInstance}" field="biCreaterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biCreaterAuthority}">
				<li class="fieldcontain">
					<span id="biCreaterAuthority-label" class="property-label"><g:message code="unitInfoBillingInfo.biCreaterAuthority.label" default="Bi Creater Authority" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterAuthority-label"><g:fieldValue bean="${unitInfoBillingInfoInstance}" field="biCreaterAuthority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biCreateDate}">
				<li class="fieldcontain">
					<span id="biCreateDate-label" class="property-label"><g:message code="unitInfoBillingInfo.biCreateDate.label" default="Bi Create Date" /></span>
					
						<span class="property-value" aria-labelledby="biCreateDate-label"><g:formatDate date="${unitInfoBillingInfoInstance?.biCreateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biPayDateUntil}">
				<li class="fieldcontain">
					<span id="biPayDateUntil-label" class="property-label"><g:message code="unitInfoBillingInfo.biPayDateUntil.label" default="Bi Pay Date Until" /></span>
					
						<span class="property-value" aria-labelledby="biPayDateUntil-label"><g:formatDate date="${unitInfoBillingInfoInstance?.biPayDateUntil}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biLastModifiedDate}">
				<li class="fieldcontain">
					<span id="biLastModifiedDate-label" class="property-label"><g:message code="unitInfoBillingInfo.biLastModifiedDate.label" default="Bi Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="biLastModifiedDate-label"><g:formatDate date="${unitInfoBillingInfoInstance?.biLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biPrintDate}">
				<li class="fieldcontain">
					<span id="biPrintDate-label" class="property-label"><g:message code="unitInfoBillingInfo.biPrintDate.label" default="Bi Print Date" /></span>
					
						<span class="property-value" aria-labelledby="biPrintDate-label"><g:formatDate date="${unitInfoBillingInfoInstance?.biPrintDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biCurrency}">
				<li class="fieldcontain">
					<span id="biCurrency-label" class="property-label"><g:message code="unitInfoBillingInfo.biCurrency.label" default="Bi Currency" /></span>
					
						<span class="property-value" aria-labelledby="biCurrency-label"><g:fieldValue bean="${unitInfoBillingInfoInstance}" field="biCurrency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biCostType}">
				<li class="fieldcontain">
					<span id="biCostType-label" class="property-label"><g:message code="unitInfoBillingInfo.biCostType.label" default="Bi Cost Type" /></span>
					
						<span class="property-value" aria-labelledby="biCostType-label"><g:fieldValue bean="${unitInfoBillingInfoInstance}" field="biCostType"/></span>
					
				</li>
				</g:if>
			
				
				<g:if test="${unitInfoBillingInfoInstance?.biPrintCopy}">
    <table>
    <tr><td><g:message code="plotInfoBillingInfo.biPrintCopy.label"/></td>
    <td><img  src="${createLink(controller:'unitInfoBillingInfo', action:'viewImageLayoutPrintCopy', id:"${unitInfoBillingInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biAmount}">
				<li class="fieldcontain">
					<span id="biAmount-label" class="property-label"><g:message code="unitInfoBillingInfo.biAmount.label" default="Bi Amount" /></span>
					
						<span class="property-value" aria-labelledby="biAmount-label"><g:fieldValue bean="${unitInfoBillingInfoInstance}" field="biAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biReferenceNumber}">
				<li class="fieldcontain">
					<span id="biReferenceNumber-label" class="property-label"><g:message code="unitInfoBillingInfo.biReferenceNumber.label" default="Bi Reference Number" /></span>
					
						<span class="property-value" aria-labelledby="biReferenceNumber-label"><g:fieldValue bean="${unitInfoBillingInfoInstance}" field="biReferenceNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biRemark}">
				<li class="fieldcontain">
					<span id="biRemark-label" class="property-label"><g:message code="remark.label" /></span>
					
						<span class="property-value" aria-labelledby="biRemark-label"><g:fieldValue bean="${unitInfoBillingInfoInstance}" field="biRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.biUnId}">
				<li class="fieldcontain">
					<span id="biUnId-label" class="property-label"><g:message code="unId.label" /></span>
					
						<span class="property-value" aria-labelledby="biUnId-label"><g:fieldValue bean="${unitInfoBillingInfoInstance}" field="biUnId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoBillingInfoInstance?.unitInfo}">
				<li class="fieldcontain">
					<span id="unitInfo-label" class="property-label"><g:message code="unitInfoBillingInfo.unitInfo.label" default="Unit Info" /></span>
					
						<span class="property-value" aria-labelledby="unitInfo-label"><g:link controller="unitInfo" action="show" id="${unitInfoBillingInfoInstance?.unitInfo?.id}">${unitInfoBillingInfoInstance?.unitInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:unitInfoBillingInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${unitInfoBillingInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
