<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Billing Id</td>
 <td>Floor Id</td> 
 <td>Address Id</td>
 <td>Creater Name</td>
 <td>Reference Number</td>  
 <td>Creater Authority</td>  
 
</tr>
 </thead>
 
<g:each in="${floorInfoBilling}" var="floorInfoBillingOb" status="i">

<tr>
<td>${floorInfoBillingOb.biId}</td>
<td>${floorInfoBillingOb.biFlId}</td>
<td>${floorInfoBillingOb.biCreaterAddressId}</td>
<td>${floorInfoBillingOb.biCreaterName}</td>
<td>${floorInfoBillingOb.biReferenceNumber}</td>
<td>${floorInfoBillingOb.biCreaterAuthority}</td>



  </tr>
</g:each>

</table>

 