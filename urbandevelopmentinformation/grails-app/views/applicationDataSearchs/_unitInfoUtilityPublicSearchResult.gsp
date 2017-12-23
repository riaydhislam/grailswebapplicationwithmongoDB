<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Utility Id</td>
 <td>Unit Id</td> 
 <td>Address Id</td>
 <td>Type</td>
 <td>Creater Authority</td>  
 <td>Creater Name </td>
 
   
</tr>
 </thead>
 
<g:each in="${unitInfoUtility}" var="unitInfoUtilityOb" status="i">

<tr>
<td>${unitInfoUtilityOb.utId}</td>
<td>${unitInfoUtilityOb.utUnId}</td>
<td>${unitInfoUtilityOb.utCreaterAddressId}</td>
<td>${unitInfoUtilityOb.utType}</td>
<td>${unitInfoUtilityOb.utCreaterAuthority}</td>
<td>${unitInfoUtilityOb.utCreaterName}</td>



  </tr>
</g:each>

</table>

 