<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'seven.jsp' starting page</title>
    
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
 <font color=grey><font size=6> <p>复利投资方式： </font></p> 
   
   <table align="center">
    <tr>
        <td>复利投资方式     </td> <td>  行情报价   </td><td>涨跌幅   </td><td>选择</td>
    </tr>
    <tr>
        <td>基金</td> <td>6.16%</td><td>-1.18%</td><td><input type="radio" name="five" value="1"/> </td>
    </tr>
    <tr>
        <td>保险</td> <td>9.30%</td><td>0.74%</td><td><input type="radio" name="five"value="2"/> </td>
    </tr>
    <tr>
        <td>P2P投资</td> <td>19.76%</td><td>2.25%</td><td><input type="radio" name="five"value="3"checked="checked"/> </td>
    </tr>
    <tr>
        <td>股票</td> <td>15.34%</td><td>0.00%</td><td><input type="radio" name="five"value="4" /> </td>
    </tr>

</table>
<br><input type="submit" value="提交"/>
   
  </body>
</html>
