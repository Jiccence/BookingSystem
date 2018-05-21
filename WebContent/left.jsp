<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
<link href="css/circle.css" rel="stylesheet" type="text/css" /> 
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<style type="text/css">

#left{
	border:3px solid #343434; 
	border-top:3px solid #343434; 
	border-bottom:3px solid #343434;
	width:186px; 
	height:500px;
	margin:0 auto;
	/* 整体的边框以及大小位置 */
}
body {
	font:18px "华文行楷" Helvetica, sans-serif ;
	color: #FFF;
	background-color: #000;
	margin: 0px;
	
	/* 里面的主体 */
}
#container {
	width: 180px;
	/* 宽度 */
}
H1 {
	font-size: 18px;
	margin: 0px;
	width: 180px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;	
	/* 首层按钮 */
}
H1 a {
	display: block;
	width: 180px;
	color: #fff;
	height: 30px;
	border-bottom:5px solid #343434;
	text-decoration: none;
	moz-outline-style: none;
	/* background-image: url(images/messaefg.png); */
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 180px;
	height: 35px;
	
}.type{
	font-family:"华文行楷";
	font-size:18px;
}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-family: "华文行楷", Helvetica, sans-serif;
	font-size: 18px;
	line-height: 35px;
	color: #fff;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 35px;
	width: 180px;
	padding-left: 0px;
}
.MM {
	width: 180px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 3px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-family: "华文行楷", Helvetica, sans-serif;
	font-size: 18px;
	line-height: 35px;
	color:white;
	background-image:url("images/menu_bg1.gif");
	background-repeat: no-repeat;
	height: 35px;
	width: 180px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-family: "华文行楷", Helvetica, sans-serif;
	font-size: 13px;
	line-height: 35px;
	color:white;
	background-image: url("images/bgvisited.png");
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 35px;
	width: 180px;
	text-decoration: none;
}
.MM a:active {
	font-family: "华文行楷", Helvetica, sans-serif;
	font-size: 18px;
	line-height: 35px;
	color: white;
	background-image: url("images/bgvisited.png");
	background-repeat: no-repeat;
	height: 35px;
	width: 180px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-family: "华文行楷", Helvetica, sans-serif;
	font-size: 18px;
	line-height: 35px;
	font-weight: bold;
	color:#7EBDFF;
	background-image: url("images/bgvisited2.png");
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 35px;
	width: 180px;
	text-decoration: none;
}
</style>
</head>

<body>
<div id="left">
  	  <div style="height:auto;"> 
<table width="100%"  border="0" cellpadding="0" cellspacing="0" bgcolor="#000000">
  <tr>
    <td width="180" valign="top"><div id="container">
	
      <h1 class="type" style="background-image:url(images/bgs.png);"><a href="javascript:void(0)"><font color="white">预约管理</font></a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline-2.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="booking.jsp" target="main">申请预约</a></li>
          <li><a href="SearchbooServlet?key=1&uname=${user.uname }" target="main">删除预约</a></li>
          <li><a href="SearchbooServlet?key=0&uname=${user.uname }" target="main">预约历史</a></li>
          <li><a href="SearchbooServlet?key=-1&uname=${user.uname}" target="main">预约回收站</a></li>
        </ul>
      </div>
	  
	  <h1 class="type" style="background-image:url( images/bgs.png);"><a href="javascript:void(0)"><font color="white">吾师风采</font></a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline-2.gif" width="182" height="5" /></td>
          </tr>
        </table>
		<ul class="MM">
	 	  <li><a href="SearchteaServlet?key=school" target="main">本校教师</a></li>
		  <li><a href="SearchteaServlet?key=sdept" target="main">本院教师</a></li>
		  <li><a href="SearchteaServlet?key=major" target="main">本系教师</a></li>
		  <li><a href="teasear.jsp" target="main">搜索教师</a></li>
	  </ul>
	  </div>
	  
	  <h1 class="type" style="background-image:url(images/bgs.png);"><a href="javascript:void(0)"><font color="white">吾校风光</font></a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline-2.gif" width="182" height="5" /></td>
          </tr>
        </table>
		<ul class="MM">
	  	  <li><a href="sch_history.jsp" target="main">悠悠历史</a></li>
		  <li><a href="sch_scenery.jsp" target="main">青青草木</a></li>
		  <li><a href="http://720.6wf.cn/pano/project/108/mobile.html?from=timeline&isappinstalled=0" target="main">全景俯瞰</a></li>
	  </ul>
	  </div>
	  
	  
      <h1 class="type" style="background-image:url(images/bgs.png);"><a href="javascript:void(0)"><font color="white">联系我们</font></a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline-2.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
		  <li><a href="contactus.jsp" target="main">问题反馈</a></li>
          </ul>
      </div>
      </div>
	  
	  <h1 class="type" style="background-image:url(images/bgs.png);"><a href="javascript:void(0)"><font color="white">关于我们</font></a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline-2.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
		  <li><a href="aboutus.jsp" target="main">长啥样？</a></li>
          <li><a href="aboutus.jsp" target="main">搁哪呢？</a></li>
          <li><a href="contactus.jsp" target="main">怎么撩？</a></li>
          </ul>
      </div>
      
	  <h1 style="font-family:'华文行楷'; font-size:22px;background-image:url(images/bgs.png);">
		  <a href="javascript:void(0)">
			  <font color="white">校园</font>
			  <font color="#7EBDFF">预约网</font>
		  </a>
	  </h1>
    		<script type="text/javascript">
				var contents = document.getElementsByClassName('content');
				var toggles = document.getElementsByClassName('type');
			
				var myAccordion = new fx.Accordion(
					toggles, contents, {opacity: true, duration: 400}
				);
				myAccordion.showThisHideOpen(contents[12]);
				
				window.onload = function() {

					var usernamevalue = "${cookie.saveusername.value}"; //从cookie中获取saveusername值,得到的是utf-8码
					//alert(usernamevalue);

					document.getElementById("username").value = window.decodeURIComponent(
							usernamevalue, "utf-8");
					//通过decodeURIComponent这个函数完成utf-8解码操作.
					
				}
				
			</script>
		</td>
 	</tr>
</table>
	  </div>
  </div>
  
 <div style="border:3px solid #343434; width:186px; height:95px;text-align:center"class="center">
      <div style="text-align:center">
					<!-- <a class="MM" href="login.jsp" id="divcss5" target="main"> -->
					<c:if test="${empty user }">
							<a class="MM" href="login.jsp" id="divcss5" target="main">
							<img src="images/usericon-1.jpg" width="90" height="90"></img>
							</a>
						</c:if>

						<c:if test="${not empty user }">
							<a class="MM" href="mypage.jsp" id="divcss5" target="main">
							<img src="${user.icon}" width="90" height="90"></img>
							</a>
						</c:if>
						<!-- <img src="images/usericon-1.jpg" width="90" height="90"></img> -->
						<!-- 设置a的Class 属性为MM定义，点击时会响应函数，将界面在right frames 中显示 -->
					<!-- </a> -->							  		
	  </div> 
</div> 
	
</body>
</html>
