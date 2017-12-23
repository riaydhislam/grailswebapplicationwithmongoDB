<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Address Location Id</td>
 <td>Reference Id</td> 
 <td>Thana Code</td>
 <td>Division Name</td>
 <td>Block Number</td>  
 <td>Road Number</td>
 <td>Location Picture</td>
 
 
  
 
            
</tr>
 </thead>
 
<g:each in="${addressLocations}" var="addressLocationOb" status="i">

<tr>
<td>${addressLocationOb.alId}</td>
<td>${addressLocationOb.alReferenceId}</td>
<td>${addressLocationOb.alThanaCode}</td>
<td>${addressLocationOb.alDivisionName}</td>
<td>${addressLocationOb.alBlockNumber}</td>
<td>${addressLocationOb.alRoadNumber}</td>



  </tr>
</g:each>

</table>

 