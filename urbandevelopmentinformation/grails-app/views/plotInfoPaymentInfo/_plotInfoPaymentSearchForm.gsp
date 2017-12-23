<table>
  <tr>
  <td>
  
  <label for="paId"><g:message code="paId.label"/></label>
  <g:textField name="paId" value="${plotInfoPaymentInfoInstance?.paId}"/>
  </td> 
<td> 
  <label for="paBiId"><g:message code="paBiId.label"/></label>
   <g:textField name="paBiId" value="${plotInfoPaymentInfoInstance?.paBiId}"/>
</td>
<td> 
<label for="paPlId"><g:message code="plId.label"/></label><br>
<g:textField name="paPlId" value="${plotInfoPaymentInfoInstance?.paPlId}"/>
</td>
</tr>

<tr>

<td>
  
  <label for="paType"><g:message code="type.label"/></label>
  <g:textField name="paType" value="${plotInfoPaymentInfoInstance?.paType}"/>
  </td> 
<td> 
  <label for="paCreaterName"><g:message code="createrName.label"/></label>
   <g:textField name="paCreaterName" value="${plotInfoPaymentInfoInstance?.paCreaterName}"/>
</td>
<td> 
<label for="pyCreaterAuthority"><g:message code="createrAuthority.label"/></label>
<g:textField name="pyCreaterAuthority" value="${plotInfoPaymentInfoInstance?.pyCreaterAuthority}"/>
</td>

</tr>
</table>




