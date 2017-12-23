<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Payment Id</td>
 <td> Billing Id </td> 
 <td> Building Id</td>
 <td>Type</td>
 <td>Creater Name</td>  
 <td>Creater Authority</td>
 
   
</tr>
 </thead>
 
<g:each in="${buildingInfoPayment}" var="buildingInfoPaymentOb" status="i">

<tr>
<td>${buildingInfoPaymentOb.paId}</td>
<td>${buildingInfoPaymentOb.paBiId}</td>
<td>${buildingInfoPaymentOb.paPlId}</td>
<td>${buildingInfoPaymentOb.paType}</td>
<td>${buildingInfoPaymentOb.paCreaterName}</td>
<td>${buildingInfoPaymentOb.pyCreaterAuthority}</td>



  </tr>
</g:each>

</table>

 