<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Billing Id</td>
 <td>Building Id</td> 
 <td>Address Id</td>
 <td>Creater Name</td>
 <td>Reference Number</td>  
 <td>Creater Authority</td>  
 
</tr>
 </thead>
 
<g:each in="${buildingInfoBilling}" var="buildingInfoBillingOb" status="i">

<tr>
<td>${buildingInfoBillingOb.biId}</td>
<td>${buildingInfoBillingOb.biBuId}</td>
<td>${buildingInfoBillingOb.biCreaterAddressId}</td>
<td>${buildingInfoBillingOb.biCreaterName}</td>
<td>${buildingInfoBillingOb.biReferenceNumber}</td>
<td>${buildingInfoBillingOb.biCreaterAuthority}</td>



  </tr>
</g:each>

</table>

 