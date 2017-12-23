<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Utility Id</td>
 <td>Utility Plot Id</td>
 <td>Utility Building Id</td>    
 <td>Utility Create Date</td>    
 <td>Utility Submission Date</td>  
 <td>Utility Approval Date</td>  
  <td>Utility Type Picture</td>  
 <td>Utility Name</td>
</tr>
 </thead>

 
<g:each in="${utilitys}" var="utilityob" status="i">

<tr>
<td><a href="#"> ${utilityob.utId} </a></td>
<td>${utilityob.utPlotId}</td>
<td>${utilityob.utBuildingId}</td>
<td>${utilityob.utBuildingFloorId}</td>
<td>${utilityob.utBuildingFloorUnitId}</td>
<td>${utilityob.utCreaterAddressId}</td>
<td>${utilityob.utType}</td>
<td>${utilityobutCreaterName}</td>
<td>${utilityob.utCreaterAuthority}</td>
<td>${utilityob.utCreateDate}</td>
<td>${utilityob.utLastModifiedDate}</td>
<td>${utilityob.utSubmissionDate}</td>
<td>${utilityob.utApprovalDate}</td>
<td>${utilityob.utServiceDate}</td>
<td>${utilityob.utDisServiceDate}</td>
<td>${utilityob.utTypePic}</td>


  </tr>
</g:each>

</table>

