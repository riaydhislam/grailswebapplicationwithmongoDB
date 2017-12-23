<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Urban Development and Control Management System</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
	
	 
	 <table>

<tr><td><b>User Address</b></td></tr>

<tr>   
 <td style="
    width: 238px;
    padding-right: 0px;
"><g:link  controller="addressInfo" action="index"><input type="button" value="<g:message code="addressInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td style="
    width: 472px;
"><g:link  controller="addressLocationInfo" action="list"><input type="button" value="<g:message code="addressLocationInfo.add.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
    

</tr>

</table>  

 <table>
<tr><td><b>Web Map GIS Applications</b></td></tr>
  <tr>
 <td style="
    width: 238px;
    padding-right: 0px;
"><g:link controller="webmaps" action="geoserverApplication"><input type="button" value="<g:message code="new.geoserverapplication.label"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>   
 <td style="
    width: 472px;
"><g:link controller="webmaps" action="createVectorLayer"><input type="button" value="<g:message code="new.mapapplication.label"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>   
 </tr>
</table>  



<table>
<tr><td><b>Plot Registration</b></td></tr>
  <tr>
 <td><g:link  controller="plotInfo" action="index"><input type="button" value="<g:message code="plotInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="plotInfoOwnershipInfo" action="index"><input type="button" value="<g:message code="ownershipInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="plotInfoAuthorizationInfo" action="index"><input type="button" value="<g:message code="authorizationInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
</tr>

<tr>
 <td><g:link  controller="plotInfoUtilityInfo" action="index"><input type="button" value="<g:message code="utilityInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="plotInfoBillingInfo" action="index"><input type="button" value="<g:message code="billingInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="plotInfoPaymentInfo" action="index"><input type="button" value="<g:message code="paymentInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
    
 
 </tr>
</table>  



<table>
<tr><td><b>Building Registration</b></td></tr>
  <tr>
 <td><g:link  controller="buildingInfo" action="index"><input type="button" value="<g:message code="buildingInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="buildingInfoOwnershipInfo" action="index"><input type="button" value="<g:message code="ownershipInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="buildingInfoAuthorizationInfo" action="index"><input type="button" value="<g:message code="authorizationInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 </tr>
 <tr>
 <td><g:link  controller="buildingInfoUtilityInfo" action="index"><input type="button" value="<g:message code="utilityInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="buildingInfoBillingInfo" action="index"><input type="button" value="<g:message code="billingInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="buildingInfoPaymentInfo" action="index"><input type="button" value="<g:message code="paymentInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
    
 
 </tr>
</table>  


<table>
<tr><td><b>Floor Registration</b></td></tr>
  <tr>
 <td><g:link  controller="floorInfo" action="index"><input type="button" value="<g:message code="floorInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="floorInfoOwnershipInfo" action="index"><input type="button" value="<g:message code="ownershipInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="floorInfoAuthorizationInfo" action="index"><input type="button" value="<g:message code="authorizationInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 </tr>
 
 <tr>
 <td><g:link  controller="floorInfoUtilityInfo" action="index"><input type="button" value="<g:message code="utilityInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="floorInfoBillingInfo" action="index"><input type="button" value="<g:message code="billingInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="floorInfoPaymentInfo" action="index"><input type="button" value="<g:message code="paymentInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
    
 
 </tr>
</table>  


<table>
<tr><td><b>Unit Registration</b></td></tr>
  <tr>
 <td><g:link  controller="unitInfo" action="index"><input type="button" value="<g:message code="unitInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="unitInfoOwnershipInfo" action="index"><input type="button" value="<g:message code="ownershipInfo.information.lebel"/>"style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="unitInfoAuthorizationInfo" action="index"><input type="button" value="<g:message code="authorizationInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 </tr>
 
 <tr>
 <td><g:link  controller="unitInfoUtilityInfo" action="index"><input type="button" value="<g:message code="utilityInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="unitInfoBillingInfo" action="index"><input type="button" value="<g:message code="billingInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
 <td><g:link  controller="unitInfoPaymentInfo" action="index"><input type="button" value="<g:message code="paymentInfo.information.lebel"/>" style="
    width: 232px;
    height: 40px;
    margin-top: 4px;
    border-left-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    padding-top: 10px;
    padding-left: 10px;
    padding-bottom: 10px;
    padding-right: 10px;
    margin-right: 4px;
    margin-left: 4px;
    margin-bottom: 4px;
"></g:link></td>
    
 
 </tr>
</table>  





	
<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a> 
		

		

			
		
	</body>
	
</html>
