<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>User Registration Id</td>
 <td>First Name</td> 
 <td>Middle Name</td>
 <td>Last Name</td>
 <td>Full Name</td>  
 <td>Create Date</td>  
 
  
 
            
</tr>
 </thead>
 
<g:each in="${userRegistrations}" var="userRegistrationOb" status="i">

<tr>
<td><a href="#"> ${userRegistrationOb.userRegistrationId} </a></td>
<td>${userRegistrationOb.userRegistrationFName}</td>
<td>${userRegistrationOb.userRegistrationMName}</td>
<td>${userRegistrationOb.userRegistrationLName}</td>

<td>${userRegistrationOb.userRegistrationfullName}</td>
<td>${userRegistrationOb.userRegistrationCrDate}</td>



  </tr>
</g:each>

</table>

 