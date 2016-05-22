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
   <div style="width:100%" align="center" >
  <form><font color=green><font size=5>
<br><br>投入金额：<input type="text" name="Gmoney" /><br/>
    <br>投入时间：<input type="text" name="Gtime" />
   <br> <br><input type="submit" value="提交"/>
</font></form>
<%
    try{

        int time=Integer.parseInt(request.getParameter("Gtime"));
        int money=Integer.parseInt(request.getParameter("Gmoney"));
        out.print(money);
           double  rate;
           double futerMoney=0;
        int  select=Integer.parseInt(request.getParameter("five"));
        out.print(select);
           if(select==1){
               rate=0.0616;
               futerMoney=money*Math.pow((1+rate ),time );


           }else if(select==2)
           {
               rate=0.0930;
               futerMoney=money*Math.pow((1+rate ),time );
           }else if(select==3){

               rate=0.1976;
               futerMoney=money*Math.pow((1+rate ),time );
           }else{
               rate=0.1534;
               futerMoney=money*Math.pow((1+rate ),time );

           }
           out.print(futerMoney);

       }catch(NumberFormatException e) {%>

         <h2>
             请选择
         </h2>
     <%  }%>

  </body>
</html>
