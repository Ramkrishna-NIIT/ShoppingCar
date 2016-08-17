<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Product Details</title>
</head>
<body>
<%@ include file="headercar.jsp" %>
<table class="table">
	<thead colspan="3">
	<th><h1>Details</h1></th>
	</thead>
	<tbody>
		<tr >
			<td rowspan="6"><img src="resources/images/${param.id}.jpg"></td>
			
		</tr>
		<tr>
		<td><h3>Features</h3></td>
		<td><h3>Details</h3></td>
		</tr>
		<tr>
		<td><b>Name</b></td>
		<td>${param.name}</td>
		</tr>
		<tr>
		<td><b>Price</b></td>
		<td>${param.price}</td>
		</tr>
		<tr>
		<td><b>Category</b></td>
		<td>${param.category}</td>
		</tr>
		<tr>
		<td><b>Milage</b></td>
		<td>${param.milage}</td>
		</tr>
			<tr>
		<td><b>Displacement</b></td>
		<td>${param.displacement}</td>
		</tr>
		<tr>
			<td colspan="3"><b>Product Description</b></b></td>
			<td>${param.description}</td>
		</tr>
		<tr>
			<td>
				<a href = "checkout" class = "btn btn-primary" role = "button">Buy </a> 
            	<a href = "#" class = "btn btn-default" role = "button">Wishlist</a>
            	<a href="#myModal" role="button" data-toggle="modal" class = "btn btn-default">Share with a Friend</a>
            </td>
		</tr>
		<tr>
			
		</tr>
	</tbody>
	</table>

</body>
</html>