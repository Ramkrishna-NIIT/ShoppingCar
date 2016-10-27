<%@ include file="/WEB-INF/views/template/header.jsp" %>

    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.prettyPhoto.js"></script>
    <script src="resources/js/jquery.isotope.min.js"></script>
    <script src="resources/js/main.js"></script>
    <script src="resources/js/wow.min.js"></script>
     <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/css/prettyPhoto.css" rel="stylesheet">
	<link href="resources/css/item_hover.css" rel="stylesheet">
    <link href="resources/css/animate.min.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">
    <link href="resources/fonts/stylesheet.css" rel="stylesheet">
    <link href="resources/css/responsive.css" rel="stylesheet">
<%@ include file="/WEB-INF/views/template/Head.jsp" %>



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


    
    
<style>


.hide-bullets {
list-style:none;
margin-left: -40px;
margin-top:20px;
}

</style>

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

 
		       
<br>
<br>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>