<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>日程管理</title>
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> 
addEventListener("load", function() 
		{ setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script src="js/jquery-1.11.1.min.js"></script>
<link href="css/style_dates.css" rel="stylesheet" type="text/css" /> 
<link href='//fonts.googleapis.com/css?family=Maven+Pro:700,400' rel='stylesheet' type='text/css'>
<!--//theme-style-->
<!--Calender-->
	  <link rel="stylesheet" href="css/clndr.css" type="text/css" />
	  <script src="js/underscore-min.js"></script>
	  <script src= "js/moment-2.2.1.js"></script>
	  <script src="js/clndr.js"></script>
	  <script src="js/site.js"></script>
<!--End Calender-->
</head>
<style type="text/css">
body{
	font-family:'华文行楷';
}
</style>
<body>
<h1>日程总览 </h1>
<div class="main  hvr-float-shadow">
		    <div class="slide">
				<div class="date-pc">
					<div class="dmy">
			<script type="text/javascript">
               var mydate=new Date()
               var year=mydate.getYear()
               if(year<1000)
                 year+=1900
                 var day=mydate.getDay()
                 var month=mydate.getMonth()
                 var daym=mydate.getDate()
               if(daym<10)
                 daym="0"+daym
                 var dayarray=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
                 var montharray=new Array("January","February","March","April","May","June","July","August","September","October","November","December")
                 document.write(""+dayarray[day]+", "+montharray[month]+" "+daym+", "+year+"")
            </script>
            </div>
					<div class="date-down">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><img src="images/menu_bg1.gif" width="640px" height="2px" /></td>
					          </tr>
					     </table>
					     <table width="100%" border="0" cellspacing="0" cellpadding="0">
					         <tr>
					            <td><p>${u.name}</p></td>
					          </tr>
					    </table>
						<form>
						<div class="text-form">
								<p>日程:<input type="text" name="note"></p>
					   </div>
					   <div class="plus">
					   	<a href="#"><img src="images/plus.png" alt="" /></a>
					   </div>
					   </form>
					   <div class="clear"> </div>
				   </div>
				   <div class="text-mc">
				   		<p>${u.task}</p>
				   		<!-- 此处显示对应日期的日程 -->
				   </div>
				</div>
			</div>
		<div class="mini-cal">
			<div class="calender">
					<div class="column_right_grid calender">
                      <div class="cal1"><div class="clndr">
                      <div class="clndr-controls">
                      <div class="clndr-control-button">
                      <p class="clndr-previous-button">previous</p>
                      </div><div class="month">September 2015</div>
                      <div class="clndr-control-button rightalign">
                      	<p class="clndr-next-button">next</p>
                      </div>
                      </div>
                      <table class="clndr-table" border="0" cellspacing="0" cellpadding="0">
                      <thead><tr class="header-days">
                      <td class="header-day">S</td><td class="header-day">M</td>
                      <td class="header-day">T</td><td class="header-day">W</td>
                      <td class="header-day">T</td><td class="header-day">F</td>
                      <td class="header-day">S</td></tr>
                      </thead>
                      <tbody>
	                      <tr>
		                      <td class="day past adjacent-month last-month calendar-day-2015-08-30"><div class="day-contents">30</di></td>
		                      <td class="day past adjacent-month last-month calendar-day-2015-08-31"><div class="day-contents">31</div></td>
		                      <td class="day past calendar-day-2015-09-01"><div class="day-contents">1</div></td>
		                      <td class="day past calendar-day-2015-09-02"><div class="day-contents">2</div></td>
		                      <td class="day past calendar-day-2015-09-03"><div class="day-contents">3</div></td>
		                      <td class="day past calendar-day-2015-09-04"><div class="day-contents">4</div></td>
		                      <td class="day past calendar-day-2015-09-05"><div class="day-contents">5</div></td>
	                      </tr>
	                      <tr>
		                      <td class="day past calendar-day-2015-09-06"><div class="day-contents">6</div></td>
		                      <td class="day past calendar-day-2015-09-07"><div class="day-contents">7</div></td>
		                      <td class="day past calendar-day-2015-09-08"><div class="day-contents">8</div></td>
		                      <td class="day past calendar-day-2015-09-09"><div class="day-contents">9</div></td>
		                      <td class="day past event calendar-day-2015-09-10"><div class="day-contents">10</div></td>
		                      <td class="day past event calendar-day-2015-09-11"><div class="day-contents">11</div></td>
		                      <td class="day past event calendar-day-2015-09-12"><div class="day-contents">12</div></td>
	                      </tr>
	                      <tr>
	                      	<td class="day past event calendar-day-2015-09-13"><div class="day-contents">13</div></td>
	                      	<td class="day past event calendar-day-2015-09-14"><div class="day-contents">14</div></td>
		                    <td class="day past calendar-day-2015-09-15"><div class="day-contents">15</div></td>
		                    <td class="day past calendar-day-2015-09-16"><div class="day-contents">16</div></td>
		                    <td class="day past calendar-day-2015-09-17"><div class="day-contents">17</div></td>
		                    <td class="day past calendar-day-2015-09-18"><div class="day-contents">18</div></td>
		                    <td class="day past calendar-day-2015-09-19"><div class="day-contents">19</div></td>
	                      </tr>
	                      <tr>
		                    <td class="day past calendar-day-2015-09-20"><div class="day-contents">20</div></td>
		                    <td class="day past event calendar-day-2015-09-21"><div class="day-contents">21</div></td>
		                    <td class="day past event calendar-day-2015-09-22"><div class="day-contents">22</div></td>
		                    <td class="day past event calendar-day-2015-09-23"><div class="day-contents">23</div></td>
		                    <td class="day past calendar-day-2015-09-24"><div class="day-contents">24</div></td>
		                    <td class="day past calendar-day-2015-09-25"><div class="day-contents">25</div></td>
		                    <td class="day today calendar-day-2015-09-26"><div class="day-contents">26</div></td>
	                      </tr>
		                 <tr>
			               <td class="day calendar-day-2015-09-27"><div class="day-contents">27</div></td>
			               <td class="day calendar-day-2015-09-28"><div class="day-contents">28</div></td>
			               <td class="day calendar-day-2015-09-29"><div class="day-contents">29</div></td>
			               <td class="day calendar-day-2015-09-30"><div class="day-contents">30</div></td>
			               <td class="day adjacent-month next-month calendar-day-2015-10-01">
			               <div class="day-contents">1</div>
			               </td>
			               <td class="day adjacent-month next-month calendar-day-2015-10-02"><div class="day-contents">2</div></td>
			               <td class="day adjacent-month next-month calendar-day-2015-10-03"><div class="day-contents">3</div></td>
		                  </tr>
                      </tbody>
                      </table>
                      </div>
                      </div>
				    </div>
					<div class="cal-pos a">
						<ul>
							<li></li>
							<li></li>
						</ul>
					</div>
					<div class="cal-pos">
						<ul>
							<li></li>
							<li></li>
						</ul>
					</div>
			</div>
		</div>
		<div class="clear"></div>
</div>
			<div class="clear"></div>
		<!--End Calender-->
				<!--footer-->
				<div style="text-align:center">
					<p>&copy; 2018 Booking System. All rights reserved | Design by <a href="http://jaiken.top">TSC</a></p>
				</div>
				<!--//footer-->
</body>
</html>