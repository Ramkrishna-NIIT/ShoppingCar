<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>registration</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<style type="text/css">
.bs-example {
	margin: 20px;
}
/* Fix alignment issue of label on extra small devices in Bootstrap 3.2 */
.form-horizontal .control-label {
	padding-top: 7px;
}
<!-- form in center -->
 body {
    
    margin: 0;
    padding: 0;
}
h1 {
    color : #000000;
    text-align : center;
    font-family: "SIMPSON";
}
form {
   width: 300px;
    margin: 0 auto;
     
}


input {
 width: 100%;
 border-radius: 10px;
    background-color: #f2f2f2;
    padding: 10px;
}

button[type=submit]{
background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
   
}
button[type=submit]:hover {
    background-color: #45a049;
}

</style>
</head>

<body style="background-color:#CDFFDC;">


	<nav id="myNavbar"
		class="navbar navbar-default navbar-inverse navbar-fixed-top"
		role="navigation"> <!-- Brand and toggle get grouped for better mobile display -->
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>




			<a class="navbar-brand" rel="home" href="#" title="ShoppingCart">
				<img style="max-width: 50px; margin-top: -10px;"
				src="C:\Users\ADMIN\Desktop\Web Pages\shopping-cart.jpg">
			</a>



		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="Showhomepage">Home</a></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"
					class="dropdown-toggle">Products<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="showuserdetails?name=Hyundai">Hyundai</a></li>
						<li><a href="Marutiproducts?name=Maruti">Maruti</a></li>
						<li><a href="volvo?name=Volvo">Volvo</a></li>
						<li><a href="mercedes?name=Mercedes">Mercedes</a></li>						
					</ul></li>
				<li><a href="#" target="_blank">About</a></li>
				<li><a href="#" target="_blank">Contact</a></li>

			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" target="_blank">Login</a></li>
			</ul>

		</div>

	</div>


	</nav>
	<br>
	<br>
	<br>


	<h1>
		<p class="text-success">Register Yourself</p>
	</h1>



					<c:url var="addAction" value="/user/add"></c:url>
					<form:form action="${addAction}" commandName="user" method="POST">

						<table>

							<c:if test="${!empty user.username}">
								<tr>
									<td><form:label path="id">
											<spring:message text="ID" />
										</form:label></td>
									<td><form:input path="id" readonly="true" size="8"
											disabled="true" /> <form:hidden path="id" /></td>
								</tr>
							</c:if>

							<tr>

								<td>User Name:<FONT color="red"><form:errors
											path="username" /></FONT></td>

							</tr>

							<tr>

								<td><form:input type="text" path="username" /></td>

							</tr>

							<tr>

								<td>Password:<FONT color="red"><form:errors
											path="password" /></FONT></td>

							</tr>

							<tr>

								<td><form:password path="password" /></td>

							</tr>

							<tr>

								<td>Confirm Password:<FONT color="red"><form:errors
											path="confirmpassword" /></FONT></td>

							</tr>

							<tr>

								<td><form:password path="confirmpassword" /></td>

							</tr>

							<tr>

								<td>Email:<FONT color="red"><form:errors
											path="email" /></FONT></td>

							</tr>

							<tr>

								<td><form:input path="email" /></td>

							</tr>
<br>
							<tr>

								<td><c:if test="${empty user.username}">
										<button type="submit" value="Submit">Sign In</button></td>
								</c:if>
							</tr>

						</table>

					</form:form>



	<!-- 	</div>
	<br>
	<br>
	<br>


	<nav id="myNavbar"
		class="navbar navbar-default navbar-inverse navbar-fixed-bottom"
		role="navigation"> Brand and toggle get grouped for better mobile display
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>


			</button>



		</div>
		<ul class="nav navbar-nav">
			<li><a href=" " target="_blank">@ Copy Right of 2016</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a class="navbar-brand" rel="home"
				href="https://www.facebook.com/" title="twitter"> <img
					style="max-width: 30px; margin-top: -10px;"
					src="C:\Users\ADMIN\Desktop\Web Pages\facebook.png">
			</a></li>



			<li><a class="navbar-brand" rel="home" href="#" title="twitter">
					<img style="max-width: 30px; margin-top: -10px;"
					src="C:\Users\ADMIN\Desktop\Web Pages\twitter.png">
			</a></li>


			<li><a class="navbar-brand" rel="home" href="#"
				title="Google Plus"> <img
					style="max-width: 30px; margin-top: -10px;"
					src="C:\Users\ADMIN\Desktop\Web Pages\Googleplus.png">
			</a></li>
		</ul>
	</div>

	</nav>
 -->

</body>
</html>