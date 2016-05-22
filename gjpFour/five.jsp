<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'five.jsp' starting page</title>
    
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
   <form action="six.jsp" method="post">
   <% Connection con;
    Statement sql;
    ResultSet rs;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){}
    try{
    String uri="jdbc:mysql://localhost:3306/jijin";
    //String uri="jdbc:mysql://localhost:3306/jijin?"+"user=root&password=&characterEncoding=UTF-8";
    String user="root";
    String password="";
    con=DriverManager.getConnection(uri,user,password);
    //con=DriverManager.getConnection(uri+"?user=root&password=&characterEncoding=UTF-8");
    //con=DriverManager.getConnection(uri);
    sql=con.createStatement();
    rs=sql.executeQuery("SELECT * FROM jijin");
    out.print("<table border=2>");
    out.print("<tr>");
    out.print("<th width=100>"+"代号"+"</th>");
    out.print("<th width=100>"+"基金名称"+"</th>");
    out.print("<th width=100>"+"基金类型"+"</th>");
    out.print("<th width=50>"+"净值"+"</th>");
    out.print("<th width=50>"+"昨日涨幅"+"</th>");
    out.print("<th width=50>"+"近一年收益"+"</th>");
    out.print("<th width=50>"+"起购（元）"+"</th>");
    out.print("<th width=50>"+"费率"+"</th>");
    out.print("</tr>");
    while(rs.next()){
    out.print("<tr>");
    out.print("<td>"+rs.getInt(1)+"</td>");
    out.print("<td>"+rs.getString(2)+"</td>");
    out.print("<td>"+rs.getString(3)+"</td>");
    out.print("<td>"+rs.getFloat(4)+"</td>");
    out.print("<td>"+rs.getFloat(5)+"</td>");
     out.print("<td>"+rs.getFloat(6)+"</td>");
     out.print("<td>"+rs.getInt(7)+"</td>");
     out.print("<td>"+rs.getFloat(8)+"</td>");
    out.print("</tr>");
    }
    out.print("</table>");
    
    rs.close();
    sql.close();
    con.close();
    }
    catch(SQLException e){
    out.print(e);
    }
    %>
    <br><a href="http://localhost:8080/gjp/seven.jsp"><font color=blue><font size=5>复利投资方式</font></a>  
        <form action="seven.jsp" method="post" >  
   
  </body>
</html>
