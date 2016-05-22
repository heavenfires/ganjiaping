<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'four.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <body  style="background:url('image/3.png') no-repeat; ">

  </head>
  
  <body>
  <div style="width:100%" align="center" >
  <font color=red><font size=8></font>
   <%
    Year=Double.parseDouble((String)request.getAttribute("Year"));
    Value=Double.parseDouble((String)request.getAttribute("Value"));
    Money=Double.parseDouble((String)request.getAttribute("Money"));
    Rate=Double.parseDouble((String)request.getAttribute("Rate"));
    Number=Double.parseDouble((String)request.getAttribute("Number"));
%>

<%
     String Check=(String)request.getAttribute("skill");
     if(Check.equals("one") ){

         Money=Value*Math.pow((1+Rate ),Year );
         out.print("预期收益:");
         out.print(Money);
     }

    if(Check.equals("two") ){
        Money=Value*(1+Rate*Year );
        out.print("预期收益:");
        out.print(Money);

    }
    if(Check.equals("three") ){
        Value=Money/Math.pow((1+Rate ),Year ) ;
        out.print("本金:");
        out.print(Value);
    }
    if(Check.equals("four") ){
        Year=(Math.log(Money/Value))/(Math.log(1+Rate));
        out.print("年限:");
        out.print(Year);

    }

    if(Check.equals("five") ){

        Rate=Math.pow((Money/Value),1/Year)-1;
        out.print("年利率:");
        out.print(Rate);
    }

    if(Check.equals("six")){
        Money=Value*(1+Rate)*(-1+Math.pow((1+Rate),Number))/Rate ;
        out.print("收益金额:");
        out.print(Money);
    }
   if(Check.equals("seven")){%>
      <jsp:forward page="five.jsp"/>
  <% }
%>

<%!
    private double  Value=0;
    private double  Money=0;  //收益
    private double  Year=0;
    private double  Rate=0;
    private double  Number=0;
%>

  </body>
</html>
