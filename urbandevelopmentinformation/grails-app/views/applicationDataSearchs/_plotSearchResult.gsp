<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Plot Id</td>
 <td>Type</td>   
 <td>CS Number</td>  
 <td>BS Number</td>        
 <td>Monza Number</td>   
 <td>Total Area</td>         
 
 
            
</tr>
 </thead>
 
<g:each in="${plots}" var="plotOb" status="i">

<tr>
<td>${plotOb.plId} </a></td>
<td>${plotOb.plType}</td>
<td>${plotOb.plCSNumber}</td>
<td>${plotOb.plMSNumber}</td>
<td>${plotOb.plMonzaNumber}</td>
<td>${plotOb.plTotalArea}</td>





  </tr>
</g:each>

</table>

