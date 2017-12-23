<table>
  <tr>
  <td><label for="adId"><g:message code="adId.label"/></label>
  <g:textField name="adId" value="${addressInfoInstance?.adId}"/>
  </td> 
  
  <td><label for="adFirstName"><g:message code="adFirstName.label"/></label>
   <g:textField name="adFirstName" value="${addressInfoInstance?.adFirstName}"/>
</td>

  <td> <label for="adMiddleName"><g:message code="addressInfo.adMiddleName.label"/></label>
   <g:textField name="adMiddleName" value="${addressInfoInstance?.adMiddleName}"/>
</td>
</tr>
<tr>
  <td> 
  <label for="adLastName"><g:message code="addressInfo.adLastName.label"/></label>
   <g:textField name="adLastName" value="${addressInfoInstance?.adLastName}"/>
</td>
<td> 
  <label for="adNationalIdNumber"><g:message code="addressInfo.adNationalIdNumber.label"/></label> <br>
   <g:textField name="adNationalIdNumber" value="${addressInfoInstance?.adNationalIdNumber}"/>
</td>

<td> 
<label for="adEMail"><g:message code="addressInfo.adEMail.label"/></label><br>
<g:textField name="adEMail" value="${addressInfoInstance?.adEMail}"/>
</td>
  </tr>
</table>