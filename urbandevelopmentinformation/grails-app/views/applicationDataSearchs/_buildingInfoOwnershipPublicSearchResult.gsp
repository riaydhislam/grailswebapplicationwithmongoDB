<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Owner Id</td>
 <td>Building Id</td> 
 <td>Full Name</td>
 <td>Applied Date</td>
 <td>Last Modified Date</td>  
 <td>Approved Date</td> 
 
            
</tr>
 </thead>
 
<g:each in="${buildingInfoOwnership}" var="buildingInfoOwnershipOb" status="i">

<tr>
<td>${buildingInfoOwnershipOb.owId}</td>
<td>${buildingInfoOwnershipOb.owBuId}</td>
<td>${buildingInfoOwnershipOb.owFullName}</td>
<td>${buildingInfoOwnershipOb.owAppliedDate}</td>
<td>${buildingInfoOwnershipOb.owLastModifiedDate}</td>
<td>${buildingInfoOwnershipOb.owApprovedDate}</td>

  </tr>
</g:each>

</table>

 