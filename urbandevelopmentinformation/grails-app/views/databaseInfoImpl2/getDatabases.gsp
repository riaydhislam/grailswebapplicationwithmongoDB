<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Database Name List</title>
</head>
<body>

<table border="0">

<tr>
 <td>Database Name List:</td>
    <td>
 <g:each in="${databaseList}" var="tList">
  <tr>
    <td>${tList.databaseName}</td>
   </tr>
 </g:each>
 
 </tr>
 
</table>

</body>
</html>