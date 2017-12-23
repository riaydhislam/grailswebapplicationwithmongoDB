<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Utility Id</td>
 <td>Floor Id</td> 
 <td>Address Id</td>
 <td>Type</td>
 <td>Creater Authority</td>  
 <td>Creater Name </td>
 
   
</tr>
 </thead>
 
<g:each in="${floorInfoUtility}" var="floorInfoUtilityOb" status="i">

<tr>
<td>${floorInfoUtilityOb.utId}</td>
<td>${floorInfoUtilityOb.utFlId}</td>
<td>${floorInfoUtilityOb.utCreaterAddressId}</td>
<td>${floorInfoUtilityOb.utType}</td>
<td>${floorInfoUtilityOb.utCreaterAuthority}</td>
<td>${floorInfoUtilityOb.utCreaterName}</td>



  </tr>
</g:each>

</table>

 