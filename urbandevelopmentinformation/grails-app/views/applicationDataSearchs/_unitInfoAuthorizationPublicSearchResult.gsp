<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Authorization Id</td>
 <td>Unit Id</td> 
 <td>Address Id</td>
 <td>Name</td>
 <td>Type</td>  
 <td>Number</td>  
 
            
</tr>
 </thead>
 
<g:each in="${unitInfoAuthorization}" var="unitInfoAuthorizationOb" status="i">

<tr>
<td>${unitInfoAuthorizationOb.auId}</td>
<td>${unitInfoAuthorizationOb.auUnId}</td>
<td>${unitInfoAuthorizationOb.auAddressId}</td>
<td>${unitInfoAuthorizationOb.auName}</td>
<td>${unitInfoAuthorizationOb.auType}</td>
<td>${unitInfoAuthorizationOb.auNumber}</td>



  </tr>
</g:each>

</table>

 