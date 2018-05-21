<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forget</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="">
<script type="application/x-javascript"> 
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); }
</script>
<!-- Meta tag Keywords -->

<!-- css files -->
<link href="css/style_login.css" rel="stylesheet" type="text/css" media="all" />
<!-- css files -->
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- Online-fonts -->
<link href="//fonts.googleapis.com/css?family=Varela+Round&amp;subset=hebrew,latin-ext,vietnamese" rel="stylesheet">
<!-- //Online-fonts -->
<style>
*{
	margin:0;
}
label{
	vertical-align:middle;
}
.inputcheckbox{
	vertical-align:middle;
	}
body{
	font-family: "华文行楷", Helvetica, sans-serif;
	font-size:18px;
}

#go-to-signup {
  display:block;  /*<a>标签不是块状元素，不能直接用text-align*/
  color:#7EBDFF;
  text-align:right;
}
</style>

</head>
<body>
	<!-- main -->
	<div class="main">
		<div class="main-w3l">
			<h1 class="logo-w3">
				 <img class="" src="images/logo.png" alt="" width="400" height="138">
			</h1>		
			<div class="w3layouts-main"style="">
			<h6 style="margin-left:200px;margin-top:0px"><a id="go-to-signup" href="login.jsp">前去登录>>></a></h6>
				<h2><span>邮箱找回</span></h2>
					<form action="UserServlet" method="post" id="forgetForm">
						<input type="hidden" name="method" value="forget">
						<input placeholder="邮箱" name="email" type="text" required="">
						<input type="radio" id="usertea" name="typeselector" value="Usertea">
						<label for="usertea">教师 </label>
						<input type="radio" id="userstu" name="typeselector" value="Userstu">
						<label for="userstu">学生 </label>
						<input  type="submit" value="验证"name="forgetbtn">
					</form>
			</div>
			<div class="clear"></div>
			<!-- //main -->
			
			<!--footer-->
			<div class="footer-w3l">
				<p>&copy; 2018 Booking sign in form. All rights reserved | Design by <a href="http://jaiken.top">TSC</a></p>
			</div>
			<!--//footer-->
		</div>
	</div>

</body>
</html>