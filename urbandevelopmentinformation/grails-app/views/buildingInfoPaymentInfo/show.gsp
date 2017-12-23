
<%@ page import="urbandevelopmentinformation.BuildingInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buildingInfoPaymentInfo.label', default: 'BuildingInfoPaymentInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-buildingInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-buildingInfoPaymentInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list buildingInfoPaymentInfo">
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paPlId}">
				<li class="fieldcontain">
					<span id="paPlId-label" class="property-label"><g:message code="buildingInfoPaymentInfo.paPlId.label" default="Pa Pl Id" /></span>
					
						<span class="property-value" aria-labelledby="paPlId-label"><g:fieldValue bean="${buildingInfoPaymentInfoInstance}" field="paPlId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paId}">
				<li class="fieldcontain">
					<span id="paId-label" class="property-label"><g:message code="buildingInfoPaymentInfo.paId.label" default="Pa Id" /></span>
					
						<span class="property-value" aria-labelledby="paId-label"><g:fieldValue bean="${buildingInfoPaymentInfoInstance}" field="paId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paBiId}">
				<li class="fieldcontain">
					<span id="paBiId-label" class="property-label"><g:message code="buildingInfoPaymentInfo.paBiId.label"/></span>
					
						<span class="property-value" aria-labelledby="paBiId-label"><g:fieldValue bean="${buildingInfoPaymentInfoInstance}" field="paBiId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paCreaterAddressId}">
				<li class="fieldcontain">
					<span id="paCreaterAddressId-label" class="property-label"><g:message code="addressId.label"/></span>
					
						<span class="property-value" aria-labelledby="paCreaterAddressId-label"><g:fieldValue bean="${buildingInfoPaymentInfoInstance}" field="paCreaterAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paCreaterName}">
				<li class="fieldcontain">
					<span id="paCreaterName-label" class="property-label"><g:message code="buildingInfoPaymentInfo.paCreaterName.label" default="Pa Creater Name" /></span>
					
						<span class="property-value" aria-labelledby="paCreaterName-label"><g:fieldValue bean="${buildingInfoPaymentInfoInstance}" field="paCreaterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.pyCreaterAuthority}">
				<li class="fieldcontain">
					<span id="pyCreaterAuthority-label" class="property-label"><g:message code="buildingInfoPaymentInfo.pyCreaterAuthority.label" default="Py Creater Authority" /></span>
					
						<span class="property-value" aria-labelledby="pyCreaterAuthority-label"><g:fieldValue bean="${buildingInfoPaymentInfoInstance}" field="pyCreaterAuthority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paType}">
				<li class="fieldcontain">
					<span id="paType-label" class="property-label"><g:message code="buildingInfoPaymentInfo.paType.label" default="Pa Type" /></span>
					
						<span class="property-value" aria-labelledby="paType-label"><g:fieldValue bean="${buildingInfoPaymentInfoInstance}" field="paType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paDate}">
				<li class="fieldcontain">
					<span id="paDate-label" class="property-label"><g:message code="buildingInfoPaymentInfo.paDate.label" default="Pa Date" /></span>
					
						<span class="property-value" aria-labelledby="paDate-label"><g:formatDate date="${buildingInfoPaymentInfoInstance?.paDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paRefNumber}">
				<li class="fieldcontain">
					<span id="paRefNumber-label" class="property-label"><g:message code="buildingInfoPaymentInfo.paRefNumber.label" default="Pa Ref Number" /></span>
					
						<span class="property-value" aria-labelledby="paRefNumber-label"><g:fieldValue bean="${buildingInfoPaymentInfoInstance}" field="paRefNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paTotalAmount}">
				<li class="fieldcontain">
					<span id="paTotalAmount-label" class="property-label"><g:message code="buildingInfoPaymentInfo.paTotalAmount.label" default="Pa Total Amount" /></span>
					
						<span class="property-value" aria-labelledby="paTotalAmount-label"><g:fieldValue bean="${buildingInfoPaymentInfoInstance}" field="paTotalAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paPaidAmount}">
				<li class="fieldcontain">
					<span id="paPaidAmount-label" class="property-label"><g:message code="buildingInfoPaymentInfo.paPaidAmount.label" default="Pa Paid Amount" /></span>
					
						<span class="property-value" aria-labelledby="paPaidAmount-label"><g:fieldValue bean="${buildingInfoPaymentInfoInstance}" field="paPaidAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paCopy}">
    <table>
    <tr><td><g:message code="plotInfoPaymentInfo.paCopy.label"/></td>
    <td><img  src="${createLink(controller:'buildingInfoPaymentInfo', action:'viewImageLayoutPaymentCopy', id:"${buildingInfoPaymentInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.paRemark}">
				<li class="fieldcontain">
					<span id="paRemark-label" class="property-label"><g:message code="remark.label" /></span>
					
						<span class="property-value" aria-labelledby="paRemark-label"><g:fieldValue bean="${buildingInfoPaymentInfoInstance}" field="paRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoPaymentInfoInstance?.buildingInfo}">
				<li class="fieldcontain">
					<span id="buildingInfo-label" class="property-label"><g:message code="buildingInfoPaymentInfo.buildingInfo.label" default="Building Info" /></span>
					
						<span class="property-value" aria-labelledby="buildingInfo-label"><g:link controller="buildingInfo" action="show" id="${buildingInfoPaymentInfoInstance?.buildingInfo?.id}">${buildingInfoPaymentInfoInstance?.buildingInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:buildingInfoPaymentInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${buildingInfoPaymentInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
