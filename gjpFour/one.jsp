<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'one.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <body  style="background:url('image/1.png') no-repeat; ">
  </head>
  
  <body>
  <p><font color=white><font size=6>Welcome to this page:</font></p>
  <div style="width:100%" align="center" >
<p><font color=yellow><font size=8>复利投资理财工具</font>
         <br><br><br><br><a href="http://localhost:8080/gjp/two.jsp"><font color=pink><font size=6>请<img src="image/2.png"/>进入</font></a>  
        <form action="two.jsp" method="post" >  
  </body>
</html>
