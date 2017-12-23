<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>  
 <td><g:message code="alId.label"/></td>         
 <td><g:message code="alDivisionName.label"/></td>         
 <td><g:message code="alDistictName.label"/></td>
 <td><g:message code="alUpzillaOrThanaName.label"/></td>
 <td><g:message code="alUnionName.label"/></td>
 <td><g:message code="alRoadName.label"/></td>  
 <td><g:message code="type.label"/></td>  
            
</tr>
 </thead>
 
<g:each in="${addressLocationInfos}" var="nlistTable">

<tr>
<td>
 <g:link controller="floorInfo" action="create" params="${[flAddressId: nlistTable.alId]}">
 <input type="button" value="${nlistTable.alId }"> </g:link></td> 
<td>${nlistTable.alDivisionName}</td>
<td>${nlistTable.alDistictName}</td>
<td>${nlistTable.alUpzillaOrThanaName}</td>
<td>${nlistTable.alUnionName}</td>
<td>${nlistTable.alRoadName}</td>
<td>${nlistTable.alType}</td>

  </tr>
</g:each>

</table>