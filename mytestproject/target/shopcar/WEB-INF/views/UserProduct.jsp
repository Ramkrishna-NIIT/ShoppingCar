<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
<meta charset="UTF-8">
<title>data table</title>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
<style>
<table id="myTable" class="table table-striped"> 
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}


</style>
</head>
<body>

<div class="container" style="overflow-x:auto;">
<table id="myTable" class="display" width="100%">   
        <thead>
          <tr>  
            <th>id</th>  
            <th> name</th>  
            <th>category</th>  
            <th>price</th> 
            <th>status</th>
             
          </tr>  
        </thead> 
        <tbody>
        <c:forEach items="${listtojsp}" var="element">
          <tr>  
            <td>${element.id}</td>  
            <td>${element.name}</td>  
            <td>${element.category}</td>  
            <td>${element.price}</td> 
           <td>${element.status}</td>
        
           </tr>  
 	</c:forEach>
        
        </tbody>  
      </table> 
     </div> 
</body>
</html>