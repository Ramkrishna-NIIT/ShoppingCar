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
	
	<!-- ==== Starting modal ==== -->
	
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Recommend a Friend</h4>
        </div>
        <div class="modal-body">
         <form class="form-horizontal" name="commentform" method="post" action="sendEmail">
    <div class="form-group">
        <label class="control-label col-md-4" for="first_name">First Name</label>
        <div class="col-md-6">
            <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="last_name">Last Name</label>
        <div class="col-md-6">
            <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="email">Email Address</label>
        <div class="col-md-6 input-group">
        <span class="input-group-addon">@</span>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email Address"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="comment">Question or Comment</label>
        <div class="col-md-6">
            <textarea rows="6" class="form-control" id="comments" name="comments" placeholder="Your suggestion or comment here">Hi, ${param.name} is available at ${param.price}</textarea>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-6">
            <button type="submit" value="Submit" class="btn btn-custom pull-right">Send</button>
        </div>
    </div>
</form>
        </div><!-- End of Modal body -->
        </div><!-- End of Modal content -->
        </div><!-- End of Modal dialog -->
    </div>

</body>
</html>