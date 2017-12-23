<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Billing Id</td>
 <td>Plot Id</td> 
 <td>Address Id</td>
 <td>Creater Name</td>
 <td>Reference Number</td>  
 <td>Creater Authority</td>  
 
</tr>
 </thead>
 
<g:each in="${plotInfoBilling}" var="plotInfoBillingOb" status="i">

<tr>
<td>${plotInfoBillingOb.biId}</td>
<td>${plotInfoBillingOb.biPlId}</td>
<td>${plotInfoBillingOb.biCreaterAddressId}</td>
<td>${plotInfoBillingOb.biCreaterName}</td>
<td>${plotInfoBillingOb.biReferenceNumber}</td>
<td>${plotInfoBillingOb.biCreaterAuthority}</td>



  </tr>
</g:each>

</table>

 