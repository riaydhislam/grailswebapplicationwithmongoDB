
<%@ page import="urbandevelopmentinformation.PlotInfoAuthorizationInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plotInfoAuthorizationInfo.label', default: 'PlotInfoAuthorizationInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-plotInfoAuthorizationInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-plotInfoAuthorizationInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list plotInfoAuthorizationInfo">
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auId}">
				<li class="fieldcontain">
					<span id="auId-label" class="property-label"><g:message code="plotInfoAuthorizationInfo.auId.label" default="Au Id" /></span>
					
						<span class="property-value" aria-labelledby="auId-label"><g:fieldValue bean="${plotInfoAuthorizationInfoInstance}" field="auId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auAddressId}">
				<li class="fieldcontain">
					<span id="auAddressId-label" class="property-label"><g:message code="auAddressId.label" default="Au Address Id" /></span>
					
						<span class="property-value" aria-labelledby="auAddressId-label"><g:fieldValue bean="${plotInfoAuthorizationInfoInstance}" field="auAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auAppliedDate}">
				<li class="fieldcontain">
					<span id="auAppliedDate-label" class="property-label"><g:message code="plotInfoAuthorizationInfo.auAppliedDate.label" default="Au Applied Date" /></span>
					
						<span class="property-value" aria-labelledby="auAppliedDate-label"><g:formatDate date="${plotInfoAuthorizationInfoInstance?.auAppliedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auApprovalDate}">
				<li class="fieldcontain">
					<span id="auApprovalDate-label" class="property-label"><g:message code="plotInfoAuthorizationInfo.auApprovalDate.label" default="Au Approval Date" /></span>
					
						<span class="property-value" aria-labelledby="auApprovalDate-label"><g:formatDate date="${plotInfoAuthorizationInfoInstance?.auApprovalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auPublishDate}">
				<li class="fieldcontain">
					<span id="auPublishDate-label" class="property-label"><g:message code="plotInfoAuthorizationInfo.auPublishDate.label" default="Au Publish Date" /></span>
					
						<span class="property-value" aria-labelledby="auPublishDate-label"><g:formatDate date="${plotInfoAuthorizationInfoInstance?.auPublishDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auCode}">
				<li class="fieldcontain">
					<span id="auCode-label" class="property-label"><g:message code="plotInfoAuthorizationInfo.auCode.label" default="Au Code" /></span>
					
						<span class="property-value" aria-labelledby="auCode-label"><g:fieldValue bean="${plotInfoAuthorizationInfoInstance}" field="auCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auName}">
				<li class="fieldcontain">
					<span id="auName-label" class="property-label"><g:message code="plotInfoAuthorizationInfo.auName.label" default="Au Name" /></span>
					
						<span class="property-value" aria-labelledby="auName-label"><g:fieldValue bean="${plotInfoAuthorizationInfoInstance}" field="auName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auType}">
				<li class="fieldcontain">
					<span id="auType-label" class="property-label"><g:message code="auType.label" default="Au Type" /></span>
					
						<span class="property-value" aria-labelledby="auType-label"><g:fieldValue bean="${plotInfoAuthorizationInfoInstance}" field="auType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auNumber}">
				<li class="fieldcontain">
					<span id="auNumber-label" class="property-label"><g:message code="auNumber.label" default="Au Number" /></span>
					
						<span class="property-value" aria-labelledby="auNumber-label"><g:fieldValue bean="${plotInfoAuthorizationInfoInstance}" field="auNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auServiceCode}">
				<li class="fieldcontain">
					<span id="auServiceCode-label" class="property-label"><g:message code="plotInfoAuthorizationInfo.auServiceCode.label" default="Au Service Code" /></span>
					
						<span class="property-value" aria-labelledby="auServiceCode-label"><g:fieldValue bean="${plotInfoAuthorizationInfoInstance}" field="auServiceCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auServiceName}">
				<li class="fieldcontain">
					<span id="auServiceName-label" class="property-label"><g:message code="plotInfoAuthorizationInfo.auServiceName.label" default="Au Service Name" /></span>
					
						<span class="property-value" aria-labelledby="auServiceName-label"><g:fieldValue bean="${plotInfoAuthorizationInfoInstance}" field="auServiceName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auApplicationCopy}">
    <table>
    <tr><td><g:message code="auApplicationCopy.label"/></td>
    <td><img  src="${createLink(controller:'plotInfoAuthorizationInfo', action:'viewImageApplicationCopy', id:"${plotInfoAuthorizationInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
       
       <g:if test="${plotInfoAuthorizationInfoInstance?.auApprovedCopy}">
    <table>
    <tr><td><g:message code="auApprovedCopy.label"/></td>
    <td><img  src="${createLink(controller:'plotInfoAuthorizationInfo', action:'viewImageApprovedCopy', id:"${plotInfoAuthorizationInfoInstance.id}")}" />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auRemark}">
				<li class="fieldcontain">
					<span id="auRemark-label" class="property-label"><g:message code="remark.label" default="Au Remark" /></span>
					
						<span class="property-value" aria-labelledby="auRemark-label"><g:fieldValue bean="${plotInfoAuthorizationInfoInstance}" field="auRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.auPlId}">
				<li class="fieldcontain">
					<span id="auPlId-label" class="property-label"><g:message code="auplId.label" default="Au Pl Id" /></span>
					
						<span class="property-value" aria-labelledby="auPlId-label"><g:fieldValue bean="${plotInfoAuthorizationInfoInstance}" field="auPlId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoAuthorizationInfoInstance?.plotInfo}">
				<li class="fieldcontain">
					<span id="plotInfo-label" class="property-label"><g:message code="plotInfoAuthorizationInfo.plotInfo.label" default="Plot Info" /></span>
					
						<span class="property-value" aria-labelledby="plotInfo-label"><g:link controller="plotInfo" action="show" id="${plotInfoAuthorizationInfoInstance?.plotInfo?.id}">${plotInfoAuthorizationInfoInstance?.plotInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:plotInfoAuthorizationInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${plotInfoAuthorizationInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
