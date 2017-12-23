
<%@ page import="urbandevelopmentinformation.UnitInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfoPaymentInfo.label', default: 'UnitInfoPaymentInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-unitInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-unitInfoPaymentInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list unitInfoPaymentInfo">
			
				<g:if test="${unitInfoPaymentInfoInstance?.paUnId}">
				<li class="fieldcontain">
					<span id="paUnId-label" class="property-label"><g:message code="unId.label" /></span>
					
						<span class="property-value" aria-labelledby="paUnId-label"><g:fieldValue bean="${unitInfoPaymentInfoInstance}" field="paUnId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.paId}">
				<li class="fieldcontain">
					<span id="paId-label" class="property-label"><g:message code="unitInfoPaymentInfo.paId.label" default="Pa Id" /></span>
					
						<span class="property-value" aria-labelledby="paId-label"><g:fieldValue bean="${unitInfoPaymentInfoInstance}" field="paId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.paBiId}">
				<li class="fieldcontain">
					<span id="paBiId-label" class="property-label"><g:message code="unitInfoPaymentInfo.paBiId.label" default="Pa Bi Id" /></span>
					
						<span class="property-value" aria-labelledby="paBiId-label"><g:fieldValue bean="${unitInfoPaymentInfoInstance}" field="paBiId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.paCreaterAddressId}">
				<li class="fieldcontain">
					<span id="paCreaterAddressId-label" class="property-label"><g:message code="unitInfoPaymentInfo.paCreaterAddressId.label" default="Pa Creater Address Id" /></span>
					
						<span class="property-value" aria-labelledby="paCreaterAddressId-label"><g:fieldValue bean="${unitInfoPaymentInfoInstance}" field="paCreaterAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.paCreaterName}">
				<li class="fieldcontain">
					<span id="paCreaterName-label" class="property-label"><g:message code="unitInfoPaymentInfo.paCreaterName.label" default="Pa Creater Name" /></span>
					
						<span class="property-value" aria-labelledby="paCreaterName-label"><g:fieldValue bean="${unitInfoPaymentInfoInstance}" field="paCreaterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.pyCreaterAuthority}">
				<li class="fieldcontain">
					<span id="pyCreaterAuthority-label" class="property-label"><g:message code="unitInfoPaymentInfo.pyCreaterAuthority.label" default="Py Creater Authority" /></span>
					
						<span class="property-value" aria-labelledby="pyCreaterAuthority-label"><g:fieldValue bean="${unitInfoPaymentInfoInstance}" field="pyCreaterAuthority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.paType}">
				<li class="fieldcontain">
					<span id="paType-label" class="property-label"><g:message code="unitInfoPaymentInfo.paType.label" default="Pa Type" /></span>
					
						<span class="property-value" aria-labelledby="paType-label"><g:fieldValue bean="${unitInfoPaymentInfoInstance}" field="paType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.paDate}">
				<li class="fieldcontain">
					<span id="paDate-label" class="property-label"><g:message code="unitInfoPaymentInfo.paDate.label" default="Pa Date" /></span>
					
						<span class="property-value" aria-labelledby="paDate-label"><g:formatDate date="${unitInfoPaymentInfoInstance?.paDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.paRefNumber}">
				<li class="fieldcontain">
					<span id="paRefNumber-label" class="property-label"><g:message code="unitInfoPaymentInfo.paRefNumber.label" default="Pa Ref Number" /></span>
					
						<span class="property-value" aria-labelledby="paRefNumber-label"><g:fieldValue bean="${unitInfoPaymentInfoInstance}" field="paRefNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.paTotalAmount}">
				<li class="fieldcontain">
					<span id="paTotalAmount-label" class="property-label"><g:message code="unitInfoPaymentInfo.paTotalAmount.label" default="Pa Total Amount" /></span>
					
						<span class="property-value" aria-labelledby="paTotalAmount-label"><g:fieldValue bean="${unitInfoPaymentInfoInstance}" field="paTotalAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.paPaidAmount}">
				<li class="fieldcontain">
					<span id="paPaidAmount-label" class="property-label"><g:message code="unitInfoPaymentInfo.paPaidAmount.label" default="Pa Paid Amount" /></span>
					
						<span class="property-value" aria-labelledby="paPaidAmount-label"><g:fieldValue bean="${unitInfoPaymentInfoInstance}" field="paPaidAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.paCopy}">
    <table>
    <tr><td><g:message code="plotInfoPaymentInfo.paCopy.label"/></td>
    <td><img  src="${createLink(controller:'unitInfoPaymentInfo', action:'viewImageLayoutPaymentCopy', id:"${unitInfoPaymentInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.paRemark}">
				<li class="fieldcontain">
					<span id="paRemark-label" class="property-label"><g:message code="remark.label" /></span>
					
						<span class="property-value" aria-labelledby="paRemark-label"><g:fieldValue bean="${unitInfoPaymentInfoInstance}" field="paRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoPaymentInfoInstance?.unitInfo}">
				<li class="fieldcontain">
					<span id="unitInfo-label" class="property-label"><g:message code="unitInfoPaymentInfo.unitInfo.label" default="Unit Info" /></span>
					
						<span class="property-value" aria-labelledby="unitInfo-label"><g:link controller="unitInfo" action="show" id="${unitInfoPaymentInfoInstance?.unitInfo?.id}">${unitInfoPaymentInfoInstance?.unitInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:unitInfoPaymentInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${unitInfoPaymentInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
