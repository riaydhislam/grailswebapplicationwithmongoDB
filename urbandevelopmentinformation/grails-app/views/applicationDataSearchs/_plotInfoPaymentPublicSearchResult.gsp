<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Payment Id</td>
 <td> Billing Id </td> 
 <td> Plot Id</td>
 <td>Type</td>
 <td>Creater Name</td>  
 <td>Creater Authority</td>
 
   
</tr>
 </thead>
 
<g:each in="${plotInfoPayment}" var="plotInfoPaymentOb" status="i">

<tr>
<td>${plotInfoPaymentOb.paId}</td>
<td>${plotInfoPaymentOb.paBiId}</td>
<td>${plotInfoPaymentOb.paPlId}</td>
<td>${plotInfoPaymentOb.paType}</td>
<td>${plotInfoPaymentOb.paCreaterName}</td>
<td>${plotInfoPaymentOb.pyCreaterAuthority}</td>



  </tr>
</g:each>

</table>

 