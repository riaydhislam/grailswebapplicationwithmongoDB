
<%@ page import="urbandevelopmentinformation.UnitInfoUtilityInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-unitInfoUtilityInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-unitInfoUtilityInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list unitInfoUtilityInfo">
			
				<g:if test="${unitInfoUtilityInfoInstance?.utId}">
				<li class="fieldcontain">
					<span id="utId-label" class="property-label"><g:message code="unitInfoUtilityInfo.utId.label" default="Ut Id" /></span>
					
						<span class="property-value" aria-labelledby="utId-label"><g:fieldValue bean="${unitInfoUtilityInfoInstance}" field="utId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoUtilityInfoInstance?.utCreaterAddressId}">
				<li class="fieldcontain">
					<span id="utCreaterAddressId-label" class="property-label"><g:message code="unitInfoUtilityInfo.utCreaterAddressId.label" default="Ut Creater Address Id" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterAddressId-label"><g:fieldValue bean="${unitInfoUtilityInfoInstance}" field="utCreaterAddressId"/></span>
					
				</li>
				</g:if>
				
				
			
				<g:if test="${unitInfoUtilityInfoInstance?.unitInfo}">
				<li class="fieldcontain">
					<span id="unitInfo-label" class="property-label"><g:message code="unitInfo.label"/></span>
					
						<span class="property-value" aria-labelledby="unitInfo-label"><g:link controller="unitInfo" action="show" id="${unitInfoUtilityInfoInstance?.unitInfo?.id}">${unitInfoUtilityInfoInstance?.unitInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
				
				<g:if test="${unitInfoUtilityInfoInstance?.utUnId}">
				<li class="fieldcontain">
					<span id="utUnId-label" class="property-label"><g:message code="unId.label"/></span>
					
						<span class="property-value" aria-labelledby="utUnId-label"><g:fieldValue bean="${unitInfoUtilityInfoInstance}" field="utUnId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoUtilityInfoInstance?.utType}">
				<li class="fieldcontain">
					<span id="utType-label" class="property-label"><g:message code="type.label"/></span>
					
						<span class="property-value" aria-labelledby="utType-label"><g:fieldValue bean="${unitInfoUtilityInfoInstance}" field="utType"/></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${unitInfoUtilityInfoInstance?.utCreaterName}">
				<li class="fieldcontain">
					<span id="utCreaterName-label" class="property-label"><g:message code="unitInfoUtilityInfo.utCreaterName.label" default="Ut Creater Name" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterName-label"><g:fieldValue bean="${unitInfoUtilityInfoInstance}" field="utCreaterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoUtilityInfoInstance?.utCreaterAuthority}">
				<li class="fieldcontain">
					<span id="utCreaterAuthority-label" class="property-label"><g:message code="unitInfoUtilityInfo.utCreaterAuthority.label" default="Ut Creater Authority" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterAuthority-label"><g:fieldValue bean="${unitInfoUtilityInfoInstance}" field="utCreaterAuthority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoUtilityInfoInstance?.utCreateDate}">
				<li class="fieldcontain">
					<span id="utCreateDate-label" class="property-label"><g:message code="unitInfoUtilityInfo.utCreateDate.label" default="Ut Create Date" /></span>
					
						<span class="property-value" aria-labelledby="utCreateDate-label"><g:formatDate date="${unitInfoUtilityInfoInstance?.utCreateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoUtilityInfoInstance?.utLastModifiedDate}">
				<li class="fieldcontain">
					<span id="utLastModifiedDate-label" class="property-label"><g:message code="unitInfoUtilityInfo.utLastModifiedDate.label" default="Ut Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="utLastModifiedDate-label"><g:formatDate date="${unitInfoUtilityInfoInstance?.utLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoUtilityInfoInstance?.utSubmissionDate}">
				<li class="fieldcontain">
					<span id="utSubmissionDate-label" class="property-label"><g:message code="unitInfoUtilityInfo.utSubmissionDate.label" default="Ut Submission Date" /></span>
					
						<span class="property-value" aria-labelledby="utSubmissionDate-label"><g:formatDate date="${unitInfoUtilityInfoInstance?.utSubmissionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoUtilityInfoInstance?.utApprovalDate}">
				<li class="fieldcontain">
					<span id="utApprovalDate-label" class="property-label"><g:message code="unitInfoUtilityInfo.utApprovalDate.label" default="Ut Approval Date" /></span>
					
						<span class="property-value" aria-labelledby="utApprovalDate-label"><g:formatDate date="${unitInfoUtilityInfoInstance?.utApprovalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoUtilityInfoInstance?.utServiceDate}">
				<li class="fieldcontain">
					<span id="utServiceDate-label" class="property-label"><g:message code="unitInfoUtilityInfo.utServiceDate.label" default="Ut Service Date" /></span>
					
						<span class="property-value" aria-labelledby="utServiceDate-label"><g:formatDate date="${unitInfoUtilityInfoInstance?.utServiceDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitInfoUtilityInfoInstance?.utDisServiceDate}">
				<li class="fieldcontain">
					<span id="utDisServiceDate-label" class="property-label"><g:message code="unitInfoUtilityInfo.utDisServiceDate.label" default="Ut Dis Service Date" /></span>
					
						<span class="property-value" aria-labelledby="utDisServiceDate-label"><g:formatDate date="${unitInfoUtilityInfoInstance?.utDisServiceDate}" /></span>
					
				</li>
				</g:if>
			
					<g:if test="${unitInfoUtilityInfoInstance?.utTypePic}">
    <table>
    <tr><td><g:message code="plotInfoUtilityInfo.utTypePic.label"/></td>
    <td><img  src="${createLink(controller:'unitInfoUtilityInfo', action:'viewImageLayoutUtil', id:"${unitInfoUtilityInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
     </g:if>
			
				<g:if test="${unitInfoUtilityInfoInstance?.utRemark}">
				<li class="fieldcontain">
					<span id="utRemark-label" class="property-label"><g:message code="remark.label"/></span>
					
						<span class="property-value" aria-labelledby="utRemark-label"><g:fieldValue bean="${unitInfoUtilityInfoInstance}" field="utRemark"/></span>
					
				</li>
				</g:if>
			
				
			</ol>
			<g:form url="[resource:unitInfoUtilityInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${unitInfoUtilityInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
