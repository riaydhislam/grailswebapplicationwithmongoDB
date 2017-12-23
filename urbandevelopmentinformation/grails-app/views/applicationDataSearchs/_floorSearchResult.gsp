<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Floor Id</td>
 <td>Building Id</td>   
 <td>Floor Code</td>         
 <td>Floor Name</td> 
 <td>Floor Type</td>  
 <td>Floor Unit</td>

            
</tr>
 </thead>
 
<g:each in="${floors}" var="floorOb" status="i">

<tr>
<td>${floorOb.flId} </a></td>
<td>${floorOb.flBuId}</td>
<td>${floorOb.flCode}</td>
<td>${floorOb.flName}</td>
<td>${floorOb.flUseType}</td>
<td>${floorOb.flNumberOfFloorUnit}</td>


  </tr>
</g:each>

</table>

