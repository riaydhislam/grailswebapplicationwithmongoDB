<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Authorization Plot Id</td>
 <td>Authority Id</td>
 <td>Authority Code</td>         
 <td>Authority Name</td>  
 <td>Authority Type</td>  
 <td>Authorization Number</td>  
 <td>Authorization Application Copy</td> 
	<td>Authorization Approved Copy</td>   
  
	
            
</tr>
 </thead>
 
<g:each in="${authoritys}" var="authorityOb" status="i">

<tr>
<td><a href="#"> ${floorUnitOb.authorityId} </a></td>

<td>${authorityOb.auPlotId}</td>
<td>${authorityOb.auBuildingId}</td>
<td>${authorityOb.auBuildingFloorId}</td>
<td>${authorityOb.auBuildingFloorUnitId}</td>
<td>${authorityOb.auAppliedDate}</td>
<td>${authorityOb.auApprovalDate}</td>
<td>${authorityOb.auPublishDate}</td>
<td>${authorityOb.auPersonAddressId}</td>


<td>${authorityOb.authorityCode}</td>
<td>${authorityOb.authorityName}</td>
<td>${authorityOb.authorityType}</td>
<td>${authorityOb.authorizationNumber}</td>
<td>${authorityOb.authorizationServiceCode}</td>
<td>${authorityOb.authorizationServiceName}</td>

<td>${authorityOb.auApplicationCopy}</td>
<td>${authorityOb.auApprovedCopy}</td>






  </tr>
</g:each>

</table>

