<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Database Table List</title>
</head>
<body>

<table border="0">

<tr>
 <td>Database Table List:</td>
    <td>
 <g:each in="${tableList}" var="tList">
  <tr>
    <td>${tList.tableName}</td>
   </tr>
 </g:each>
 
 </tr>
 
</table>

</body>
</html>