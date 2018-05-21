<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<title>预约填写</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files -->
<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<!-- /font files -->
<!-- css files -->
<link href="css/style_book.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css files -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/jquery.vide.min.js"></script>
<script type="text/javascript"> 
	function checkForm() {
		var today=new Date();
		if(document.getElementById("date")<today){

			document.getElementById("timecheck").innerHTML="日期选择错误!";
			return false;
		}
		return true;
	}
</script> 
</head>
<body>
	<div>
		<div class="center-container">
			<h1 class="header-w3ls">预约信息表</h1>
			<div class="content-top">
				<div class="content-w3ls">
					<div class="form-w3ls">
							<div class="content-wthree1">
								<div class="grid-agileits1">
								<form action="BookingServlet" id="bookingform" name="bookingpost" onsubmit="return checkForm();" method="add">
									<input type="hidden" name="method" value="add">
									<div class="form-control"> 
										<label class="header">学生姓名<span>*</span></label>
										<input type="text" id="name" name="sname" placeholder="Name" title="Please enter your Full Name" required="">
									</div>
									<div class="form-control">	
										<label class="header">学生邮箱<span>*</span></label>
										<input type="email" id="email" name="semail" placeholder="Mail@example.com" title="Please enter a Valid Email Address" required="">
									</div>
									<div class="form-control">	
										<label class="header">电话号码<span>*</span></label>
										<input type="tel" id="name" name="sphone" placeholder="Phone Number" title="Please enter your Phone Number" required="">
									</div>
								</form>
								</div>
							</div>
					</div>
					<div class="form-w3ls-1">
								<div class="form-control">	
										<label class="header">老师姓名<span>*</span></label>
										<input type="text" form="bookingform" id="name" name="tname" placeholder="Teacher Name" title="Please enter your Phone Number" required="">
								</div>
								<div class="form-control"> 
									<label class="header">预约原因<span>*</span></label>
									<textarea id="reasons" form="bookingform" name="reasons" rows="6" warp="virtual"></textarea>
								</div>
								<div class="wthreesubmitaits">
									<%-- <c:if test="${empty Session}"><a style="font-size:18px color:#FF0000"href="login.jsp">请先进行登录</a></c:if> --%>
									<c:if test="${empty user}">
									<label style="font-size:18px ;color:#FF0000" class="header">
									<a href="login.jsp ">请先进行登录</a><span>!</span>
									</label>
									</c:if>
									<c:if test="${not empty user}">
										<c:if test="${type=='学生'}">
											<input form="bookingform" type="submit" name="submit" value="确定">
										</c:if>
										<c:if test="${type=='教师'}">
											<label style="font-size:18px ;color:#FF0000" class="header">
											<a href="mypage.jsp ">抱歉，教师无法预约</a><span>!</span>
											</label>
										</c:if>
									</c:if>
								</div>
						
					
					</div>
					 <div class="clear"></div> 
				</div>
				<div class="content-w3ls">
					<div class="form-w3ls">
							<div class="content-wthree2">
								<div class="grid-w3layouts1">
									<div class="w3-agile1">
										<label class="rating">最期望时间段<span>*</span></label>
										<ul>
											<li>
												<select name="classlist" form="bookingform">
												  <option value ="第一">第一节课</option>
												  <option value ="第二">第二节课</option>
												  <option value="第三">第三节课</option>
												  <option value="第四">第四节课</option>
												</select>
											</li>
										</ul>
									</div>	
								</div>
								<div class="clear"></div>
							</div>
						</div>
						<div class="form-w3ls-1">
							<div class="grid-w3layouts1">
								<div class="w3-agile1">
									<label class="rating">预约日期<span>*</span></label>
									<ul>
										<li style="font-family:华文行楷">
										
											<!-- <select name="weeklist" form="bookingform">
												  <option value ="Monday">星期一</option>
												  <option value ="Tuesday">星期二</option>
												  <option value="Wednesday">星期三</option>
												  <option value="Thursday">星期四</option>
												  <option value="Friday">星期五</option>
												  <option value="Saturday">星期六</option>
												  <option value="Sunday">星期日</option>	     
											</select>-->
											<input style="width:350px;height:40px;border:0px" type="date" id="date" form="bookingform" name="time"  value="">
											<span id="timecheck"></span>
										</li>
									</ul>
								</div>	
							</div>	
						</div>	
					</div>
				<div class="clear"></div>
			</div>	
				<div  style="text-align:center">
						<p>&copy; 2018 Booking System. All rights reserved | Design by <a href="http://jaiken.top">TSC</a></p>
				</div>
		</div>
	</div>


</body>
</html>
