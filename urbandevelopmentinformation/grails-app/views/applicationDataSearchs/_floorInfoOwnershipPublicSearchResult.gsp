<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Owner Id</td>
 <td>Floor Id</td> 
 <td>Full Name</td>
 <td>Applied Date</td>
 <td>Last Modified Date</td>  
 <td>Approved Date</td> 
 
            
</tr>
 </thead>
 
<g:each in="${floorInfoOwnership}" var="floorInfoOwnershipOb" status="i">

<tr>
<td>${floorInfoOwnershipOb.owId}</td>
<td>${floorInfoOwnershipOb.owFlId}</td>
<td>${floorInfoOwnershipOb.owFullName}</td>
<td>${floorInfoOwnershipOb.owAppliedDate}</td>
<td>${floorInfoOwnershipOb.owLastModifiedDate}</td>
<td>${floorInfoOwnershipOb.owApprovedDate}</td>

  </tr>
</g:each>

</table>

 