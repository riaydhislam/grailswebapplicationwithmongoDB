<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Address Id</td>
 <td>First Name</td> 
 <td>Middle Name</td> 
 <td>Last Name</td> 
 <td>National Id </td> 
 <td>Email</td> 
 
 
</tr>
 </thead>
 
<g:each in="${address}" var="addressOb" status="i">

<tr>
<td>${addressOb.adId}</td>
<td>${addressOb.adFirstName}</td>

<td>${addressOb.adMiddleName}</td>

<td>${addressOb.adLastName}</td>

<td>${addressOb.adNationalIdNumber}</td>

<td>${addressOb.adEMail}</td>




 
  </tr>
</g:each>

</table>

 