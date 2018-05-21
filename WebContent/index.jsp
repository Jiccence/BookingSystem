<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线预约</title>
</head>								
<frameset cols="0,*," rows="50,*" frameborder="NO" border="0" framespacing="0">
	<frame />
	<frame src="top.jsp" name="top" noresize="noresize" frameborder="NO"  scrolling="no" marginwidth="0" marginheight="0" target="main" />
	<frame  />
<frameset cols="0,186,*," rows="650,*" id="frame">
	<frame src="UntitledFrame-1.html" name="lefts" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0"  scrolling="auto" target="main" />
	<frame src="left.jsp" name="left" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="main" />

<frameset cols="0,1184,*," rows="650,*" id="frames">
	<frame />
	<frame src="right.jsp" name="main" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="main" />
	<frame />
<noframes>
<body>
</body>
</noframes>
</html>