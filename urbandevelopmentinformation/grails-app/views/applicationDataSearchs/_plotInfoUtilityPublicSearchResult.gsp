<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Utility Id</td>
 <td>Plot Id</td> 
 <td>Address Id</td>
 <td>Type</td>
 <td>Creater Authority</td>  
 <td>Creater Name </td>
 
   
</tr>
 </thead>
 
<g:each in="${plotInfoUtility}" var="plotInfoUtilityOb" status="i">

<tr>
<td>${plotInfoUtilityOb.utId}</td>
<td>${plotInfoUtilityOb.utPlId}</td>
<td>${plotInfoUtilityOb.utCreaterAddressId}</td>
<td>${plotInfoUtilityOb.utType}</td>
<td>${plotInfoUtilityOb.utCreaterAuthority}</td>
<td>${plotInfoUtilityOb.utCreaterName}</td>



  </tr>
</g:each>

</table>

 