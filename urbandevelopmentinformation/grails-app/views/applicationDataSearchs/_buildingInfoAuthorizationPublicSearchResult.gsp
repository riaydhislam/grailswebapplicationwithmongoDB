<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Authorization Id</td>
 <td>Building Id</td> 
 <td>Address Id</td>
 <td>Name</td>
 <td>Type</td>  
 <td>Number</td>  
 
            
</tr>
 </thead>
 
<g:each in="${buildingInfoAuthorization}" var="buildingInfoAuthorizationOb" status="i">

<tr>
<td>${buildingInfoAuthorizationOb.auId}</td>
<td>${buildingInfoAuthorizationOb.auBuId}</td>
<td>${buildingInfoAuthorizationOb.auAddressId}</td>
<td>${buildingInfoAuthorizationOb.auName}</td>
<td>${buildingInfoAuthorizationOb.auType}</td>
<td>${buildingInfoAuthorizationOb.auNumber}</td>



  </tr>
</g:each>

</table>

 