<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Unit Id</td>
 <td>Floor Id</td>   
 <td>Code</td>  
 <td>Name</td>        
 <td>Type</td>   
 <td>Floor Unit</td>         
 
 
            
</tr>
 </thead>
 
<g:each in="${units}" var="unitOb" status="i">

<tr>
<td>${unitOb.unId} </a></td>
<td>${unitOb.unflId}</td>
<td>${unitOb.unCode}</td>
<td>${unitOb.unName}</td>
<td>${unitOb.unUseType}</td>
<td>${unitOb.unNumberOfFloorUnit}</td>





  </tr>
</g:each>

</table>

