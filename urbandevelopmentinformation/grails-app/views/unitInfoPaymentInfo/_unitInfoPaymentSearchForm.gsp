<table>
  <tr>
  <td>
  
  <label for="paId"><g:message code="paId.label"/></label>
  <g:textField name="paId" value="${unitInfoPaymentInfoInstance?.paId}"/>
  </td> 
<td> 
  <label for="paBiId"><g:message code="paBiId.label"/></label>
   <g:textField name="paBiId" value="${unitInfoPaymentInfoInstance?.paBiId}"/>
</td>
<td> 
<label for="paUnId"><g:message code="unId.label"/></label><br>
<g:textField name="paUnId" value="${unitInfoPaymentInfoInstance?.paUnId}"/>
</td>
</tr>

<tr>

<td>
  
  <label for="paType"><g:message code="type.label"/></label>
  <g:textField name="paType" value="${unitInfoPaymentInfoInstance?.paType}"/>
  </td> 
<td> 
  <label for="paCreaterName"><g:message code="createrName.label"/></label>
   <g:textField name="paCreaterName" value="${unitInfoPaymentInfoInstance?.paCreaterName}"/>
</td>
<td> 
<label for="pyCreaterAuthority"><g:message code="createrAuthority.label"/></label>
<g:textField name="pyCreaterAuthority" value="${unitInfoPaymentInfoInstance?.pyCreaterAuthority}"/>
</td>

</tr>
</table>




