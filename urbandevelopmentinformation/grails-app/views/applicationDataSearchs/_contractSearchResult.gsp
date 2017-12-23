<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 
 <td>Address Id</td> 
 <td>First Name</td>
 <td>Birth Certificate</td>
 <td>Joining Certification</td> 
 <td>Working Position</td> 
 <td>Passport Number</td> 
 <td>National Identification Number</td> 
 <td>Profession Type</td>


 
  
 
            
</tr>
 </thead>
 
<g:each in="${contracts}" var="contractOb" status="i">

<tr>
<td><a href="#"> ${contractob.addressId} </a></td>

<td>${contract.firstName}</td>
<td>${contractOb.middleName}</td>
<td>${contractOb.lastName}</td>
<td>${contractOb.birthDate}</td>
<td>${contractOb.birthCertificate}</td>
<td>${contractOb.joiningDate}</td>
<td>${contractOb.joiningCertification}</td>
<td>${contractOb.contactPersionPicture}</td>
<td>${contractOb.workingPosition}</td>
<td>${contractOb.previousWorking}</td>
<td>${contractOb.passportNumber}</td>
<td>${contractOb.passportIssueDate}</td>
<td>${contractOb.passportExpairDate}</td>
<td>${contractOb.nationalIdentificationNumber}</td>
<td>${contractOb.unionCode}</td>
<td>${contractOb.unionName}</td>
<td>${contractOb.villageCode}</td>
<td>${contractOb.villageName}</td>
<td>${contractOb.postalCodezipCode}</td>
<td>${contractOb.postalNamezipName}</td>
<td>${contractOb.taxIdentificationNumber}</td>
<td>${contractOb.professionType}</td>
<td>${contractOb.professionInstitute}</td>
<td>${contractOb.professionPosition}</td>
<td>${contractOb.professionalRemark}</td>
<td>${contractOb.status}</td>
<td>${contractOb.educationLevel}</td>
<td>${contractOb.educationInstitute}</td>
<td>${contractOb.educationResult}</td>
<td>${contractOb.educationPassingYear}</td>
<td>${contractOb.fatherFirstName}</td>
<td>${contractOb.fatherMiddleName}</td>
<td>${contractOb.fatherLastName}</td>
<td>${contractOb.fatherBirthDate}</td>
<td>${contractOb.fatherNationalIdentificationNumber}</td>
<td>${contractOb.motherFirstName}</td>
<td>${contractOb.motherMiddleName}</td>
<td>${contractOb.motherLastName}</td>
<td>${contractOb.motherNationalIdentificationNumber}</td>
<td>${contractOb.motherBirthDate}</td>






  </tr>
</g:each>

</table>

 