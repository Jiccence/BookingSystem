<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>校园风光</title>
	<link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/baguetteBox.min.css">
	<link rel="stylesheet" href="css/fluid-gallery.css">
	
	<style>
	
	body {
		background-color: #343434;
		font-family:'华文行楷';
	}
	footer {
		
		padding-top:30px;
	}
	footer p {
	color: white;
}
	</style>
</head>
<body>

		<div class="container gallery-container">

		    <h1>校园风光</h1>

		    <p class="page-description text-center">哈尔滨工业大学（威海）</p>
		    
		    <div class="tz-gallery">

		        <div class="row">

		            <div class="col-sm-12 col-md-4">
		                <a class="lightbox" href="sch-images/bg1s.jpg">
		                    <img src="sch-images/bg1s.jpg" alt="bg1s">
		                </a>
		            </div>
		            <div class="col-sm-6 col-md-4">
		                <a class="lightbox" href="sch-images/bg2s.jpg">
		                    <img src="sch-images/bg2s.jpg" alt="bg2s">
		                </a>
		            </div>
		            <div class="col-sm-6 col-md-4">
		                <a class="lightbox" href="sch-images/bg3s.jpg">
		                    <img src="sch-images/bg3s.jpg" alt="bg3s">
		                </a>
		            </div>
		            <div class="col-sm-12 col-md-8">
		                <a class="lightbox" href="sch-images/bg4s.jpg">
		                    <img src="sch-images/bg4s.jpg" alt="bg4s">
		                </a>
		            </div>
		            <div class="col-sm-6 col-md-4">
		                <a class="lightbox" href="sch-images/bg5s.jpg">
		                    <img src="sch-images/bg5s.jpg" alt="bg5s">
		                </a>
		            </div> 
		            <div class="col-sm-6 col-md-4">
		                <a class="lightbox" href="sch-images/bg6s.jpg">
		                    <img src="sch-images/bg6s.jpg" alt="bg6s">
		                </a>
		            </div>

		        </div>

		    </div>

		</div>
		
	    <footer class="py-5">
	      <div class="container">
	        <p class="m-0 text-center">&copy; 2018 Booking System. All rights reserved | Design by <a href="http://jaiken.top">TSC</a></p>
	      </div>
	      <!-- /.container -->
	    </footer>
	    
	<script type="text/javascript" src="js/baguetteBox.min.js"></script>
	<script type="text/javascript">
		baguetteBox.run('.tz-gallery');
	</script>
</body>
</html>