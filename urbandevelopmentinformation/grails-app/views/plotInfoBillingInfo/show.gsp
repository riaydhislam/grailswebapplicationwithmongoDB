
<%@ page import="urbandevelopmentinformation.PlotInfoBillingInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plotInfoBillingInfo.label', default: 'PlotInfoBillingInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-plotInfoBillingInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-plotInfoBillingInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list plotInfoBillingInfo">
			
				<g:if test="${plotInfoBillingInfoInstance?.biId}">
				<li class="fieldcontain">
					<span id="biId-label" class="property-label"><g:message code="plotInfoBillingInfo.biId.label" default="Bi Id" /></span>
					
						<span class="property-value" aria-labelledby="biId-label"><g:fieldValue bean="${plotInfoBillingInfoInstance}" field="biId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biCreaterAddressId}">
				<li class="fieldcontain">
					<span id="biCreaterAddressId-label" class="property-label"><g:message code="plotInfoBillingInfo.biCreaterAddressId.label" default="Bi Creater Address Id" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterAddressId-label"><g:fieldValue bean="${plotInfoBillingInfoInstance}" field="biCreaterAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biCreaterName}">
				<li class="fieldcontain">
					<span id="biCreaterName-label" class="property-label"><g:message code="plotInfoBillingInfo.biCreaterName.label" default="Bi Creater Name" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterName-label"><g:fieldValue bean="${plotInfoBillingInfoInstance}" field="biCreaterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biCreaterAuthority}">
				<li class="fieldcontain">
					<span id="biCreaterAuthority-label" class="property-label"><g:message code="plotInfoBillingInfo.biCreaterAuthority.label" default="Bi Creater Authority" /></span>
					
						<span class="property-value" aria-labelledby="biCreaterAuthority-label"><g:fieldValue bean="${plotInfoBillingInfoInstance}" field="biCreaterAuthority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biCreateDate}">
				<li class="fieldcontain">
					<span id="biCreateDate-label" class="property-label"><g:message code="plotInfoBillingInfo.biCreateDate.label" default="Bi Create Date" /></span>
					
						<span class="property-value" aria-labelledby="biCreateDate-label"><g:formatDate date="${plotInfoBillingInfoInstance?.biCreateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biPayDateUntil}">
				<li class="fieldcontain">
					<span id="biPayDateUntil-label" class="property-label"><g:message code="plotInfoBillingInfo.biPayDateUntil.label" default="Bi Pay Date Until" /></span>
					
						<span class="property-value" aria-labelledby="biPayDateUntil-label"><g:formatDate date="${plotInfoBillingInfoInstance?.biPayDateUntil}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biLastModifiedDate}">
				<li class="fieldcontain">
					<span id="biLastModifiedDate-label" class="property-label"><g:message code="plotInfoBillingInfo.biLastModifiedDate.label" default="Bi Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="biLastModifiedDate-label"><g:formatDate date="${plotInfoBillingInfoInstance?.biLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biPrintDate}">
				<li class="fieldcontain">
					<span id="biPrintDate-label" class="property-label"><g:message code="plotInfoBillingInfo.biPrintDate.label" default="Bi Print Date" /></span>
					
						<span class="property-value" aria-labelledby="biPrintDate-label"><g:formatDate date="${plotInfoBillingInfoInstance?.biPrintDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biCurrency}">
				<li class="fieldcontain">
					<span id="biCurrency-label" class="property-label"><g:message code="plotInfoBillingInfo.biCurrency.label" default="Bi Currency" /></span>
					
						<span class="property-value" aria-labelledby="biCurrency-label"><g:fieldValue bean="${plotInfoBillingInfoInstance}" field="biCurrency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biCostType}">
				<li class="fieldcontain">
					<span id="biCostType-label" class="property-label"><g:message code="plotInfoBillingInfo.biCostType.label" default="Bi Cost Type" /></span>
					
						<span class="property-value" aria-labelledby="biCostType-label"><g:fieldValue bean="${plotInfoBillingInfoInstance}" field="biCostType"/></span>
					
				</li>
				</g:if>
			
				
				
				
				<g:if test="${plotInfoBillingInfoInstance?.biPrintCopy}">
    <table>
    <tr><td><g:message code="plotInfoBillingInfo.biPrintCopy.label"/></td>
    <td><img  src="${createLink(controller:'plotInfoBillingInfo', action:'viewImageLayoutPrintCopy', id:"${plotInfoBillingInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biAmount}">
				<li class="fieldcontain">
					<span id="biAmount-label" class="property-label"><g:message code="plotInfoBillingInfo.biAmount.label" default="Bi Amount" /></span>
					
						<span class="property-value" aria-labelledby="biAmount-label"><g:fieldValue bean="${plotInfoBillingInfoInstance}" field="biAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biReferenceNumber}">
				<li class="fieldcontain">
					<span id="biReferenceNumber-label" class="property-label"><g:message code="plotInfoBillingInfo.biReferenceNumber.label" default="Bi Reference Number" /></span>
					
						<span class="property-value" aria-labelledby="biReferenceNumber-label"><g:fieldValue bean="${plotInfoBillingInfoInstance}" field="biReferenceNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biRemark}">
				<li class="fieldcontain">
					<span id="biRemark-label" class="property-label"><g:message code="remark.label"/></span>
					
						<span class="property-value" aria-labelledby="biRemark-label"><g:fieldValue bean="${plotInfoBillingInfoInstance}" field="biRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.biPlId}">
				<li class="fieldcontain">
					<span id="biPlId-label" class="property-label"><g:message code="plotInfoBillingInfo.biPlId.label" default="Bi Pl Id" /></span>
					
						<span class="property-value" aria-labelledby="biPlId-label"><g:fieldValue bean="${plotInfoBillingInfoInstance}" field="biPlId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoBillingInfoInstance?.plotInfo}">
				<li class="fieldcontain">
					<span id="plotInfo-label" class="property-label"><g:message code="plotInfoBillingInfo.plotInfo.label" default="Plot Info" /></span>
					
						<span class="property-value" aria-labelledby="plotInfo-label"><g:link controller="plotInfo" action="show" id="${plotInfoBillingInfoInstance?.plotInfo?.id}">${plotInfoBillingInfoInstance?.plotInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:plotInfoBillingInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${plotInfoBillingInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
