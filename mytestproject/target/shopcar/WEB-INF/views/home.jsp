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

<script>
 jQuery(document).ready(function($) {
 
        $('#myCarousel').carousel({
                interval: 5000
        });
 
        $('#carousel-text').html($('#slide-content-0').html());
 
        //Handles the carousel thumbnails
       $('[id^=carousel-selector-]').click( function(){
            var id = this.id.substr(this.id.lastIndexOf("-") + 1);
            var id = parseInt(id);
            $('#myCarousel').carousel(id);
        });
 
 
        // When the carousel slides, auto update the text
        $('#myCarousel').on('slid.bs.carousel', function (e) {
                 var id = $('.item.active').data('slide-number');
                $('#carousel-text').html($('#slide-content-'+id).html());
        });
});
</script>



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

/* END OF Change the Navbar Colors/Font/Size */


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


<!--slider-->
<!-- slider css-->
.hide-bullets {
list-style:none;
margin-left: -40px;
margin-top:20px;
}

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
						<li><a href="showuserdetails">Hyndai</a></li>
						<li><a href="Marutiproducts">Maruti</a></li>
						<li><a href="#">Volvo</a></li>
						<li><a href="#">Mercedes</a></li>
						<li><a href="#">Renault Duster</a></li>
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

				<li><a href="products">Login</a></li>
				<li><a href="registration">Register</a></li>
			</ul>



		</div>

	</div>


	</nav>

	<br>
	<br>
	<br>
	
   
	<h2>
		<p><font color="#8D0219">Shopping Car</font></p>
	</h2>
	<br>
	
		<h3><font face="verdana" color="#900C3F"><marquee behavior="alternate">Sample New Car has been come To Market</marquee></h3>
	
	

<div>
	<div class="container">
        <div id="main_area">
                <!-- Slider -->
                <div class="row">
                    <div class="col-xs-12" id="slider">
                        <!-- Top part of the slider -->
                        <div class="row">
                            <div class="col-sm-8" id="carousel-bounding-box">
                                <div class="carousel slide" id="myCarousel">
                                    <!-- Carousel items -->
                                    <div class="carousel-inner">
                                        <div class="active item" data-slide-number="0">
                                        <img src="resources/images/01.jpg"></div>

                                        <div class="item" data-slide-number="1">
                                        <img src="resources/images/02.jpg"></div>

                                        <div class="item" data-slide-number="2">
                                        <img src="resources/images/03.jpg"></div>

                                        <div class="item" data-slide-number="3">
                                        <img src="resources/images/04.jpg"></div>

                                        <div class="item" data-slide-number="4">
                                        <img src="resources/images/05.jpg"></div>

                                        <div class="item" data-slide-number="5">
                                        <img src="resources/images/06.jpg"></div>
                                    </div><!-- Carousel nav -->
                                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>                                       
                                    </a>
                                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>                                       
                                    </a>                                
                                    </div>
                            </div>

                             <div class="col-sm-4" id="carousel-text"></div>

                            <div id="slide-content" style="display: none;">
                                <div id="slide-content-0">
                                    <h2>Car Name <B>Hyndai Eon</B></h2>
                                    <p>Market Price-<B>Rs.3.25-4.49Lakh</B></p>
                                    <p>Fuel Type-<B>Petrol/Lpg</B></p>
                                    <p>Mileage-<B>20.3-21.1KMPL</B></p>
                                    <p>View-<B>360 degree view</B></p>
                                    <p class="sub-text"><font face="verdana" color="green">Launched in 2016 - </font><a href="https://www.google.co.in/">Read more</a></p>
                                </div>

                                <div id="slide-content-1">
                                  <h2>Car Name <B>Nissan Terrano</B></h2>
                                    <p>Market Price-<B>Rs.10.14lakh</B></p>
                                    <p>Fuel Type-<B>Diesel</B></p>
                                    <p>Mileage-<B>20..5KMPL</B></p>
                                    <p>View-<B>360 degree view</B></p>                                  
                                      <p class="sub-text"><font face="verdana" color="green">Launched in 2016 - </font><a href="https://www.google.co.in/">Read more</a></p>
                                </div>

                                <div id="slide-content-2">
                                     <h2>Car Name <B>Maruti Swift</B></h2>
                                    <p>Market Price-<B>Rs.5.00Lakh</B></p>
                                    <p>Fuel Type-<B>Petrol/Lpg</B></p>
                                    <p>Mileage-<B>20.4KMPL</B></p>
                                    <p>View-<B>360 degree view</B></p>

                                    <p class="sub-text"><font face="verdana" color="green">Launched in 2016 - </font><a href="https://www.google.co.in/">Read more</a></p>
                                </div>

                                <div id="slide-content-3">
                                  <h2>Car Name <B>Merceedes Benz A Class</B></h2>
                                    <p>Market Price-<B>Rs.23.85Lakh</B></p>
                                    <p>Fuel Type-<B>Petrol</B></p>
                                    <p>Mileage-<B>13.8KMPL</B></p>
                                    <p>View-<B>360 degree view</B></p>
                                    <p class="sub-text"><font face="verdana" color="green">Launched in 2016 - </font><a href="https://www.google.co.in/">Read more</a></p>
                                </div>

                                <div id="slide-content-4">
                                   
                                      <h2>Car Name <B>Volvo S60</B></h2>
                                    <p>Market Price-<B>Rs.38.41 - 44.31Lakh</B></p>
                                    <p>Fuel Type-<B>Diesel</B></p>
                                    <p>Mileage-<B>19KMPL</B></p>
                                    <p>View-<B>360 degree view</B></p>
                                    <p class="sub-text"><font face="verdana" color="green">Launched in 2016 - </font><a href="https://www.google.co.in/">Read more</a></p>
                                </div>

                                <div id="slide-content-5">
                                   <h2>Car Name <B>Renault Duster</B></h2>
                                    <p>Market Price-<B>Rs.8.75Lakh</B></p>
                                    <p>Fuel Type-<B>Petrol</B></p>
                                    <p>Mileage-<B>13.1KMPL</B></p>
                                    <p>View-<B>360 degree view</B></p>
                                    <p class="sub-text"><font face="verdana" color="green">Launched in 2016 - </font><a href="https://www.google.co.in/">Read more</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/Slider-->
                <div class="row hidden-xs" id="slider-thumbs">
                        <!-- Bottom switcher of slider -->
                        <ul class="hide-bullets">
                            <li class="col-sm-1">
                                <a class="thumbnail" id="carousel-selector-0"><img src="resources/images/01.jpg"></a>
                            </li>

                            <li class="col-sm-1">
                                <a class="thumbnail" id="carousel-selector-1"><img src="resources/images/02.jpg"></a>
                            </li>

                            <li class="col-sm-1">
                                <a class="thumbnail" id="carousel-selector-2"><img src="resources/images/03.jpg"></a>
                            </li>

                            <li class="col-sm-1">
                                <a class="thumbnail" id="carousel-selector-3"><img src="resources/images/04.jpg"></a>
                            </li>

                            <li class="col-sm-1">
                                <a class="thumbnail" id="carousel-selector-4"><img src="resources/images/05.jpg"></a>
                            </li>

                            <li class="col-sm-1">
                                <a class="thumbnail" id="carousel-selector-5"><img src="resources/images/06.jpg"></a>
                            </li>
                        </ul>                 
                </div>
        </div>
</div>

<br>
<br>

		<br> <br>

		<! youb tube -->
		<div style="float: right; clear: left;">
			<iframe class="right" width="560" height="315" src="https://www.youtube.com/embed/igERMobiAiM" frameborder="0" allowfullscreen></iframe>
                     </div>

		<div></div>

		<h3><font face="verdana" color="#581845">Heilights of Hyndai Xcent Car</h3>
		<p><font face="verdana" color="#900C3F"><b>May 17, 2016: Hyundai has launched</b><br>
		 a special edition of its sedan, the Xcent,<br>
		  at a price of Rs. 6.22 lakh (ex-showroom,<br> 
		  New Delhi). Some of the upgrades include addition<br>
		   of a 6.2-inch touchscreen audio system and<br> 
		   a special edition badge at the rear. Other<br>
		    cosmetic updates are addition of side body decals<br>
		     and boot lip spoiler. </font></p>



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
			<li>
			<!--  <a class="navbar-brand" rel="home"
				href="https://www.facebook.com/" title="facebook"> <img
					style="max-width: 30px; margin-top: -10px;"
					src="resources/images/facebook.png"></a> -->
					<i class="fa fa-facebook" aria-hidden="true"></i>
			</li>



			<li><a class="navbar-brand" rel="home" href="#" title="twitter">
					<img style="max-width: 30px; margin-top: -10px;"
					src="resources/images/twitter.png">
			</a></li>


			<li><a class="navbar-brand" rel="home" href="#"
				title="Google Plus"> <img
					style="max-width: 30px; margin-top: -10px;"
					src="resources/images/Googleplus.png">
			</a></li>
		</ul>
	</div>

	</nav>

</body>
</html>