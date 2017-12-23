<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Building Id</td>
 <td>Plot Id</td>
 <td>Type</td>  
 <td>Number Of Floor</td> 
  <td>Total Ground Area</td>     
 <td>Total Height</td>  
  
          
 
  
            
</tr>
 </thead>
 
<g:each in="${buildings}" var="buildingOb" status="i">

<tr>
<td>${buildingOb.buId} </a></td>
<td>${buildingOb.buPlId}</td>
<td>${buildingOb.buUseType}</td>
<td>${buildingOb.buNumberOfFloor}</td>
<td>${buildingOb.buTotalGroundArea}</td>
<td>${buildingOb.buTotalHeight}</td>


  </tr>
</g:each>

</table>




