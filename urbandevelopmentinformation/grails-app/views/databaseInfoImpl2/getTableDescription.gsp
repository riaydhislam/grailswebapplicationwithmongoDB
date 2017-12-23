<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Database Table Description</title>
</head>
<body>

<table border="1">

<thead>
<tr>
 <td>Column Name</td>
 <td>Data Type</td>   
 <td>Data Type Length</td>         
 
            
</tr>
 </thead>
 
 <g:each in="${tableDescription}" var="tableList">
  <tr>
    <td>${tableList.cloumnName}</td>
    <td>${tableList.columnDataType}</td>
    <td>${tableList.columnDataTypeLength}</td>
   </tr>
 </g:each>
 
 </tr>
 
</table>

</body>
</html>