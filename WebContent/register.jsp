<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
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
<script type="text/javascript">
	function change() {
		document.getElementById("im").src = "${pageContext.request.contextPath}/checkcode?time"
				+ new Date().getTime();
	};
	function reset(){
		var spans=document.getElementsByTagName("span");
		for(var i=0;i<spans.length;i++){
			spans[i].innerHTML="";
		}
	}
	function checkForm() {
		
		//先得到所有的span,将其内容清空。
		var spans=document.getElementsByTagName("span");
		for(var i=0;i<spans.length;i++){
			spans[i].innerHTML="";
		} 

		//验证用户名
		var flag1=checknames();
		//验证密码
		var flag2=checkpwds();
		
		//验证确认密码
		/* var flag3=checkNull("repassword");
	
		var flag4=checkNull("userstu");
		var falg5=checkNull("usertea");
		 */
		//对用户类别必须且只能选择一种
		/* var flag6=choseoneType(); */
		//对确认密码进行操作
		var flag7=repasswordValidate();

		return flag1&&flag2&&flag7;
	};
	/* function choseoneType(){
		var value1=document.getElementById("userstu");
		var value2=document.getElementById("usertea");
		
		if(value1.checked!=value2.checked"){
			return true;
		}else{
			document.getElementById("usertype_span").innerHTML=value1+value2;
			return false;
		}
	} */
	function repasswordValidate(){
		
		var value1=document.getElementById("password").value;
		var value2=document.getElementById("repassword").value;
		
		if(value1==value2){
			return true;
		}else{
			document.getElementById("repassword_span").innerHTML="两次密码不一致";
			return false;
		}
	}
	
	//非空操作
	function checkNull(field){
		var reg = /^\s*$/; //代表0个或多个空白符
		
		var value = document.getElementById(field).value;
		
		if (reg.test(value)) {
			document.getElementById(field+"_span").innerHTML=(field+"不能为空");
			return false;
		}
		
		return true;
	}
    //判断用户名字的长度
    function checknames(){
   	 if(document.getElementById("username").value==""){
      		document.getElementById("username_span").innerHTML="名字不能为空";
      		return false;
      	}
    	 else if((document.getElementById("username").value).length>15){
    		document.getElementById("username_span").innerHTML="用户名长度不能超过15位"; 
    		return false;
    	 }
    	 else if((document.getElementById("username").value).length<4){
    		document.getElementById("username_span").innerHTML="用户名长度不能低于4位"; 
    		return false;
    	 }
    	 else if(document.getElementById("username").value!=""){
       		return true;
       	}
    }  
    //判断密码
    function checkpwds(){
    	 if(document.getElementById("password").value==""){
     		document.getElementById("password_span").innerHTML="密码不能为空,请输入";
     		return false;
     	} else if((document.getElementById("password").value).length>12 ||(document.getElementById("password").value).length<6){
    		 document.getElementById("password_span").innerHTML="密码长度必须在6-12位"; 
    		 return false;
    	 }else if(document.getElementById("password").value!=""){
      		return true; 
      	}	
    }
</script>

<style type="text/css">
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
				<h2><span>请填写注册信息</span></h2>
					<form action="${pageContext.request.contextPath }/UserServlet" method="post" onsubmit="return checkForm();">
						<input type="hidden" name="method" value="regist">
						<table border="1" align="center" width="100%">
						<tr>
							<td>
								<input placeholder="用户名" name="username" type="text" id="username">
								<span style="color:#FF0000" id="username_span"></span>
							</td>
						</tr>
						<tr>
							<td>
								<input placeholder="密码 6-12个字符与数字组合" name="password" type="password" id="password">
								<span style="color:#FF0000"id="password_span"></span>
							</td>
						</tr>
						<tr>
							<td>
								<input placeholder="确认密码" name="repassword" type="password" id="repassword">
								<span style="color:#FF0000" id="repassword_span"></span>
							</td>
						</tr>
						<tr>
							<td>
								<input type="radio" id="usertea" name="typeselector" value="Usertea">
								<label for="usertea">教师 </label>
								<input type="radio" id="userstu" name="typeselector" value="Userstu">
								<label for="userstu">学生 </label>
								<!-- <span style="color:#FF0000" id="usertype_span"></span> -->
							</td>
						</tr>
						<tr>
							<td>
								<span style="color:#FF0000" id="usertype_span"></span>
							</td>
						</tr>
						<tr>	
							<td colspan="1" align="center">
							<input type="submit" value="注册" name="submit">&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="取消" name="reset" onclick="reset()">
							</td>
					</tr>
						
						</table>
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