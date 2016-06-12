<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'eight.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <body  style="background:url('image/6.png') no-repeat; ">

  </head>
  
  <body>
  <br> <div >
   <table width="600" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
    <td width="520" height="1" align="left" class="left_txt">&nbsp;<a href="${pageContext.request.contextPath}/seven.jsp"><font color=cracker khaki>返回</a></font></td>
  </tr>
  </table> 
  <br> <table width="450" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
    <td width="250" height="1" align="left" class="letf_txt">&nbsp;<font color=grey size=5>投资详细：</font></td>
     </tr>
</table> 
<table width="780" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
    <td width="780" height="1" align="right" class="right_txt">&nbsp;<font color=darkgoldenrod size=4>
   <%
   Gmoney=Double.parseDouble((String)request.getAttribute("Gmoney"));
    Gtime=Double.parseDouble((String)request.getAttribute("Gtime"));
   
%>

<%
     String Check=(String)request.getAttribute("five");
     if(Check.equals("aa") ){

        Money=Gmoney*Math.pow((1.0616 ),Gtime );
        out.print("您投资的是复利--基金<br>");
         out.print("低风险低收益<br>");
         out.print("根据您投资的金额和时间<br>");
         out.print("您的预期收益为");
         out.print(Money);
     }

    if(Check.equals("bb") ){
        Money=Gmoney*Math.pow((1.0930 ),Gtime );
        out.print("您投资的是复利--保险<br>");
         out.print("风险比较低，收益也较低<br>");
         out.print("根据您投资的金额和时间<br>");
         out.print("您的预期收益为:");
        out.print(Money);

    }
    if(Check.equals("cc") ){
       Money=Gmoney*Math.pow((1.1976 ),Gtime );
      out.print("您投资的是复利--P2P投资<br>");
         out.print("高风险高收益<br>");
         out.print("根据您投资的金额和时间<br>");
         out.print("您的预期收益为:");
        out.print(Money);

    }
    if(Check.equals("dd") ){
        Money=Gmoney*Math.pow((1.1534 ),Gtime );
      out.print("您投资的是复利--股票<br>");
         out.print("风险比较高，收益也较高<br>");
         out.print("根据您投资的金额和时间<br>");
         out.print("您的预期收益为:");
        out.print(Money);


    }
  
%>
</font></td>
     </tr>
</table> 

<%!
    private double  Gmoney=0;
    private double  Gtime=0;
    private double  Rate=0;
   private double  Money=0;  //收益
%>
  </body>
</html>
