<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.test.action.DanliAction" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'two.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css"></link>
  <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css" type="text/css">
  </link><script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
  </head>
  
  <body>
  <div style="width:100%" align="center" >
  <form action ="three.jsp" method="post" >
  <br><p><font color=red font size=6>请选择：</font></p>
    <input type="radio" name="skill" value="one" checked="ok"/><font size=4>单利计算</font>
    <input type="radio" name="skill" value="two"/><font size=4>复利计算</font>
    <input type="radio" name="skill" value="three"/><font size=4>本金计算</font>
    <input type="radio" name="skill" value="four"/><font size=4>年限计算</font>
    <input type="radio" name="skill" value="five"/><font size=4>年利率计算</font>
    <input type="radio" name="skill" value="six"/><font size=4>定期投资</font>
    <input type="radio" name="skill" value="seven"/><font size=4>投资资讯</font>
    <br/><br/><br/>
    
    <font size=4>本金：</font><input type ="text" name="Value" value="0"/><br/>
    <font size=4>年限： </font><input type="text" name="Year" value="0"/><br/>
    <font size=4>年利率：</font><input type="text" name="Rate" value="0"/><br/>
    <font size=4>定投次数：</font><input type="text" name="Number" value="0"/><br/>
    <font size=4>收益： </font><input type="text" name="Money" value="0"/><br/>
    <br><input type="submit" value="提交"/><br>
    <br><p>(注：您需要求的值则不需要输入数值，以及不需要把0删掉；选择投资资讯也不需要输入数值，同时也不需要把0删掉。)</p><br>
</form>

</body>
  </body>
</html>
