<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Payment Id</td>
 <td>Billing Id </td> 
 <td>Unit Id</td>
 <td>Type</td>
 <td>Creater Name</td>  
 <td>Creater Authority</td>
 
   
</tr>
 </thead>
 
<g:each in="${unitInfoPayment}" var="unitInfoPaymentOb" status="i">

<tr>
<td>${unitInfoPaymentOb.paId}</td>
<td>${unitInfoPaymentOb.paBiId}</td>
<td>${unitInfoPaymentOb.paUnId}</td>
<td>${unitInfoPaymentOb.paType}</td>
<td>${unitInfoPaymentOb.paCreaterName}</td>
<td>${unitInfoPaymentOb.pyCreaterAuthority}</td>



  </tr>
</g:each>

</table>

 