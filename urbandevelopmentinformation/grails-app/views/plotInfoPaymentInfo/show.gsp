
<%@ page import="urbandevelopmentinformation.PlotInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plotInfoPaymentInfo.label', default: 'PlotInfoPaymentInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-plotInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-plotInfoPaymentInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list plotInfoPaymentInfo">
			
				<g:if test="${plotInfoPaymentInfoInstance?.paPlId}">
				<li class="fieldcontain">
					<span id="paPlId-label" class="property-label"><g:message code="plotInfoPaymentInfo.paPlId.label" default="Pa Pl Id" /></span>
					
						<span class="property-value" aria-labelledby="paPlId-label"><g:fieldValue bean="${plotInfoPaymentInfoInstance}" field="paPlId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.paId}">
				<li class="fieldcontain">
					<span id="paId-label" class="property-label"><g:message code="plotInfoPaymentInfo.paId.label" default="Pa Id" /></span>
					
						<span class="property-value" aria-labelledby="paId-label"><g:fieldValue bean="${plotInfoPaymentInfoInstance}" field="paId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.paBiId}">
				<li class="fieldcontain">
					<span id="paBiId-label" class="property-label"><g:message code="plotInfoPaymentInfo.paBiId.label" default="Pa Bi Id" /></span>
					
						<span class="property-value" aria-labelledby="paBiId-label"><g:fieldValue bean="${plotInfoPaymentInfoInstance}" field="paBiId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.paCreaterAddressId}">
				<li class="fieldcontain">
					<span id="paCreaterAddressId-label" class="property-label"><g:message code="plotInfoPaymentInfo.paCreaterAddressId.label" default="Pa Creater Address Id" /></span>
					
						<span class="property-value" aria-labelledby="paCreaterAddressId-label"><g:fieldValue bean="${plotInfoPaymentInfoInstance}" field="paCreaterAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.paCreaterName}">
				<li class="fieldcontain">
					<span id="paCreaterName-label" class="property-label"><g:message code="plotInfoPaymentInfo.paCreaterName.label" default="Pa Creater Name" /></span>
					
						<span class="property-value" aria-labelledby="paCreaterName-label"><g:fieldValue bean="${plotInfoPaymentInfoInstance}" field="paCreaterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.pyCreaterAuthority}">
				<li class="fieldcontain">
					<span id="pyCreaterAuthority-label" class="property-label"><g:message code="plotInfoPaymentInfo.pyCreaterAuthority.label" default="Py Creater Authority" /></span>
					
						<span class="property-value" aria-labelledby="pyCreaterAuthority-label"><g:fieldValue bean="${plotInfoPaymentInfoInstance}" field="pyCreaterAuthority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.paType}">
				<li class="fieldcontain">
					<span id="paType-label" class="property-label"><g:message code="plotInfoPaymentInfo.paType.label" default="Pa Type" /></span>
					
						<span class="property-value" aria-labelledby="paType-label"><g:fieldValue bean="${plotInfoPaymentInfoInstance}" field="paType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.paDate}">
				<li class="fieldcontain">
					<span id="paDate-label" class="property-label"><g:message code="plotInfoPaymentInfo.paDate.label" default="Pa Date" /></span>
					
						<span class="property-value" aria-labelledby="paDate-label"><g:formatDate date="${plotInfoPaymentInfoInstance?.paDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.paRefNumber}">
				<li class="fieldcontain">
					<span id="paRefNumber-label" class="property-label"><g:message code="plotInfoPaymentInfo.paRefNumber.label" default="Pa Ref Number" /></span>
					
						<span class="property-value" aria-labelledby="paRefNumber-label"><g:fieldValue bean="${plotInfoPaymentInfoInstance}" field="paRefNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.paTotalAmount}">
				<li class="fieldcontain">
					<span id="paTotalAmount-label" class="property-label"><g:message code="plotInfoPaymentInfo.paTotalAmount.label" default="Pa Total Amount" /></span>
					
						<span class="property-value" aria-labelledby="paTotalAmount-label"><g:fieldValue bean="${plotInfoPaymentInfoInstance}" field="paTotalAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.paPaidAmount}">
				<li class="fieldcontain">
					<span id="paPaidAmount-label" class="property-label"><g:message code="plotInfoPaymentInfo.paPaidAmount.label" default="Pa Paid Amount" /></span>
					
						<span class="property-value" aria-labelledby="paPaidAmount-label"><g:fieldValue bean="${plotInfoPaymentInfoInstance}" field="paPaidAmount"/></span>
					
				</li>
				</g:if>
			
				
				<g:if test="${plotInfoPaymentInfoInstance?.paCopy}">
    <table>
    <tr><td><g:message code="plotInfoPaymentInfo.paCopy.label"/></td>
    <td><img  src="${createLink(controller:'plotInfoPaymentInfo', action:'viewImageLayoutPaymentCopy', id:"${plotInfoPaymentInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.paRemark}">
				<li class="fieldcontain">
					<span id="paRemark-label" class="property-label"><g:message code="remark.label" default="Pa Remark" /></span>
					
						<span class="property-value" aria-labelledby="paRemark-label"><g:fieldValue bean="${plotInfoPaymentInfoInstance}" field="paRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoPaymentInfoInstance?.plotInfo}">
				<li class="fieldcontain">
					<span id="plotInfo-label" class="property-label"><g:message code="plotInfoPaymentInfo.plotInfo.label" default="Plot Info" /></span>
					
						<span class="property-value" aria-labelledby="plotInfo-label"><g:link controller="plotInfo" action="show" id="${plotInfoPaymentInfoInstance?.plotInfo?.id}">${plotInfoPaymentInfoInstance?.plotInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:plotInfoPaymentInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${plotInfoPaymentInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
