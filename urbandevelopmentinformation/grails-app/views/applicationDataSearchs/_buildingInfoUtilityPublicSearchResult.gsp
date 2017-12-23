<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Utility Id</td>
 <td>Building Id</td> 
 <td>Address Id</td>
 <td>Type</td>
 <td>Creater Authority</td>  
 <td>Creater Name </td>
 
   
</tr>
 </thead>
 
<g:each in="${buildingInfoUtility}" var="buildingInfoUtilityOb" status="i">

<tr>
<td>${buildingInfoUtilityOb.utId}</td>
<td>${buildingInfoUtilityOb.utBuId}</td>
<td>${buildingInfoUtilityOb.utCreaterAddressId}</td>
<td>${buildingInfoUtilityOb.utType}</td>
<td>${buildingInfoUtilityOb.utCreaterAuthority}</td>
<td>${buildingInfoUtilityOb.utCreaterName}</td>



  </tr>
</g:each>

</table>

 