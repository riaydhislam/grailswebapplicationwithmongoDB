<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Urban Management System</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 25em;
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
<b> <p>Application Public Data Search </p> </b>
<p> <b>Address Search:</p> 
<table>
	<tr>
	<td style="
    width: 238px;
    padding-right: 0px;
"><g:link controller="applicationDataSearchs" action="addressLocationPublicList"><input type="button" value="<g:message code="registered.addressLocation.label"/>" style="
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
"><g:link controller="applicationDataSearchs" action="addressList"><input type="button" value="<g:message code="registered.addess.label"/>" style="
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
<thead>Registered Plot:
</thead>
	<tr>
	<td><g:link controller="applicationDataSearchs" action="plotList"><input type="button" value="<g:message code="registered.plotinfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="plotInfoOwnershipInfoPublicList"><input type="button" value="<g:message code="registered.ownershipinfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="plotInfoAuthorizationPublicList"><input type="button" value="<g:message code="registered.authorizationinfo.label"/>" style="
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
	
	<td><g:link controller="applicationDataSearchs" action="plotInfoUtilityInfoPublicList"><input type="button" value="<g:message code="registered.utilityinfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="plotInfoBillingInfoPublicList"><input type="button" value="<g:message code="registered.billinginfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="plotInfoPaymentInfoPublicList"><input type="button" value="<g:message code="registered.paymentinfo.label"/>" style="
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
<thead>Registered Building:</thead>
	<tr>
	<td style="
    padding-right: 8.6;
    padding-right: 56px;
    width: 250px;
"><g:link controller="applicationDataSearchs" action="buildingList"><input type="button" value="<g:message code="registered.buildinginfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="buildingInfoOwnershipInfoPublicList"><input type="button" value="<g:message code="registered.ownershipinfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="buildingInfoAuthorizationPublicList"><input type="button" value="<g:message code="registered.authorizationinfo.label"/>" style="
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
	<td style="
    padding-right: 8.6;
    padding-right: 7px;
    width: 250px;
"><g:link  controller="applicationDataSearchs" action="buildingInfoUtilityInfoPublicList"><input type="button" value="<g:message code="registered.utilityinfo.label"/>" style="
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
    <td><g:link  controller="applicationDataSearchs" action="buildingInfoBillingInfoPublicList"><input type="button" value="<g:message code="registered.billinginfo.label"/>" style="
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
    <td><g:link  controller="applicationDataSearchs" action="buildingInfoPaymentInfoPublicList"><input type="button" value="<g:message code="registered.paymentinfo.label"/>" style="
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
<thead>Registered Floor:</thead>
	<tr>
	<td><g:link controller="applicationDataSearchs" action="floorList"><input type="button" value="<g:message code="registered.floorinfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="floorInfoOwnershipInfoPublicList"><input type="button" value="<g:message code="registered.ownershipinfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="floorInfoAuthorizationPublicList"><input type="button" value="<g:message code="registered.authorizationinfo.label"/>" style="
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
	
	<td><g:link controller="applicationDataSearchs" action="floorInfoUtilityInfoPublicList"><input type="button" value="<g:message code="registered.utilityinfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="floorInfoBillingInfoPublicList"><input type="button" value="<g:message code="registered.billinginfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="floorInfoPaymentInfoPublicList"><input type="button" value="<g:message code="registered.paymentinfo.label"/>" style="
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
 <thead>Registered Unit:
</thead>
	<tr>
	<td><g:link controller="applicationDataSearchs" action="unitList"><input type="button" value="<g:message code="registered.unitinfo.label"/>" style="
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
   <td><g:link controller="applicationDataSearchs" action="unitInfoOwnershipInfoPublicList"><input type="button" value="<g:message code="registered.ownershipinfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="unitInfoAuthorizationPublicList"><input type="button" value="<g:message code="registered.authorizationinfo.label"/>" style="
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
	
	<td><g:link controller="applicationDataSearchs" action="unitInfoUtilityInfoPublicList"><input type="button" value="<g:message code="registered.utilityinfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="unitInfoBillingInfoPublicList"><input type="button" value="<g:message code="registered.billinginfo.label"/>" style="
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
	<td><g:link controller="applicationDataSearchs" action="unitInfoPaymentInfoPublicList"><input type="button" value="<g:message code="registered.paymentinfo.label"/>" style="
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
  

</body>
</html>
