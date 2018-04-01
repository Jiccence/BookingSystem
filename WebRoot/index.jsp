<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>	
   	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Make an appointment</title>
	<link rel="shortcut icon" id="divcss5" href="images/minlogo2.ico" >
	<!-- meta tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- meta tags -->

	<!-- default css files -->
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="all">
	<link href="css/JiSlider.css" rel="stylesheet">
	<!-- banner slider css file -->
	<!-- nav css file -->
	<link href="css/jquery.fatNav.css" rel="stylesheet" type="text/css">
	<!-- flexslider-css file (for we used News Section)-->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<!-- Font awesome css file -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- Single Page css file -->
	<link href="css/single.css" rel="stylesheet" type="text/css" media="all" />
	<!-- css file -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
	<!-- //default css files -->

	<!-- web font -->
	<link href="//fonts.googleapis.com/css?family=Londrina+Outline" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Mako" rel="stylesheet">
	<!-- //web font -->
</head>
<!-- //Head -->

<!-- Body -->
<body>
	<jsp:include page="top.jsp"/>
	<!-- header -->
	<div class="header-bottom">
		<div class="container-fluid">
		<!-- //nav -->
			<div class="fat-nav">
				<div class="fat-nav__wrapper">
					<ul>
						<li>
							<a href="index.html">Home</a>
						</li>
						<li>
							<a href="about.html">About Us</a>
						</li>
						<li>
							<a href="services.html">Services</a>
						</li>
						<li>
							<a href="icons.html">Web Icons</a>
						</li>
						<li>
							<a href="codes.html">Short Codes</a>
						</li>
						<li>
							<a href="portfolio.html">Portfolio</a>
						</li>
						<li>
							<a href="contact.html">Contact</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- //nav -->
		</div>
	</div>
	<!-- //header -->

	<!-- banner slider-->
	<div class="banner-silder">
		<div id="JiSlider" class="jislider">
			<ul>
				<li>
					<div class="w3layouts-banner-top">
						<div class="bs-slider-overlay">
							<div class="container">
								<!-- Slide Text Layer -->
								<div class="w3l-slide-text">
									<p class="aos-init aos-animate" data-aos="fade-down">We Offer you a beautiful elegant Business Theme</p>
									<h3 data-animation="animated zoomInRight">We Provide Business Thinking</h3>
									<a href="services.html" target="_blank" class="button-style" data-animation="animated fadeInDown" data-aos="fade-down">View Our Services</a>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3layouts-banner-top w3layouts-banner-top1">
						<div class="bs-slider-overlay">
							<div class="container">
								<!-- Slide Text Layer -->
								<div class="w3l-slide-text">
									<p class="aos-init aos-animate" data-aos="fade-down">We helps you in growth of the business</p>
									<h3 data-animation="animated zoomInRight">Grow Your Business With Us</h3>
									<a href="services.html" target="_blank" class="button-style" data-animation="animated fadeInDown" data-aos="fade-down">View Our Services</a>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3layouts-banner-top w3layouts-banner-top2">
						<div class="bs-slider-overlay">
							<div class="container">
								<!-- Slide Text Layer -->
								<div class="w3l-slide-text">
									<p class="aos-init aos-animate" data-aos="fade-down">We Offer you a beautiful elegant Business Theme</p>
									<h3 data-animation="animated zoomInRight">Provide Quality Consulting</h3>
									<a href="services.html" target="_blank" class="button-style" data-animation="animated fadeInDown" data-aos="fade-down">View Our Services</a>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3layouts-banner-top w3layouts-banner-top3">
						<div class="bs-slider-overlay">
							<div class="container">
								<!-- Slide Text Layer -->
								<div class="w3l-slide-text">
									<p class="aos-init aos-animate" data-aos="fade-down">We helps you in growth of the business</p>
									<h3 data-animation="animated zoomInRight">We Provide Business Thinking</h3>
									<a href="services.html" target="_blank" class="button-style" data-animation="animated fadeInDown" data-aos="fade-down">View Our Services</a>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="w3layouts-banner-top w3layouts-banner-top4">
						<div class="bs-slider-overlay">
							<div class="container">
								<!-- Slide Text Layer -->
								<div class="w3l-slide-text">
									<p class="aos-init aos-animate" data-aos="fade-down">We helps you in growth of the business</p>
									<h3 data-animation="animated zoomInRight">Grow Your Business With Us</h3>
									<a href="services.html" target="_blank" class="button-style" data-animation="animated fadeInDown" data-aos="fade-down">View Our Services</a>
								</div>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!-- //banner slider -->

	<!-- banner bottom -->
	<div class="about">
		<h3 class="tittle">
			<span>A</span>bout
			<span>U</span>s
		</h3>
		<div class="container">
			<div class="col-md-6 agileits_works-grid">
				<div class="wthree-bottom">
					<h6 class="subheading-w3ls">consulting service for all kind of businesses</h6>
					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam,
						eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
				</div>
			</div>
			<div class="col-md-6 agileits_works-grid1">
				<img src="images/bottom.jpg" alt="" />
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //banner bottom -->

	<!-- two grids section -->
	<div class="grids-agile-middle">
		<div class="col-xs-6 grids-middle1-w3l">
			<div class="align-middle">
				<a href="#" data-toggle="modal" data-target="#myModal1">
					<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
				</a>
				<a href="#" data-toggle="modal" data-target="#myModal1">
					<p>we give best advice for your business</p>
				</a>
			</div>
		</div>
		<div class="col-xs-6 grids-middle1-w3l grids-middle2-w3l">
			<div class="align-middle">
				<a href="#" data-toggle="modal" data-target="#myModal2">
					<i class="fa fa-long-arrow-left" aria-hidden="true"></i>
				</a>
				<a href="#" data-toggle="modal" data-target="#myModal2">
					<p>We are expert in increase sales and trading
					
					</p>
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- bootstrap-pop-up -->
	<!-- modal 1 -->
	<div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3>Consult</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div>
					<div class="modal-body">
						<img src="images/bo1.jpg" alt=" " class="img-responsive" />
						<h4>we give best advice for your business</h4>
						<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam 
							corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
							consequatur? Quis autem vel eum iure reprehenderit qui.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal 1 -->
	<!-- modal 2 -->
	<div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
		<div class="modal-dialog modal-dialog2" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3>Consult</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div>
					<div class="modal-body">
						<img src="images/bo2.jpg" alt=" " class="img-responsive" />
						<h4>we are expert in increase sales and trading</h4>
						<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
							consequatur? Quis autem vel eum iure reprehenderit qui.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal 2 -->
	<!-- //bootstrap-pop-up -->
	<!-- //two grids section -->

	<!-- why choose us -->
	<div class="special-w3l">
		<h3 class="tittle">
			<span>W</span>hy
			<span>C</span>hoose
			<span>U</span>s?
		</h3>
		<div class="container">
			<div class="wthree-services-bottom-grids">
				<div class="col-md-6 wthree-services-left">
					<div class="wthree-services-right-bottom">
						<div class="services-right-bottom-bottom">
							<div class="col-xs-10 services-bottom-info">
								<h5>Business Consulting</h5>
								<p>In hac habitasse platea dictumst. Proin et ipsum non augue porttitor mollis eget semper nisl.</p>
							</div>
							<div class="col-xs-2 services-bottom-icon">
								<i class="fa fa-pie-chart" aria-hidden="true"></i>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="services-right-bottom-bottom">
							<div class="col-xs-10 services-bottom-info">
								<h5>Market Research</h5>
								<p>In hac habitasse platea dictumst. Proin et ipsum non augue porttitor mollis eget semper nisl.</p>
							</div>
							<div class="col-xs-2 services-bottom-icon">
								<i class="fa fa-money" aria-hidden="true"></i>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="services-right-bottom-bottom">
							<div class="col-xs-10 services-bottom-info text-w3l">
								<h5>Sales and Trades</h5>
								<p>In hac habitasse platea dictumst. Proin et ipsum non augue porttitor mollis eget semper nisl.</p>
							</div>
							<div class="col-xs-2 services-bottom-icon">
								<i class="fa fa-bar-chart" aria-hidden="true"></i>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="services-right-bottom-bottom">
							<div class="col-xs-10 services-bottom-info text-w3l">
								<h5>Online Marketing</h5>
								<p>In hac habitasse platea dictumst. Proin et ipsum non augue porttitor mollis eget semper nisl.</p>
							</div>
							<div class="col-xs-2 services-bottom-icon">
								<i class="fa fa-laptop" aria-hidden="true"></i>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-6 wthree-services-right">
					<img src="images/1.png" alt="" />
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //why choose us -->

	<!-- News -->
	<div class="about-middle">
		<h3 class="tittle">
			<span>O</span>ur
			<span>N</span>ews
		</h3>
		<div class="container">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="banner-bottom">
								<div class="about-midd-main">
									<div class="w3-test">
										<p>06.01.2018</p>
										<h5>
											<a href="single.html">How we can capture the market sales</a>
										</h5>
										<a href="#">
											<img class="agile-img" src="images/n1.jpg" alt=" ">
										</a>
										<a href="single.html" class="view">Read More
											<i class="fa fa-angle-double-right" aria-hidden="true"></i>
										</a>
									</div>
									<div class="clearfix"></div>

								</div>
							</div>
						</li>
						<li>
							<div class="banner-bottom">
								<div class="about-midd-main">
									<div class="w3-test">
										<p>06.01.2018</p>
										<h5>
											<a href="single.html">How we can capture the market sales</a>
										</h5>
										<a href="#">
											<img class="agile-img" src="images/n2.jpg" alt=" ">
										</a>
										<a href="single.html" class="view">Read More
											<i class="fa fa-angle-double-right" aria-hidden="true"></i>
										</a>
									</div>
									<div class="clearfix"></div>

								</div>
							</div>
						</li>
						<li>
							<div class="banner-bottom">
								<div class="about-midd-main">
									<div class="w3-test">
										<p>06.01.2018</p>
										<h5>
											<a href="single.html">How we can capture the market sales</a>
										</h5>
										<a href="#">
											<img class="agile-img" src="images/n3.jpg" alt=" ">
										</a>
										<a href="single.html" class="view">Read More
											<i class="fa fa-angle-double-right" aria-hidden="true"></i>
										</a>
									</div>
									<div class="clearfix"></div>

								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
		</div>
	</div>
	<!-- //news -->

	<!-- footer -->
	<div class="mkl_footer">
		<div class="container">
			<div class="mkls_footer_grid">
				<h6>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam</h6>
				<!-- footer logo -->
				<div class="logo2">
					<h2>
						<a class="" href="index.html">
							<span>
								<i class="fa fa-spinner" aria-hidden="true"></i>Consult</span>
						</a>
					</h2>
				</div>
				<!-- //footer logo -->
			</div>
			<!-- newsletter -->
			<div class="agile-newsletter">
				<p>Get the latest posts delivery directly to your inbox!</p>
				<form action="#" method="post">
					<input type="email" placeholder="E-mail" name="email" required="">
					<input type="submit" value="Subscribe">
				</form>
			</div>
			<!-- //newsletter -->
			<!-- social icons -->
			<div class="footercopy-social">
				<ul>
					<li>
						<a href="#">
							<span class="fa fa-facebook"></span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="fa fa-twitter"></span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="fa fa-rss"></span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="fa fa-vk"></span>
						</a>
					</li>
				</ul>
			</div>
			<!-- //social icons -->
			<!-- address -->
			<div class="contact-left-footer">
				<ul>
					<li>
						<h4>
							<i class="fa fa-map-marker" aria-hidden="true"></i>345 Setwant natrer, USA</h4>
					</li>
					<li>
						<h4>
							<i class="fa fa-phone" aria-hidden="true"></i>+1(401) 1234 567.</h4>
					</li>
					<li>
						<h4>
							<i class="fa fa-envelope-o" aria-hidden="true"></i>
							<a href="mailto:info@example.com">example@gmail.com</a>
						</h4>
					</li>
				</ul>
			</div>
			<!-- //address -->
			<!-- footer nav -->
			<div class="col-sm-6 botttom-nav-agile">
				<ul>
					<li>
						<a href="index.html">Home</a>
					</li>
					<li>
						<a href="about.html">About Us</a>
					</li>
					<li>
						<a href="services.html">Services</a>
					</li>
					<li>
						<a href="portfolio.html">Portfolio</a>
					</li>
					<li>
						<a href="contact.html">Contact Us</a>
					</li>
				</ul>
			</div>
			<!-- //footer nav -->
			<!-- copyright -->
			<div class="col-sm-6 w3l-copy">
				<p>Â© 2018 Consult. All rights reserved | Design by
					<a href="http://w3layouts.com/">W3layouts</a>
				</p>
			</div>
			<!-- //copyright -->
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //footer -->

	<!-- Js Files -->
	<!-- Default-JavaScript-File -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- //Default-JavaScript-File -->

	<!-- Banner Slider js script file-->
	<script src="js/JiSlider.js"></script>
	<script>
		$(window).load(function () {
			$('#JiSlider').JiSlider({
				color: '#fff',
				start: 3,
				reverse: true
			}).addClass('ff')
		})
	</script>
	<script>
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-36251023-1']);
		_gaq.push(['_setDomainName', 'jqueryscript.net']);
		_gaq.push(['_trackPageview']);

		(function () {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>

	<!-- //Banner Slider js script file-->

	<!-- nav -->
	<script src="js/jquery.fatNav.js"></script>
	<script>
		(function () {

			$.fatNav();

		}());
	</script>
	<!-- //nav -->

	<!-- FlexSlider (for we used News Section) -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script>
		$(function () {

		});
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				start: function (slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!-- //FlexSlider (for we used News Section) -->

	<!-- scrolling script -->
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //scrolling script -->

	<!-- Stars scrolling script -->
	<script src="js/SmoothScroll.min.js"></script>
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script>
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- //Ends scrolling script -->

	<!-- bootstrap js -->
	<script src="js/bootstrap.js"></script>
	<!-- //bootstrap js -->

	<!-- //Js Files -->

</body>
<!-- //Body -->

</html>