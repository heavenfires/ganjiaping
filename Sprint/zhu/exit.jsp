<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<%
session.invalidate();
out.print("<script Lanuage='JavaScript'>window.alert('确认退出')</script>"); 
out.print("<script Lanuage='JavaScript'>window.open('index.jsp')</script>"); 
out.print("<script Lanuage='JavaScript'>window.parent.opener=null </script>"); 
out.print("<script Lanuage='JavaScript'>window.parent.close() </script>"); 
 %>
  </body>
</html>
