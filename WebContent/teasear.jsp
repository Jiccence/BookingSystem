<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*,com.tsc.booking.bean.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>教师总览</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

<style type="text/css">

body {
	padding-top: 54px;
	background-color: #343434;
    font-family: '华文行楷';
}
 #title{

	margin: 10px 120px;
	text-align: center; 
	font-size:40px;
	color: white;
	text-shadow:4px 4px 4px #000000;
}

#teacher-list  li
{
	float:left; 
	text-align:center;
	border:0px solid #fdfdfd;
	margin-left:40px;
	margin-top:4px;
	list-style-type:none;

}
#teacher-list a
{
 	 color:#808080;
 	 text-shadow:4px 4px 4px black;
     font-size:20px; 


}
#teacher-list a:HOVER
{
     color:white;
     font-weight:200;  
} 


@media (min-width: 992px) {
  body {
    padding-top: 56px;
  }
}

.portfolio-item {
  margin-bottom: 30px;
}

.page-item a{
	color: white;
}

img {
	margin-bottom:6px;
	box-shadow:2px 2px 5px black
}
footer p {
	color: #808080;
}
input[type="submit"] {
	width:52px;
	height:40px;
    font-size: 1em;
	font-family: '华文行楷', sans-serif;
    text-transform: uppercase;
    letter-spacing: 1px;
    background: #7EBDFF;
    color: #ffffff;
    border: none;
}
input[type="text"] {
	width:200px;
	height:40px;
    font-size: 1em;
	font-family: '华文行楷', sans-serif;
    text-transform: uppercase;
    letter-spacing: 1px;
    background: #FFFFFF;
    border: none;
    outline: none;
   
}
</style>


</head>
<body>
		<p id="title">教师信息</p>
		
 		<div style="width:auto; height:10px; background-color: black; margin: 20px 120px;"> </div> 

		<div style="width:auto; height:40px;text-align:center">
		<form action="SearchteaServlet" method="post" id="searForm">
						<input type="hidden" name="key" value="sear">
						<input height="40px"placeholder="请输入搜索关键字" name="str" type="text" required="">
						<input  type="submit" value="搜索"name="button">
		</form>
		
		
		 </div> 
	
	<!-- Page Content -->
    <div class="container">

		<div class="row">
			<ul id="teacher-list" >
			
			<c:forEach items="${stea}" var="item">  
					<li >
					<div style="width:160px;height:250px;"> 
					<a href="TeaIntServlet?teaname=${item.uname}">
					<img src="${item.icon}" width="158" height="200" border="0"><br>									
					${item.uname}
					</a>									
					</div>
					</li>
			
			</c:forEach> 
<%-- 			<c:forEach var="i" begin="1" end="10" step="1" >  
						<li >
								<div style="width:160px;height:250px;"> 
									<a href="http://localhost:8080/xiaofang/play.jsp"><img src="http://static.runoob.com/images/mix/img_avatar.png" width="158" height="200">
									<br />Mr. Teacher</a>
								</div>
						</li>
			</c:forEach> --%>

			</ul>
		</div>

    </div>
    
    <!-- /.container -->
    
    <div class="container">
    
          <!-- Pagination -->
      <!-- <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link bg-dark" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">&lt;</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link bg-dark" href="#">1</a>
        </li>
        <li class="page-item ">
          <a class="page-link bg-dark" href="#">2</a>
        </li>
        <li class="page-item">
          <a class="page-link bg-dark" href="#">3</a>
        </li>
        <li class="page-item">
          <a class="page-link bg-dark" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">&gt;</span>
          </a>
        </li>
      </ul> -->
    
	<!-- Footer -->
    <footer class="py-5">
      <div class="container">
        <p class="m-0 text-center">&copy; 2018 Booking System. All rights reserved | Design by <a href="http://jaiken.top">TSC</a></p>
      </div>
      <!-- /.container -->
    </footer>
	</div>
	
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
</body>
</html>