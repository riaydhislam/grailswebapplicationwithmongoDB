<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Owner Id</td>
 <td>Unit Id</td> 
 <td>Full Name</td>
 <td>Applied Date</td>
 <td>Last Modified Date</td>  
 <td>Approved Date</td> 
 
            
</tr>
 </thead>
 
<g:each in="${unitInfoOwnership}" var="unitInfoOwnershipOb" status="i">

<tr>
<td>${unitInfoOwnershipOb.owId}</td>
<td>${unitInfoOwnershipOb.owUnId}</td>
<td>${unitInfoOwnershipOb.owFullName}</td>
<td>${unitInfoOwnershipOb.owAppliedDate}</td>
<td>${unitInfoOwnershipOb.owLastModifiedDate}</td>
<td>${unitInfoOwnershipOb.owApprovedDate}</td>

  </tr>
</g:each>

</table>

 