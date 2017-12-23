<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Authorization Id</td>
 <td>Plot Id</td> 
 <td>Address Id</td>
 <td>Name</td>
 <td>Type</td>  
 <td>Number</td>  
 
            
</tr>
 </thead>
 
<g:each in="${plotInfoAuthorization}" var="plotInfoAuthorizationOb" status="i">

<tr>
<td>${plotInfoAuthorizationOb.auId}</td>
<td>${plotInfoAuthorizationOb.auPlId}</td>
<td>${plotInfoAuthorizationOb.auAddressId}</td>
<td>${plotInfoAuthorizationOb.auName}</td>
<td>${plotInfoAuthorizationOb.auType}</td>
<td>${plotInfoAuthorizationOb.auNumber}</td>



  </tr>
</g:each>

</table>

 