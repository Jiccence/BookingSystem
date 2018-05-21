<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.tsc.booking.bean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/circle.css" rel="stylesheet" type="text/css" /> 
<link href="css/style.css" rel="stylesheet" type="text/css" /> 
<link href="css/font-awesome.css" rel="stylesheet">
<style type="text/css">
.header-section {
  background: #000000;
  text-align: center;
  min-height: 200px;
}
.header-section img {
  margin-top: 5em;
}
.header-section h1 {
  font-family: '华文行楷';
  font-size: 4em;
  text-transform: capitalize;
  color: #ffffff;
  padding: 0.5em 0 0 0;
}
.header-section span {
  color: #00ccbd;
  font-size: 1em;
}
.header-sertion a{
 	width:5px;
 	height:5px;
 	color:#343434;
}
.header-section p {
  	height:2px;
  	color: #343434;
}
span.glyphicon.glyphicon-triangle-bottom {
  	font-size: 1em;
  	color: #fff;
  	background-color: #0000ff;
  	padding: 0.5em 2em;
  	/* border-radius: 3px 3px 0 0; */
  	border:1px solid #343434;
  	margin-top: 3px;
 }
.info-section {
 	background-color:#fff;
  	padding: 4em 0;
}
.info-grid from{


}

.info-grid h3 {
  font-family: '华文行楷';
  font-size: 2.5em;
  text-transform: capitalize;
  color: #393b3a;
  
}
.info-grid span {
  	color: #00cfbd;
  	font-size: 0.9em;
}
.info-grid p {
	font-family:'华文行楷';
  	font-size: 1.2em;
  	color: #393b3a;
  	padding: 1.1em 0 0 0;
}
.info-grid input{
	font-family:'华文行楷';
	font-size:1.2em;
	color:#000;
	border:0px;


}
.info-grid label {
	font-family:'华文行楷';
  	font-size: 0.8em;
  	color: #9CA69D;
  	margin: 0 0 0 15px;
  	width:auto;
}
.progress {
	margin: 10px 0;
	 box-shadow: none;
}
.progress-bar-success {
  background-color: #DEECDF;
   box-shadow: none;
}
.progress-bar-info {
  	background-color: #ACB5B8;
    box-shadow: none;
}
.progress-bar-warning {
  	background-color: #78B3AE;
   	box-shadow: none;
}
.progress-bar-danger {
  	background-color: #8C9D82;
  	box-shadow: none;
 }
.info-grid h4 {
  	font-size: 1.3em;
  	text-transform: capitalize;
  	color: rgb(29, 26, 26);
  }
.info1 {
  	padding: 1em 0 0;
}
.info2 {
  	padding: 2em 0 0;
}
.service-section {
  	text-align: center;
  	padding: 4em 0;
}
.service-grid h4 {
  	font-size: 1.5em;
  	margin: 0.9em 0;
    font-family: 'Nunito-Bold';
}
.service-grid p {
  	font-size: 1em;
  	font-weight: 400;
  	color: #9CA69D;
    line-height: 1.8em;
}
body{
	font-family: "华文行楷", Helvetica, sans-serif;
	font-size:15px;
}
#go-to-intr{
  display:block;  /*<a>标签不是块状元素，不能直接用text-align*/
  color:#7EBDFF;
  font-size:18px;
  text-align:left;
  background-color:#000000;
}
#go-to-tip{
  display:block;  /*<a>标签不是块状元素，不能直接用text-align*/
  color:#7EBDFF;
  font-size:18px;
  text-align:left;
  background-color:#FFFFFF;
}
</style>
</head>
<body>
	<c:if test="${type=='Admin'}">
		<p>管理员仅能查看<a href="SendMessageServlet?&type=see">用户反馈</a></p>
		<p><a href="UserServlet?method=logout">退出登录</a></p>
	</c:if>
	<c:if test="${type!='Admin'}">
	<!--start-header-section-->
			<div class="header-section">
				<div class="continer">
					<a id="divcss5"><img id="divcss5" width="100px" src="${user.icon }"></a>
						<h1>hello<span>${user.uname}</span></h1>
						<p></p>
						<a style=" color:#343434; font-family:'华文行楷';font-size:2em;"class="agile-icon"  href="UserServlet?method=logout">
							<i class="fa fa-edit"></i>退出登录<span class="text-muted"></span>
						</a>
				</div>
			</div>
	<!--end header-section-->
	<!--start-info-section-->
			<div class="info-section">
				<div class="container">
					<div class="col-md-6 info-grid">
						<h3>个人信息</h3>
						<div class="info1">
						<form action="UserInfoServlet" method="post" id="infoform"><!-- enctype="multipart/form-data" -->>
							<p>用户名<input type="text" name="name" readonly value="${user.uname}"></p>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="250px" height="5" /></td>
					          </tr>
					        </table>
							<p>昵&nbsp;&nbsp;称<input type="text" name="nickname" value="${user.nickname}"></p>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="380px" height="5" /></td>
					          </tr>
					        </table>
							<p>实&nbsp;&nbsp;名<input type="text" name="realname" value="${user.uname}"></p>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="510px" height="5" /></td>
					          </tr>
					        </table>
							<p>邮&nbsp;&nbsp;箱<input type="text" name="email"  value="${user.email}">
							<c:if test="${user.fullbool=='1'}">
								<c:if test="${user.state=='0'}">
									<a href="UserServlet?method=activeuser&uname=${user.uname}&type=${type}">激活</a>
								</c:if>
								<c:if test="${user.state=='1'}">
									<a>已激活</a>
								</c:if>	
							</c:if>
							</p>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="640px" height="5" /></td>
					          </tr>
					        </table>
							<p>手&nbsp;&nbsp;机<input type="text" name="phonenum" value="${user.phonenum}"></p>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="770px" height="5" /></td>
					          </tr>
					        </table>
							<p>类&nbsp;&nbsp;别<input type="text" name="type" readonly value="${type}"></p>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="900px" height="5" /></td>
					          </tr>
					        </table>
							<p>生&nbsp;&nbsp;日<input type="date" name="birth" value="${user.birth}"></p>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="1030px" height="5" /></td>
					          </tr>
					        </table>
							<p>学&nbsp;&nbsp;校<input type="text"  name="schoolno" value="${user.schoolno}"></p>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="1160px" height="5" /></td>
					          </tr>
					        </table>
							<p>院&nbsp;&nbsp;系 <input type="text" name="sdeptno" value="${user.sdeptno}"></p>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="1290px" height="5" /></td>
					          </tr>
					        </table>
							<p>专&nbsp;&nbsp;业 <input type="text" name="majorno" value="${user.majorno}"></p>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="1290px" height="5" /></td>
					          </tr>
					        </table>
					        <c:if test="${type=='教师'}">
					       	<a id="go-to-intr" href="TeaIntServlet?teaname=${user.uname}">简&nbsp;&nbsp;历>>></a>
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="1290px" height="5" /></td>
					          </tr>
					        </table>
					        </c:if>
					        <c:if test="${user.fullbool=='0'}">
					        <a id="go-to-tip">完善信息后，才可激活邮箱!</a>
					        </c:if>
							<table style="text-align:center; margin-left:500px;margin-top:20px;">
								<tr>
									<td colspan="2" align="center" style="font-size:25px"class="center">
										<input type="submit" name="submit" value="保存">
										<input style="color:#00ccbd" type="reset" value="取消">
									</td>
								</tr>
							</table>
						</form>	
					</div>	
					<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!--end study-section-->
			<!--start-services-section-->
		<div class="service-section" id="service">
				<div class="container">

						<div class="service-grids">
											<!--footer-->
							<div class="footer-w3l">
								<p>&copy; 2018 Booking System. All rights reserved | Design by <a href="http://jaiken.top">TSC</a></p>
							</div>
							<!--//footer-->			
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
					<!--end services-section-->
		</c:if>
</body>
</html>