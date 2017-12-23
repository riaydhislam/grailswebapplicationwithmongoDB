
<%@ page import="urbandevelopmentinformation.BuildingInfoUtilityInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buildingInfoUtilityInfo.label', default: 'BuildingInfoUtilityInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-buildingInfoUtilityInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-buildingInfoUtilityInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list buildingInfoUtilityInfo">
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utId}">
				<li class="fieldcontain">
					<span id="utId-label" class="property-label"><g:message code="buildingInfoUtilityInfo.utId.label" default="Ut Id" /></span>
					
						<span class="property-value" aria-labelledby="utId-label"><g:fieldValue bean="${buildingInfoUtilityInfoInstance}" field="utId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utCreaterAddressId}">
				<li class="fieldcontain">
					<span id="utCreaterAddressId-label" class="property-label"><g:message code="buildingInfoUtilityInfo.utCreaterAddressId.label" default="Ut Creater Address Id" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterAddressId-label"><g:fieldValue bean="${buildingInfoUtilityInfoInstance}" field="utCreaterAddressId"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${buildingInfoUtilityInfoInstance?.buildingInfo}">
				<li class="fieldcontain">
					<span id="buildingInfo-label" class="property-label"><g:message code="buildingInfoUtilityInfo.buildingInfo.label" default="Building Info" /></span>
					
						<span class="property-value" aria-labelledby="buildingInfo-label"><g:link controller="buildingInfo" action="show" id="${buildingInfoUtilityInfoInstance?.buildingInfo?.id}">${buildingInfoUtilityInfoInstance?.buildingInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
				
				<g:if test="${buildingInfoUtilityInfoInstance?.utBuId}">
				<li class="fieldcontain">
					<span id="utBuId-label" class="property-label"><g:message code="buId.label"/></span>
					
						<span class="property-value" aria-labelledby="utBuId-label"><g:fieldValue bean="${buildingInfoUtilityInfoInstance}" field="utBuId"/></span>
					
				</li>
				</g:if>
			
				
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utType}">
				<li class="fieldcontain">
					<span id="utType-label" class="property-label"><g:message code="buildingInfoUtilityInfo.utType.label" default="Ut Type" /></span>
					
						<span class="property-value" aria-labelledby="utType-label"><g:fieldValue bean="${buildingInfoUtilityInfoInstance}" field="utType"/></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utCreaterName}">
				<li class="fieldcontain">
					<span id="utCreaterName-label" class="property-label"><g:message code="buildingInfoUtilityInfo.utCreaterName.label" default="Ut Creater Name" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterName-label"><g:fieldValue bean="${buildingInfoUtilityInfoInstance}" field="utCreaterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utCreaterAuthority}">
				<li class="fieldcontain">
					<span id="utCreaterAuthority-label" class="property-label"><g:message code="buildingInfoUtilityInfo.utCreaterAuthority.label" default="Ut Creater Authority" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterAuthority-label"><g:fieldValue bean="${buildingInfoUtilityInfoInstance}" field="utCreaterAuthority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utCreateDate}">
				<li class="fieldcontain">
					<span id="utCreateDate-label" class="property-label"><g:message code="buildingInfoUtilityInfo.utCreateDate.label" default="Ut Create Date" /></span>
					
						<span class="property-value" aria-labelledby="utCreateDate-label"><g:formatDate date="${buildingInfoUtilityInfoInstance?.utCreateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utLastModifiedDate}">
				<li class="fieldcontain">
					<span id="utLastModifiedDate-label" class="property-label"><g:message code="buildingInfoUtilityInfo.utLastModifiedDate.label" default="Ut Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="utLastModifiedDate-label"><g:formatDate date="${buildingInfoUtilityInfoInstance?.utLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utSubmissionDate}">
				<li class="fieldcontain">
					<span id="utSubmissionDate-label" class="property-label"><g:message code="buildingInfoUtilityInfo.utSubmissionDate.label" default="Ut Submission Date" /></span>
					
						<span class="property-value" aria-labelledby="utSubmissionDate-label"><g:formatDate date="${buildingInfoUtilityInfoInstance?.utSubmissionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utApprovalDate}">
				<li class="fieldcontain">
					<span id="utApprovalDate-label" class="property-label"><g:message code="buildingInfoUtilityInfo.utApprovalDate.label" default="Ut Approval Date" /></span>
					
						<span class="property-value" aria-labelledby="utApprovalDate-label"><g:formatDate date="${buildingInfoUtilityInfoInstance?.utApprovalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utServiceDate}">
				<li class="fieldcontain">
					<span id="utServiceDate-label" class="property-label"><g:message code="buildingInfoUtilityInfo.utServiceDate.label" default="Ut Service Date" /></span>
					
						<span class="property-value" aria-labelledby="utServiceDate-label"><g:formatDate date="${buildingInfoUtilityInfoInstance?.utServiceDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utDisServiceDate}">
				<li class="fieldcontain">
					<span id="utDisServiceDate-label" class="property-label"><g:message code="buildingInfoUtilityInfo.utDisServiceDate.label" default="Ut Dis Service Date" /></span>
					
						<span class="property-value" aria-labelledby="utDisServiceDate-label"><g:formatDate date="${buildingInfoUtilityInfoInstance?.utDisServiceDate}" /></span>
					
				</li>
				</g:if>
			
				
				<g:if test="${buildingInfoUtilityInfoInstance?.utTypePic}">
    <table>
    <tr><td><g:message code="plotInfoUtilityInfo.utTypePic.label"/></td>
    <td><img  src="${createLink(controller:'buildingInfoUtilityInfo', action:'viewImageLayoutUtil', id:"${buildingInfoUtilityInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
     </g:if>
			
				<g:if test="${buildingInfoUtilityInfoInstance?.utRemark}">
				<li class="fieldcontain">
					<span id="utRemark-label" class="property-label"><g:message code="remark.label"/></span>
					
						<span class="property-value" aria-labelledby="utRemark-label"><g:fieldValue bean="${buildingInfoUtilityInfoInstance}" field="utRemark"/></span>
					
				</li>
				</g:if>
			
				
			</ol>
			<g:form url="[resource:buildingInfoUtilityInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${buildingInfoUtilityInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
