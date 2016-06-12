<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'three.jsp' starting page</title>
    
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

    String Value= request.getParameter("Value");
    String Money =request.getParameter("Money");
    String Year =request.getParameter("Year");
    String Rate =request.getParameter("Rate");
    String Number =request.getParameter("Number");
    String skill= "";
    String[] SkillALL=request.getParameterValues("skill");
    if(SkillALL !=null&&SkillALL.length>0){
        for(String skills:SkillALL)
        {
            skill=skill+skills+"";
        }
    }
    request.setAttribute("skill" ,skill);
    request.setAttribute("Value" ,Value);
    request.setAttribute("Money" ,Money);
    request.setAttribute("Year" ,Year);
    request.setAttribute("Rate" ,Rate);
    request.setAttribute("Number" ,Number);
%>
  <jsp:forward page="four.jsp"/>
  </body>
</html>
