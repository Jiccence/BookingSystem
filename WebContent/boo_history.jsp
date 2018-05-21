<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*,com.tsc.booking.bean.*"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预约记录</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

<style type="text/css">

body {
	padding-top: 54px;
	background-color: #343434;
    font-family: '华文行楷';
    font-color:#FFFFFF;
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
	margin-left:4px;
	margin-top:4px;
	list-style-type:none;

}
#teacher-list table
{
	 text-align:center;
 	 margin-left:4px;
	margin-top:4px;
     font-size:20px; 
}
#teacher-list a
{
	 
 	 color:#FFFFFF;
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
#tip3 {
    padding: 5px 10px;
	width:100%;
    font-size: 1em;
	font-family: '华文行楷', sans-serif;
    text-transform: uppercase;
    letter-spacing: 1px;
    background: #7EBDFF;
    color: #ffffff;
    border: none;
    outline: none;
    cursor: pointer;
    margin: 5px auto;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
}
</style>
<script language="javascript">

</script>
</head>
<body>
<p id="title">预约记录</p>
		
 	<div style="width:auto; height:10px; background-color: black; margin: 20px 120px;"> </div> 

	
	
	<!-- Page Content -->
    <div class="container">
    	
		<div style="text-align:center">
		
			<ul id="teacher-list" >
			<c:forEach items="${boo}" var="item">  
					<table width="100%" height="50px" margin-left="0px" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><a>教师姓名:${item.teaname}</a></td>
					            <td><a>学生姓名:${item.stuname}</a></td>
					            <td><a>学生邮箱:${item.email}</a></td>
					            <td><a>预约时间:${item.time},${item.classes}节课</a></td>
					            <td><a>预约原因:${item.reason}</a></td> 
					           <c:if test="${item.state=='0'}">
					            <td><a>当前状态:未通过</a></td> 
					           </c:if>
					           <c:if test="${item.state=='1'}">
					            <td><a>当前状态:未完成</a></td> 
					           </c:if>
					           <c:if test="${item.state=='2'}">
					            <td><a>当前状态:已完成</a></td> 
					           </c:if>
					           <c:if test="${item.state=='3'}">
					            <td><a>当前状态:已过期</a></td> 
					           </c:if>
					         </tr>
					         <tr>
					         	<c:if test="${item.state=='0'}">
					         		<c:if test="${type=='学生'}">
					           			<td width="50px"><a id="tip3" onclick="" href="BookingServlet?method=update&type=giv&id=${item.id}&uname=${user.uname}">取消</a></td>
					           		</c:if>
					           		<c:if test="${type=='教师'}">
					           			<td width="50px"><a id="tip3" onclick="" href="BookingServlet?method=update&type=pass&id=${item.id}&uname=${user.uname}&email=${item.email}">通过</a></td>
					           			<td width="50px"><a id="tip3" onclick="" href="BookingServlet?method=update&type=refu&id=${item.id}&uname=${user.uname}&email=${item.email}">拒绝</a></td>
					           		</c:if>
					           	</c:if>
					         	<c:if test="${item.state=='1'}">
					         		<td width="50px"><a id="tip3" href="BookingServlet?method=update&type=cmp&id=${item.id}&uname=${user.uname}">完成</a></td>
					         	</c:if>
					         	<c:if test="${item.state=='2'}">
					         		<td width="50px"><a id="tip3" href="BookingServlet?method=update&type=del&id=${item.id}&uname=${user.uname}">删除</a></td>
					         	</c:if>
					         	<c:if test="${item.state=='3'}">
					         		<td width="50px"><a id="tip3" href="BookingServlet?method=update&type=del&id=${item.id}&uname=${user.uname}">删除</a></td>
					         	</c:if>
					         </tr>
					 </table>
					 <table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="100%" height="2px" /></td>
					          </tr>
					 </table>
			</c:forEach>
			</ul>
		</div>

    </div>
    
    <!-- /.container -->
    
    <div class="container">
    
          <!-- Pagination -->
      <ul class="pagination justify-content-center">
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
      </ul>
    
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