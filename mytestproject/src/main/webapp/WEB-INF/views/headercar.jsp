<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>home</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style type="text/css">

/* START OF Change the Navbar Colors/Font/Size */
.navbar-default {
    background-color: #12492B;
    border-color: #12492B;
}
.navbar-default .navbar-nav > li > a {
    color: #DE4F30;
}
.navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:hover, .navbar-default .navbar-nav > .active > a:focus {
    background-color:4CAF50;
    color: 4CAF50;
}
@media only screen and (max-width: 50px) {
	.container .navbar-header .logo img {
		width: 10%;
		height: 10%;
	}
}

/* END OF Change the Navbar Colors/Font/Size */
</style>
</head>
<body style="background-color:#CDFFDC;">
	<!-- Open the output in a new blank tab (Click the arrow next to "Show Output" button) and resize the browser window to understand how the Bootstrap responsive grid system works. -->

	<nav id="myNavbar"
		class="main-nav-bar navbar navbar-default navbar-inverse navbar-fixed-top"
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
				src="resources/images/shopping-cart.jpg">
			</a>



		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href=" " target="_blank">Home</a></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"
					class="dropdown-toggle">Car Products<b class="caret"></b></a>
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

				<a class="navbar-brand" rel="home" href="#" title="ShoppingCart">
					<img style="max-width: 30px; margin-top: -2px;"
					src="resources/images/shopping-cart.jpg">
				</a>
				<li><a href="#" target="_blank">My Cart</a></li>

				<li><a href="adminloginn">Login</a></li>
				<li><a href="user">Register</a></li>
			</ul>



		</div>

	</div>


	</nav>

	<br>
	<br>
	<br>
	
   
	
</body>
</html>