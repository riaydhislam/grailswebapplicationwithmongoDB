<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>  
<td><g:message code="address.locationInfo.alId.label"/></td>         
 <td><g:message code="addressLocationInfo.alDivisionName.label"/></td>         
 <td><g:message code="addressLocationInfo.alDistictName.label"/></td>
 <td><g:message code="addressLocationInfo.alUpzillaOrThanaName.label"/></td>
 <td><g:message code="addressLocationInfo.alUnionName.label"/></td>
 <td><g:message code="addressLocationInfo.alRoadName.label"/></td>  
 <td><g:message code="addressLocationInfo.alType.label"/></td>  
            
</tr>
 </thead>
 
<g:each in="${addressLocationInfos}" var="nlistTable">

<tr>
<td>${nlistTable.alId}</td>
<td>${nlistTable.alDivisionName}</td>
<td>${nlistTable.alDistictName}</td>
<td>${nlistTable.alUpzillaOrThanaName}</td>
<td>${nlistTable.alUnionName}</td>
<td>${nlistTable.alRoadName}</td>
<td>${nlistTable.alType}</td>

  </tr>
</g:each>

</table>