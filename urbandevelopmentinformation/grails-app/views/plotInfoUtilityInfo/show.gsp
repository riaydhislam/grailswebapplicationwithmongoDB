
<%@ page import="urbandevelopmentinformation.PlotInfoUtilityInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plotInfoUtilityInfo.label', default: 'PlotInfoUtilityInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-plotInfoUtilityInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-plotInfoUtilityInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list plotInfoUtilityInfo">
			
				<g:if test="${plotInfoUtilityInfoInstance?.utId}">
				<li class="fieldcontain">
					<span id="utId-label" class="property-label"><g:message code="plotInfoUtilityInfo.utId.label" default="Ut Id" /></span>
					
						<span class="property-value" aria-labelledby="utId-label"><g:fieldValue bean="${plotInfoUtilityInfoInstance}" field="utId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utCreaterAddressId}">
				<li class="fieldcontain">
					<span id="utCreaterAddressId-label" class="property-label"><g:message code="plotInfoUtilityInfo.utCreaterAddressId.label" default="Ut Creater Address Id" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterAddressId-label"><g:fieldValue bean="${plotInfoUtilityInfoInstance}" field="utCreaterAddressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utCreaterName}">
				<li class="fieldcontain">
					<span id="utCreaterName-label" class="property-label"><g:message code="plotInfoUtilityInfo.utCreaterName.label" default="Ut Creater Name" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterName-label"><g:fieldValue bean="${plotInfoUtilityInfoInstance}" field="utCreaterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utCreaterAuthority}">
				<li class="fieldcontain">
					<span id="utCreaterAuthority-label" class="property-label"><g:message code="plotInfoUtilityInfo.utCreaterAuthority.label" default="Ut Creater Authority" /></span>
					
						<span class="property-value" aria-labelledby="utCreaterAuthority-label"><g:fieldValue bean="${plotInfoUtilityInfoInstance}" field="utCreaterAuthority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utCreateDate}">
				<li class="fieldcontain">
					<span id="utCreateDate-label" class="property-label"><g:message code="plotInfoUtilityInfo.utCreateDate.label" default="Ut Create Date" /></span>
					
						<span class="property-value" aria-labelledby="utCreateDate-label"><g:formatDate date="${plotInfoUtilityInfoInstance?.utCreateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utLastModifiedDate}">
				<li class="fieldcontain">
					<span id="utLastModifiedDate-label" class="property-label"><g:message code="plotInfoUtilityInfo.utLastModifiedDate.label" default="Ut Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="utLastModifiedDate-label"><g:formatDate date="${plotInfoUtilityInfoInstance?.utLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utSubmissionDate}">
				<li class="fieldcontain">
					<span id="utSubmissionDate-label" class="property-label"><g:message code="plotInfoUtilityInfo.utSubmissionDate.label" default="Ut Submission Date" /></span>
					
						<span class="property-value" aria-labelledby="utSubmissionDate-label"><g:formatDate date="${plotInfoUtilityInfoInstance?.utSubmissionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utApprovalDate}">
				<li class="fieldcontain">
					<span id="utApprovalDate-label" class="property-label"><g:message code="plotInfoUtilityInfo.utApprovalDate.label" default="Ut Approval Date" /></span>
					
						<span class="property-value" aria-labelledby="utApprovalDate-label"><g:formatDate date="${plotInfoUtilityInfoInstance?.utApprovalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utServiceDate}">
				<li class="fieldcontain">
					<span id="utServiceDate-label" class="property-label"><g:message code="plotInfoUtilityInfo.utServiceDate.label" default="Ut Service Date" /></span>
					
						<span class="property-value" aria-labelledby="utServiceDate-label"><g:formatDate date="${plotInfoUtilityInfoInstance?.utServiceDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utDisServiceDate}">
				<li class="fieldcontain">
					<span id="utDisServiceDate-label" class="property-label"><g:message code="plotInfoUtilityInfo.utDisServiceDate.label" default="Ut Dis Service Date" /></span>
					
						<span class="property-value" aria-labelledby="utDisServiceDate-label"><g:formatDate date="${plotInfoUtilityInfoInstance?.utDisServiceDate}" /></span>
					
				</li>
				</g:if>
			
				
				
				<g:if test="${plotInfoUtilityInfoInstance?.utTypePic}">
    <table>
    <tr><td><g:message code="plotInfoUtilityInfo.utTypePic.label"/></td>
    <td><img  src="${createLink(controller:'plotInfoUtilityInfo', action:'viewImageLayoutUtil', id:"${plotInfoUtilityInfoInstance.id}")}"  />
    </td>
    </tr>
    </table>
       </g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utRemark}">
				<li class="fieldcontain">
					<span id="utRemark-label" class="property-label"><g:message code="remark.label" default="Ut Remark" /></span>
					
						<span class="property-value" aria-labelledby="utRemark-label"><g:fieldValue bean="${plotInfoUtilityInfoInstance}" field="utRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utPlId}">
				<li class="fieldcontain">
					<span id="utPlId-label" class="property-label"><g:message code="plotInfoUtilityInfo.utPlId.label" default="Ut Pl Id" /></span>
					
						<span class="property-value" aria-labelledby="utPlId-label"><g:fieldValue bean="${plotInfoUtilityInfoInstance}" field="utPlId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.plotInfo}">
				<li class="fieldcontain">
					<span id="plotInfo-label" class="property-label"><g:message code="plotInfoUtilityInfo.plotInfo.label" default="Plot Info" /></span>
					
						<span class="property-value" aria-labelledby="plotInfo-label"><g:link controller="plotInfo" action="show" id="${plotInfoUtilityInfoInstance?.plotInfo?.id}">${plotInfoUtilityInfoInstance?.plotInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${plotInfoUtilityInfoInstance?.utType}">
				<li class="fieldcontain">
					<span id="utType-label" class="property-label"><g:message code="plotInfoUtilityInfo.utType.label" default="Ut Type" /></span>
					
						<span class="property-value" aria-labelledby="utType-label"><g:fieldValue bean="${plotInfoUtilityInfoInstance}" field="utType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:plotInfoUtilityInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${plotInfoUtilityInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
