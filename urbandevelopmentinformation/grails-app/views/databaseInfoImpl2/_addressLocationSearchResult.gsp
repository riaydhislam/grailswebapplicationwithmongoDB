<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td><g:message code="addressId.label"/></td>
 <td><g:message code="thanaCode.label"/></td>       
 <td><g:message code="distictCode.label"/></td>    
 <td><g:message code="divisionName.label"/></td>    
 <td><g:message code="districtName.label"/></td>        
 <td><g:message code="upazilaName.label"/></td>        
 <td><g:message code="unionName.label"/></td>   
                              
</tr>
 </thead>
 
<g:each in="${resultList}" var="nlistTable">
<tr>
<td> <g:link controller="addressLocationInfo" action="create"
 params="${[ alReferenceId : nlistTable.addressId,  alThanaCode: nlistTable.thanaCode,
  alDistictCode: nlistTable.distictCode, alDivisionName:nlistTable.divisionName,
 alDistictName:nlistTable.districtName, alUpzillaOrThanaName:nlistTable.upazilaName,
 alUnionName:nlistTable.unionName]}">
 
 <input type="button" value="${nlistTable.addressId }"> </g:link></td>

<td>${nlistTable.thanaCode}</td>
<td>${nlistTable.distictCode} </td> 
<td>${nlistTable.divisionName}</td>
<td>${nlistTable.districtName}</td>
<td>${nlistTable.upazilaName} </td> 
<td>${nlistTable.unionName} </td> 

  </tr>
</g:each>

 <div class="pagination">
       <g:paginate controller="databaseInfo" action="getAddressLocationData" max="10" offset="10" total="${resultList.size()}"/>
</div>
</table>