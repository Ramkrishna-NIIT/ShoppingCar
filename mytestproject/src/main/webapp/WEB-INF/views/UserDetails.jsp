<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
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

	<!-- ==========================User product table============================= -->
<h2>User Products</h2>
<div style="overflow-x:auto;">
<table id="myTable" class="display" width="100%">  
        <thead>  
          <tr>  
            <th>Id</th>  
            <th>Name</th>  
            <th>Price</th>  
            <th>Category</th>  
            <th>Milage</th>  
            <th>Displacement</th>  
            <th>Description</th>
          </tr>  
        </thead>  
        <tbody>  
         <c:forEach items="${listtojsp}" var="element">
            <tr>
             <td>${element.id}</td>  
             <td>${element.name}</td>  
             <td>${element.price}</td>  
             <td>${element.category}</td> 
             <td>${element.milage}</td>  
             <td>${element.displacement}</td>  
             <td>${element.description}</td>
           <td><a href="UserProDuctdetails?id=${element.id}&name=${element.name}&price=${element.price}&category=${element.category}&milage=${element.milage}&displacement=${element.displacement}&description=${element.description}">Details</a></td>
            </tr> 
          </c:forEach>
        </tbody>  
      </table> 
     </div> 
   <%--   <%@ include file="footercar.jsp" %> --%>
</body>
</html>                       