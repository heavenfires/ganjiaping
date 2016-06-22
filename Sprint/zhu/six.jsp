<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'six.jsp' starting page</title>
    
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

    String Gmoney= request.getParameter("Gmoney");
    String Gtime =request.getParameter("Gtime");
    String Rate =request.getParameter("Rate");
    String Money =request.getParameter("Money");
    String five= "";
    String[] FiveALL=request.getParameterValues("five");
    if(FiveALL !=null&&FiveALL.length>0){
        for(String fives:FiveALL)
        {
            five=five+fives+"";
        }
    }
    request.setAttribute("five" ,five);
    request.setAttribute("Gmoney" ,Gmoney);
    request.setAttribute("Gtime" ,Gtime);
    request.setAttribute("Rate" ,Rate);
    request.setAttribute("Money" ,Money);
%>
  <jsp:forward page="eight.jsp"/>
  </body>
</html>
