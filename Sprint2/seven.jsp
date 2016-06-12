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
  <table width="450" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
    <td width="380" height="1" align="left" class="letf_txt">&nbsp;<font color=grey size=5>复利投资理财：</font></td>
     </tr>
</table> 
   <table align="center">
    <tr>
        <td>复利投资方式     </td> <td>  行情报价   </td><td>涨跌幅   </td><td>请选择</td>
    </tr>
    <tr>
        <td>基金</td> <td>6.16%</td><td>-1.18%</td><td><input type="radio" name="five" value="aa"/> </td>
    </tr>
    <tr>
        <td>保险</td> <td>9.30%</td><td>0.74%</td><td><input type="radio" name="five"value="bb"/> </td>
    </tr>
    <tr>
        <td>P2P投资</td> <td>19.76%</td><td>2.25%</td><td><input type="radio" name="five"value="cc"checked="checked"/> </td>
    </tr>
    <tr>
        <td>股票</td> <td>15.34%</td><td>0.00%</td><td><input type="radio" name="five"value="dd" /> </td>
    </tr>
</table>

<div style="width:100%" align="center" >
  <form><font color=green><font size=5>
<tr bgcolor="#ffffff">
 <br> 投入金额：</font><input type ="text" name="Gmoney" value="0"/><br/>
 <div style="width:100%" align="center" >
  <form><font color=green><font size=5>
<tr bgcolor="#ffffff">
               投入时间： </font><input type="text" name="Gtime" value="0"/><br/>
<br><input type="submit" value="提交"/>
 </font></form>
   <table width="450" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
    <td width="350" height="1" align="right" class="right_txt">&nbsp;<a href="${pageContext.request.contextPath}/five.jsp"><font color=cracker khaki>返回</a></font></td>
  </tr>
</table> 
  </body>
</html>
