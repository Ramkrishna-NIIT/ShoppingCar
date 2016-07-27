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

<!--slider-->
<script type="text/javascript">
	$(document).ready(function() {
		$("#myCarousel").carousel({
			interval : 2500,
			pause : "hover"

		});
	});
</script>



<style type="text/css">
.row>div {
	margin-bottom: 15px;
}

.header {
	min-height: 90px;
}

.footer {
	min-height: 60px;
}

.header, .footer {
	background: #2f2f2f;
}

.sidebar {
	background: #dbdfe5;
}

.content {
	background: #b4bac0;
}

.sidebar, .content {
	min-height: 300px;
}

<!--
Logo

 

Style

 

-->
<!--
@media only screen and (max-width: 50px) {
	.container .navbar-header .logo img {
		width: 10%;
		height: 10%;
	}
}

}
<!--
slider-->div.c-wrapper {
	width: 40%; /* for example */
	margin: auto;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 40%; /* use this, or not */
	margin: auto;
}
</style>
</head>
<body>
	<!-- Open the output in a new blank tab (Click the arrow next to "Show Output" button) and resize the browser window to understand how the Bootstrap responsive grid system works. -->

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
				src="/mytestproject/src/main/webapp/resources/images/shopping-cart.jpg">
			</a>



		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href=" " target="_blank">Home</a></li>
				<li class="dropdown"><a href="#" data-toggle="dropdown"
					class="dropdown-toggle">Car Products<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/mytestproject/src/main/webapp/WEB-INF/views/datatable.jsp">MicroCar</a></li>
						<li><a href="#">LuxuryCar</a></li>
						<li><a href="#">SuperCar</a></li>
						<li><a href="#">Roadster</a></li>
						<li><a href="#">SuvCar</a></li>
					</ul></li>
				<li><a href="#" target="_blank">About</a></li>
				<li><a href="#" target="_blank">Contact</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">

				<a class="navbar-brand" rel="home" href="#" title="ShoppingCart">
					<img style="max-width: 30px; margin-top: -2px;"
					src="/mytestproject/src/main/webapp/resources/images/shopping-cart.jpg">
				</a>
				<li><a href="#" target="_blank">My Cart</a></li>

				<li><a href="#" target="_blank">Login</a></li>
				<li><a href="/mytestproject/src/main/webapp/WEB-INF/views/registration.jsp">Register</a></li>
			</ul>



		</div>

	</div>


	</nav>

	<br>
	<br>
	<br>

	<h1>
		<p class="text-success">Shopping Car</p>
	</h1>
	<br>
	<h3>
		<p class="text-primary">Sample New Car Upcoming To Market Soon</p>
	</h3>


	<div>
		<div class="bs-example">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Carousel indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<!-- Wrapper for carousel items -->
				<div class="carousel-inner">
					<div class="active item">
						<img src="/mytestproject/src/main/webapp/resources/images/01.jpg"
							alt="First Slide">
						<div class="carousel-caption">
							<h3>First slide label</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
						</div>
					</div>
					<div class="item">
						<img src="/mytestproject/src/main/webapp/resources/images/02.jpg"
							alt="Second Slide">
						<div class="carousel-caption">
							<h3>Second slide label</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
						</div>
					</div>
					<div class="item">
						<img src="/mytestproject/src/main/webapp/resources/images/03.jpg"
							alt="Third Slide">
						<div class="carousel-caption">
							<h3>Third slide label</h3>
							<p>Praesent commodo cursus magna, vel scelerisque nisl
								consectetur.</p>
						</div>
					</div>
				</div>
				<!-- Carousel controls -->
				<a class="carousel-control left" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="carousel-control right" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>

		<br> <br>

		<! youe tube -->
		<div style="float: right; clear: left;">
			<iframe class="right" width="560" height="315"
				src="https://www.youtube.com/embed/wPCCTrtZ6es" frameborder="0"
				allowfullscreen></iframe>
		</div>


		<div></div>

		<h3>Sample new launched Car Vedioes</h3>



	</div>
	</div>




	<nav id="myNavbar"
		class="navbar navbar-default navbar-inverse navbar-fixed-bottom"
		role="navigation"> <!-- Brand and toggle get grouped for better mobile display -->
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
				href="https://www.facebook.com/" title="facebook"> <img
					style="max-width: 30px; margin-top: -10px;"
					src="/mytestproject/src/main/webapp/resources/images/facebook.png">
			</a></li>



			<li><a class="navbar-brand" rel="home" href="#" title="twitter">
					<img style="max-width: 30px; margin-top: -10px;"
					src="/mytestproject/src/main/webapp/resources/images/twitter.png">
			</a></li>


			<li><a class="navbar-brand" rel="home" href="#"
				title="Google Plus"> <img
					style="max-width: 30px; margin-top: -10px;"
					src="/mytestproject/src/main/webapp/resources/images/Googleplus.png">
			</a></li>
		</ul>
	</div>

	</nav>

</body>
</html>