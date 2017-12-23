<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Billing Id</td>
 <td>Unit Id</td> 
 <td>Address Id</td>
 <td>Creater Name</td>
 <td>Reference Number</td>  
 <td>Creater Authority</td>  
 
</tr>
 </thead>
 
<g:each in="${unitInfoBilling}" var="unitInfoBillingOb" status="i">

<tr>
<td>${unitInfoBillingOb.biId}</td>
<td>${unitInfoBillingOb.biUnId}</td>
<td>${unitInfoBillingOb.biCreaterAddressId}</td>
<td>${unitInfoBillingOb.biCreaterName}</td>
<td>${unitInfoBillingOb.biReferenceNumber}</td>
<td>${unitInfoBillingOb.biCreaterAuthority}</td>



  </tr>
</g:each>

</table>

 