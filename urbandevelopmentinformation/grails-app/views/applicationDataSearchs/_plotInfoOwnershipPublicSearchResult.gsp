<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Owner Id</td>
 <td>Plot Id</td> 
 <td>Full Name</td>
 <td>Applied Date</td>
 <td>Last Modified Date</td>  
 <td>Approved Date</td> 
 
            
</tr>
 </thead>
 
<g:each in="${plotInfoOwnership}" var="plotInfoOwnershipOb" status="i">

<tr>
<td>${plotInfoOwnershipOb.owId}</td>
<td>${plotInfoOwnershipOb.owPlId}</td>
<td>${plotInfoOwnershipOb.owFullName}</td>
<td>${plotInfoOwnershipOb.owAppliedDate}</td>
<td>${plotInfoOwnershipOb.owLastModifiedDate}</td>
<td>${plotInfoOwnershipOb.owApprovedDate}</td>

  </tr>
</g:each>

</table>

 