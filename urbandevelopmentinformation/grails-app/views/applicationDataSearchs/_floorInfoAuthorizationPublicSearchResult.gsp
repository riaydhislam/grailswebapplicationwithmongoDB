<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Authorization Id</td>
 <td>Floor Id</td> 
 <td>Address Id</td>
 <td>Name</td>
 <td>Type</td>  
 <td>Number</td>  
 
            
</tr>
 </thead>
 
<g:each in="${floorInfoAuthorization}" var="floorInfoAuthorizationOb" status="i">

<tr>
<td>${floorInfoAuthorizationOb.auId}</td>
<td>${floorInfoAuthorizationOb.auFlId}</td>
<td>${floorInfoAuthorizationOb.auAddressId}</td>
<td>${floorInfoAuthorizationOb.auName}</td>
<td>${floorInfoAuthorizationOb.auType}</td>
<td>${floorInfoAuthorizationOb.auNumber}</td>



  </tr>
</g:each>

</table>

 