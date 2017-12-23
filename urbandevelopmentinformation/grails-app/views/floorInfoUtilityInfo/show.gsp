
<%@ page import="urbandevelopmentinformation.FloorInfoUtilityInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoUtilityInfo.label', default: 'FloorInfoUtilityInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-floorInfoUtilityInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
			
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-floorInfoUtilityInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list floorInfoUtilityInfo">
			
				<g:if test="${floorInfoUtilityInfoInstance?.utId}">
				<li class="fieldcontain">
					<span id="utId-label" class="property-label"><g:message code="floorInfoUtilityInfo.utId.label" default="Ut Id" /></span>
					
						<span class="property-value" aria-labelledby="utId-label"><g:fieldValue bean="${floorInfoUtilityInfoInstance}" field="utId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoUtilityInfoInstance?.utCreaterAddressId}">
				<li class="fieldcontain">
					<span id="utCreaterAddressId-label" class="property-label"><g:message code="floorInfoUtilityInfo.utCreaterAddressId.label" default="Ut Creater Address Id" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterAddressId-label"><g:fieldValue bean="${floorInfoUtilityInfoInstance}" field="utCreaterAddressId"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${floorInfoUtilityInfoInstance?.floorInfo}">
				<li class="fieldcontain">
					<span id="floorInfo-label" class="property-label"><g:message code="floorInfoUtilityInfo.floorInfo.label" default="Floor Info" /></span>
					
						<span class="property-value" aria-labelledby="floorInfo-label"><g:link controller="floorInfo" action="show" id="${floorInfoUtilityInfoInstance?.floorInfo?.id}">${floorInfoUtilityInfoInstance?.floorInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoUtilityInfoInstance?.utFlId}">
				<li class="fieldcontain">
					<span id="utFlId-label" class="property-label"><g:message code="flId.label"/></span>
					
						<span class="property-value" aria-labelledby="utFlId-label"><g:fieldValue bean="${floorInfoUtilityInfoInstance}" field="utFlId"/></span>
					
				</li>
				</g:if>
			
				
				<g:if test="${floorInfoUtilityInfoInstance?.utType}">
				<li class="fieldcontain">
					<span id="utType-label" class="property-label"><g:message code="type.label"/></span>
					
						<span class="property-value" aria-labelledby="utType-label"><g:fieldValue bean="${floorInfoUtilityInfoInstance}" field="utType"/></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${floorInfoUtilityInfoInstance?.utCreaterName}">
				<li class="fieldcontain">
					<span id="utCreaterName-label" class="property-label"><g:message code="floorInfoUtilityInfo.utCreaterName.label" default="Ut Creater Name" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterName-label"><g:fieldValue bean="${floorInfoUtilityInfoInstance}" field="utCreaterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoUtilityInfoInstance?.utCreaterAuthority}">
				<li class="fieldcontain">
					<span id="utCreaterAuthority-label" class="property-label"><g:message code="floorInfoUtilityInfo.utCreaterAuthority.label" default="Ut Creater Authority" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterAuthority-label"><g:fieldValue bean="${floorInfoUtilityInfoInstance}" field="utCreaterAuthority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoUtilityInfoInstance?.utCreateDate}">
				<li class="fieldcontain">
					<span id="utCreateDate-label" class="property-label"><g:message code="floorInfoUtilityInfo.utCreateDate.label" default="Ut Create Date" /></span>
					
						<span class="property-value" aria-labelledby="utCreateDate-label"><g:formatDate date="${floorInfoUtilityInfoInstance?.utCreateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoUtilityInfoInstance?.utLastModifiedDate}">
				<li class="fieldcontain">
					<span id="utLastModifiedDate-label" class="property-label"><g:message code="floorInfoUtilityInfo.utLastModifiedDate.label" default="Ut Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="utLastModifiedDate-label"><g:formatDate date="${floorInfoUtilityInfoInstance?.utLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoUtilityInfoInstance?.utSubmissionDate}">
				<li class="fieldcontain">
					<span id="utSubmissionDate-label" class="property-label"><g:message code="floorInfoUtilityInfo.utSubmissionDate.label" default="Ut Submission Date" /></span>
					
						<span class="property-value" aria-labelledby="utSubmissionDate-label"><g:formatDate date="${floorInfoUtilityInfoInstance?.utSubmissionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoUtilityInfoInstance?.utApprovalDate}">
				<li class="fieldcontain">
					<span id="utApprovalDate-label" class="property-label"><g:message code="floorInfoUtilityInfo.utApprovalDate.label" default="Ut Approval Date" /></span>
					
						<span class="property-value" aria-labelledby="utApprovalDate-label"><g:formatDate date="${floorInfoUtilityInfoInstance?.utApprovalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoUtilityInfoInstance?.utServiceDate}">
				<li class="fieldcontain">
					<span id="utServiceDate-label" class="property-label"><g:message code="floorInfoUtilityInfo.utServiceDate.label" default="Ut Service Date" /></span>
					
						<span class="property-value" aria-labelledby="utServiceDate-label"><g:formatDate date="${floorInfoUtilityInfoInstance?.utServiceDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoUtilityInfoInstance?.utDisServiceDate}">
				<li class="fieldcontain">
					<span id="utDisServiceDate-label" class="property-label"><g:message code="floorInfoUtilityInfo.utDisServiceDate.label" default="Ut Dis Service Date" /></span>
					
						<span class="property-value" aria-labelledby="utDisServiceDate-label"><g:formatDate date="${floorInfoUtilityInfoInstance?.utDisServiceDate}" /></span>
					
				</li>
				</g:if>
			
				
				<g:if test="${floorInfoUtilityInfoInstance?.utTypePic}">
    <table>
    <tr><td><g:message code="plotInfoUtilityInfo.utTypePic.label"/></td>
    <td><img  src="${createLink(controller:'floorInfoUtilityInfo', action:'viewImageLayoutUtil', id:"${floorInfoUtilityInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
     </g:if>
			
				<g:if test="${floorInfoUtilityInfoInstance?.utRemark}">
				<li class="fieldcontain">
					<span id="utRemark-label" class="property-label"><g:message code="remark.label"/></span>
					
						<span class="property-value" aria-labelledby="utRemark-label"><g:fieldValue bean="${floorInfoUtilityInfoInstance}" field="utRemark"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:floorInfoUtilityInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${floorInfoUtilityInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
