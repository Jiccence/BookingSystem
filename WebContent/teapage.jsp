<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>教师信息</title>

<link href="css/circle.css" rel="stylesheet" type="text/css" /> 
<link href="css/style.css" rel="stylesheet" type="text/css" /> 
<link href="css/font-awesome.css" rel="stylesheet">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

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

body{
	font-family: "华文行楷", Helvetica, sans-serif;
	font-size:15px;
}
#tip1{
  display:block;  /*<a>标签不是块状元素，不能直接用text-align*/
  color:red;
  text-align:right;
  font-size:18px;
}
#tip2{
  display:block;  /*<a>标签不是块状元素，不能直接用text-align*/
  color:green;
  text-align:right;
  font-size:18px;
}
input[type="submit"] {
    padding: 14px 10px;
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
#tip3 {
    padding: 14px 10px;
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
<script type="text/javascript">
function check(){
	
}
</script>
</head>
<body>
	<!--start-header-section-->
			<div class="header-section">
				<div class="continer">
					<a id="divcss5"><img id="divcss5" width="100px" src="${tea_re.icon}"></a>
						<h1><span>${tea_re.uname}</span></h1>
						<p></p>
<!-- 						<a style=" color:#343434; font-family:'华文行楷';font-size:2em;"class="agile-icon"  href="#">
							<i class="fa fa-edit"></i>更改编辑<span class="text-muted"></span>
						</a> -->
				</div>
			</div>
	<!--end header-section-->
	
	  <!-- Page Content -->
    <div class="container">

      <!-- Portfolio Item Row -->
      <div class="row">

        <div class="col-md-6">
          <h3 class="my-3">基本信息</h3>
          <span>${tea_re.schoolno}&nbsp;${tea_re.sdeptno}&nbsp;${tea_re.majorno}&nbsp;${tea_re.uname}&nbsp;老师</span>
          <h3 class="my-3">教师简历&nbsp;</h3>
           <textarea readonly style="font-size:18px; width:400px;height:350px">${tea_re.intrudection}&nbsp;
    	</textarea>
        </div>
        <div class="col-md-6">
          <h3 class="my-3">教师空闲时间表</h3>
          
          <table class="table table-bordered table-hover">
			   <thead>
			     <tr>
			       <th></th>
			       <th>第一节</th>
			       <th>第二节</th>
			       <th>第三节</th>
			       <th>第四节</th>
			     </tr>
			   </thead>
			   <tbody>
			   
			     <tr>
			       <th>周一</th>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.m1==1 }">
			       		 	<input type="checkbox" form="teadates"id="m1" name="m1" value="m1" checked="checked" >
			       		</c:if>
			       		<c:if test="${dates.m1==0 }">
			       		 	<input type="checkbox" form="teadates"id="m1" name="m1" value="m1" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			       		<c:if test="${dates.m1==1 }">
			       				<input type="checkbox" id="m1" readonly disabled name="m1" checked ="checked"value="">
			       		</c:if>
			       		<c:if test="${dates.m1==0 }">
			       				<input type="checkbox" id="m1" readonly disabled name="m1" value="">
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       		<c:if test="${dates.m1==1 }">
			       				<input type="checkbox" id="m1" readonly disabled name="m1"checked ="checked" value="">
			       		</c:if>
			       		<c:if test="${dates.m1==0 }">
			       				<input type="checkbox" id="m1" readonly disabled name="m1" value="">
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.m2==1 }">
			       			<input type="checkbox"form="teadates" id="m2" name="m2" value="m2" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.m2==0 }">
			       			<input type="checkbox"form="teadates" id="m2" name="m2" value="m2" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.m2==1 }">
			       			<input type="checkbox" id="m2" readonly disabled name="m2" value="" checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.m2==0 }">
			       			<input type="checkbox" id="m2" readonly disabled name="m2" value="" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.m2==1 }">
			       			<input type="checkbox" id="m2" readonly disabled name="m2" value="" checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.m2==0 }">
			       			<input type="checkbox" id="m2" readonly disabled name="m2" value="" >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.m3==1 }">
			       			<input type="checkbox"form="teadates"  name="m3" value="m3" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.m3==0 }">
			       			<input type="checkbox"form="teadates"  name="m3" value="m3" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.m3==1 }">
			       			<input type="checkbox" id="m2" readonly disabled name="m3" value="" checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.m3==0 }">
			       			<input type="checkbox" id="m2" readonly disabled name="m3" value="" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.m3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.m3==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.m4==1 }">
			       			<input type="checkbox"form="teadates"  name="m4" value="m4" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.m4==0 }">
			       			<input type="checkbox"form="teadates"  name="m4" value="m4" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.m4==1 }">
			       			<input type="checkbox" readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.m4==0 }">
			       			<input type="checkbox" readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.m4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.m4==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			     </tr>
			     <tr>
			       <th>周二</th>
			      <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.tu1==1 }">
			       			<input type="checkbox"form="teadates"  name="tu1" value="tu1" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.tu1==0 }">
			       			<input type="checkbox"form="teadates"  name="tu1" value="tu1" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.tu1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.tu1==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.tu1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.tu1==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.tu2==1 }">
			       			<input type="checkbox"form="teadates"  name="tu2" value="tu2" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.tu2==0 }">
			       			<input type="checkbox"form="teadates"  name="tu2" value="tu2" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.tu2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.tu2==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.tu2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.tu2==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			        <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.tu3==1 }">
			       			<input type="checkbox"form="teadates"  name="tu3" value="tu3" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.tu3==0 }">
			       			<input type="checkbox"form="teadates"  name="tu3" value="tu3" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.tu3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.tu3==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.tu3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.tu3==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			         <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.tu4==1 }">
			       			<input type="checkbox"form="teadates"  name="tu4" value="tu4" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.tu4==0 }">
			       			<input type="checkbox"form="teadates"  name="tu4" value="tu4" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.tu4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.tu4==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.tu4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.tu4==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			     </tr>
			     <tr>
			       <th>周三</th>
			      <td style="text-align:center">
			         <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.w1==1 }">
			       			<input type="checkbox"form="teadates"  name="w1" value="w1" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.w1==0 }">
			       			<input type="checkbox"form="teadates"  name="w1" value="w1" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.w1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.w1==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.w1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.w1==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.w2==1 }">
			       			<input type="checkbox"form="teadates"  name="w2" value="w2" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.w2==0 }">
			       			<input type="checkbox"form="teadates"  name="w2" value="w2" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.w2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.w2==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.w2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.w2==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.w3==1 }">
			       			<input type="checkbox"form="teadates"  name="w3" value="w3" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.w3==0 }">
			       			<input type="checkbox"form="teadates"  name="w3" value="w3" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.w3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.w3==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.w3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.w3==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.w4==1 }">
			       			<input type="checkbox"form="teadates"  name="w4" value="w4" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.w4==0 }">
			       			<input type="checkbox"form="teadates"  name="w4" value="w4" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.w4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.w4==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.w4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.w4==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			     </tr>
			     <tr>
			       <th>周四</th>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.th1==1 }">
			       			<input type="checkbox"form="teadates"  name="th1" value="th1" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.th1==0 }">
			       			<input type="checkbox"form="teadates"  name="th1" value="th1" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.th1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.th1==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.th1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.th1==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.th2==1 }">
			       			<input type="checkbox"form="teadates"  name="th2" value="th2" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.th2==0 }">
			       			<input type="checkbox"form="teadates"  name="th2" value="th2" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.th2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.th2==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.th2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.th2==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			        <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.th3==1 }">
			       			<input type="checkbox"form="teadates"  name="th3" value="th3" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.th3==0 }">
			       			<input type="checkbox"form="teadates"  name="th3" value="th3" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.th3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.th3==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.th3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.th3==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			        <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.th4==1 }">
			       			<input type="checkbox"form="teadates"  name="th4" value="th4" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.th4==0 }">
			       			<input type="checkbox"form="teadates"  name="th4" value="th4" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.th4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.th4==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.th4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.th4==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			     </tr>
			     <tr>
			       <th>周五</th>
			      <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.f1==1 }">
			       			<input type="checkbox"form="teadates"  name="f1" value="f1" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.f1==0 }">
			       			<input type="checkbox"form="teadates"  name="f1" value="th1" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.f1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.f1==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.f1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.f1==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			        <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.f2==1 }">
			       			<input type="checkbox"form="teadates"  name="f2" value="f2" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.f2==0 }">
			       			<input type="checkbox"form="teadates"  name="f2" value="f2" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.f2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.f2==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.f2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.f2==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			        <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.f3==1 }">
			       			<input type="checkbox"form="teadates"  name="f3" value="f3" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.f3==0 }">
			       			<input type="checkbox"form="teadates"  name="f3" value="f3" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.f3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.f3==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.f3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.f3==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			        <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.f4==1 }">
			       			<input type="checkbox"form="teadates"  name="f4" value="f4" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.f4==0 }">
			       			<input type="checkbox"form="teadates"  name="f4" value="f4" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.f4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.f4==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.f4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.f4==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			     </tr>
			     <tr>
			       <th>周六</th>
			      <td style="text-align:center">
			        <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.st1==1 }">
			       			<input type="checkbox"form="teadates"  name="st1" value="st1" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.st1==0 }">
			       			<input type="checkbox"form="teadates"  name="st1" value="st1" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.st1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.st1==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.st1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.st1==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			        <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.st2==1 }">
			       			<input type="checkbox"form="teadates"  name="st2" value="st2" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.st2==0 }">
			       			<input type="checkbox"form="teadates"  name="st2" value="st2" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.st2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.st2==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.st2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.st2==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			        <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.st3==1 }">
			       			<input type="checkbox"form="teadates"  name="st3" value="st3" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.st3==0 }">
			       			<input type="checkbox"form="teadates"  name="st3" value="st3" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.st3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.st3==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.st3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.st3==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			        <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.st4==1 }">
			       			<input type="checkbox"form="teadates"  name="st4" value="st4" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.st4==0 }">
			       			<input type="checkbox"form="teadates"  name="st4" value="st4" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.st4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.st4==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.st4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.th1==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			     </tr>
			     <tr>
			       <th>周日</th>
			       <td style="text-align:center">
			        <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.su1==1 }">
			       			<input type="checkbox"form="teadates"  name="su1" value="su1" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.su1==0 }">
			       			<input type="checkbox"form="teadates"  name="su1" value="su1" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.su1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.su1==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.su1==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.su1==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.su2==1 }">
			       			<input type="checkbox"form="teadates"  name="su2" value="su2" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.su2==0 }">
			       			<input type="checkbox"form="teadates"  name="su2" value="su2" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.su2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.su2==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.su2==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.su2==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.su3==1 }">
			       			<input type="checkbox"form="teadates"  name="su3" value="su3" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.su3==0 }">
			       			<input type="checkbox"form="teadates"  name="su3" value="su3" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.su3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.su3==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.su3==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.su3==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			       <td style="text-align:center">
			       <c:if test="${user.uname==tea_re.uname}">
			       		<c:if test="${dates.su4==1 }">
			       			<input type="checkbox"form="teadates"  name="su4" value="su4" checked="checked">
			       		</c:if>
			       		<c:if test="${dates.su4==0 }">
			       			<input type="checkbox"form="teadates"  name="su4" value="su4" >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='学生'}">
			      		 <c:if test="${dates.su4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.su4==0 }">
			       			<input type="checkbox"  readonly disabled  >
			       		</c:if>
			       </c:if>
			       <c:if test="${type=='教师'&&user.uname!=tea_re.uname}">
			       <c:if test="${dates.su4==1 }">
			       			<input type="checkbox"  readonly disabled  checked="checked">
			       		</c:if>
			       		 <c:if test="${dates.su4==0 }">
			       			<input type="checkbox" readonly disabled >
			       		</c:if>
			       </c:if>
			       </td>
			     </tr>
			   </tbody>
		</table>
		<a id="tip1"><input type="checkbox" readonly disabled checked="checked">忙碌</a>
		<a id="tip2"><input type="checkbox" readonly disabled value="on">空闲</a>
		<form id="teadates"action="DatesServlet?uname=${tea_re.uname }" name="" method="post">
			<c:if test="${user.uname==tea_re.uname}">
				<input type="submit" name="" value="更改" />
			</c:if>
			<c:if test="${user.uname!=tea_re.uname}">
				<a href="booking.jsp" id="tip3">预约</a>
			</c:if>
		</form>
      </div>

      </div>
      <!-- /.row -->


      <div class="row">

      </div>


    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5">
      <div class="container">
        <p class="m-0 text-center">&copy; 2018 Booking System. All rights reserved | Design by <a href="http://jaiken.top">TSC</a></p>
      </div>
      <!-- /.container -->
    </footer>

					
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>