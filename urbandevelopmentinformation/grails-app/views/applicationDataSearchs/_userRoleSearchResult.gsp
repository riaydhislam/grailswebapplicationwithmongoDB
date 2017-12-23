<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>UserRole Id</td>
 <td>UserRole Name</td> 
 <td>UserRole Type</td>
 <td>UserRole Date</td>   
 
            
</tr>
 </thead>
 
<g:each in="${userRoles}" var="userRoleOb" status="i">

<tr>
<td><a href="#"> ${userRoleOb.userRoleId} </a></td>
<td>${userRoleOb.userRoleName}</td>


  </tr>
</g:each>

</table>

  