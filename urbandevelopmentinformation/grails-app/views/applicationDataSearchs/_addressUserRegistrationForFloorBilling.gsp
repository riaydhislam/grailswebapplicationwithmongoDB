<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td><g:message code="addressId.label"/></td>
 <td><g:message code="nationalIdNumber.label"/></td>   
 <td><g:message code="passportNumber.label"/></td>         
 <td><g:message code="birthCertificateNumber.label"/></td>  
 <td><g:message code="birthDate.label"/></td>  
            
</tr>
 </thead>
 
<g:each in="${addressInfos}" var="nlistTable">

<tr>
<td>

<g:link controller="floorInfoBillingInfo" action="create" params="${[biCreaterAddressId: nlistTable.adId,
	biCreaterName:nlistTable.adFirstName +" "+nlistTable.adMiddleName +" "+nlistTable.adLastName,
	biCreaterAuthority:nlistTable.adJobProvider]}">
 <input type="button" value="${nlistTable.adId }"> </g:link></td>   
 

<td>${nlistTable.adNationalIdNumber}</td>
<td>${nlistTable.adPassportNumber}</td>
<td>${nlistTable.adBirthCertificateNumber}</td>
<td>${nlistTable.adBirthDate}</td>

  </tr>
</g:each>

</table>



