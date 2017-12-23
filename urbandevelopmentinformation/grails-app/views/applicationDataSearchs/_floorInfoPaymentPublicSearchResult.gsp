<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Payment Id</td>
 <td>Billing Id </td> 
 <td>Floor Id</td>
 <td>Type</td>
 <td>Creater Name</td>  
 <td>Creater Authority</td>
 
   
</tr>
 </thead>
 
<g:each in="${floorInfoPayment}" var="floorInfoPaymentOb" status="i">

<tr>
<td>${floorInfoPaymentOb.paId}</td>
<td>${floorInfoPaymentOb.paBiId}</td>
<td>${floorInfoPaymentOb.paFlId}</td>
<td>${floorInfoPaymentOb.paType}</td>
<td>${floorInfoPaymentOb.paCreaterName}</td>
<td>${floorInfoPaymentOb.pyCreaterAuthority}</td>



  </tr>
</g:each>

</table>

 