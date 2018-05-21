<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>联系我们</title>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">


	<style>
	
	/*!
	 * Start Bootstrap - Modern Business (https://startbootstrap.com/template-overviews/modern-business)
	 * Copyright 2013-2017 Start Bootstrap
	 * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap-logomodern-business-nav/blob/master/LICENSE)
	 */
body {
	  background-color: #343434;
	  font-family:'华文行楷'
	  
}
.container-main {
		padding: 5px 20px;
		background-color: white;
		padding-bottom: 50px;
	}
h1 {
		padding-top: 5px;
		font-family: "华文行楷";
	}
.carousel-item {
	  height: 65vh;
	  min-height: 300px;
	  background: no-repeat center center scroll;
	  -webkit-background-size: cover;
	  -moz-background-size: cover;
	  -o-background-size: cover;
	  background-size: cover;
	}
.portfolio-item {
	  margin-bottom: 30px;
	}
	
footer p {
		color: white;
	}
#go-to-tip{
	  display:block;  /*<a>标签不是块状元素，不能直接用text-align*/
	  color:#000000;
	  font-size:18px;
	  text-align:left;
	  background-color:#FFFFFF;
}
</style>
	
</head>

<body>

    <!-- Page Content -->
    <div class="container container-main">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">联系我们
        <small>@哈尔滨工业大学（威海）</small>
      </h1>

      <ol class="breadcrumb">
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4">
          <!-- Embedded Google Map -->
          <iframe width="100%" height="400px" frameborder="0" style="border:0"  src="http://www.google.cn/maps/embed?pb=!1m18!1m12!1m3!1d3164.1290724065566!2d122.08128281560198!3d37.52845457562971!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x359aebd5eb1265bf%3A0x949b6635de250d2f!2z5ZOI5bCU5ruo5bel5Lia5aSn5a2m5aiB5rW35qCh5Yy6!5e0!3m2!1szh-CN!2scn!4v1526558087227" ></iframe>
        </div>
        <!-- Contact Details Column -->
        <div class="col-lg-4 mb-4">
          <h3>详细信息</h3>
          <hr /> 
          <address>
          		<b>地址:</b>
            	<a href="http://www.hitwh.edu.cn/" 
            	title="哈尔滨工业大学（威海）创建于1985年，隶属于工业和信息化部，作为哈尔滨工业大学的一校区，是国家首批“985工程”和“211工程”高校之一。哈工大坚持立足航天、服务国防，面向国际学术前沿和国家重大需求，历经90余年的奋斗，学校已发展成为一所特色鲜明、实力雄厚，居于国内一流水平，在国际上有较大影响的多学科、开放式、研究型的国家重点大学。" 
            	target="_blank">哈尔滨工业大学（威海）</a>
            	
            <br>山东省，威海市，环翠区，文化西路2号
            <br>
          </address>
          <p>
           	<b>联系电话:</b>  (123) 456-7890
          </p>
          <p>
           	 <b>电子邮件:</b> <a href="MailTo:hitwjs_wjs@163.com">tsc.hit@example.com
            </a>
          </p>
        </div>
      </div>
      <!-- /.row -->

      <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      <div class="row">
        <div class="col-lg-8 mb-4">
          <h3>发送消息</h3>
          <form name="sentMessage" id="contactForm" action="SendMessageServlet"  novalidate>
         	 <input type="hidden" name="type" value="add">
            <div class="control-group form-group">
              <div class="controls">
                <label>您的姓名：</label>
                <input type="text" class="form-control" id="name" name="name" required data-validation-required-message="Please enter your name.">
                <p class="help-block"></p>
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>联系电话：</label>
                <input type="tel" class="form-control" id="phone" name="phone" required data-validation-required-message="Please enter your phone number.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>电子邮箱:</label>
                <input type="email" class="form-control" id="email" name="email" required data-validation-required-message="Please enter your email address.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>消息内容:</label>
                <textarea rows="10" cols="100" form="contactform" name="content" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
              </div>
            </div>
            <div id="success"></div>
            <!-- For success/fail messages -->
            <button type="submit" class="btn btn-primary" id="sendMessageButton">留言</button>
	 		<a id="go-to-tip" href="MailTo:hitwjs_wjs@163.com"> 邮件</a>
          </form>
        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
    
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
	

    <!-- Contact form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

  </body>

</html>
