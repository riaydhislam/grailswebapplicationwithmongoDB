<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
  <td>Billing Id</td>
  <td>Billing Building Id</td>  
  <td>Billing Building Floor Id</td> 
 <td>Billing Cost Type</td>  
  <td>Billing Print Copy</td>  
  <td>Billing Amount</td>  
  <td>Billing Reference Number</td>  
  <td>Billing Remark</td>  
  
 
            
</tr>
 </thead>
 
<g:each in="${bills}" var="billOb" status="i">

<tr>
<td><a href="#"> ${billOb.biId} </a></td>

<td>${billOb.biBuildingId}</td>
<td>${billOb.biBuildingFloorId}</td>
<td>${billOb.biCostType}</td>
<td>${billOb.biPrintCopy}</td>
<td>${billOb.biAmount}</td>
<td>${billOb.biReferenceNumber}</td>
<td>${billOb.biRemark}</td>


  </tr>
</g:each>

</table>

 