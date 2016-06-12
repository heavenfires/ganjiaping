<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function flush(){
		var dom =document.getElementById("imgid");
		var data=new Date();
		dom.src="/LOGIN/immg?"+data.getTime();
		}
	</script>
	
  </head>
  
  <body>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="60" background="image/3.png"><br /></td>
  </tr>
  <tr>
    <td height="550" align="left" valign="top" bgcolor="#FFFFFF"><table width="100%" height="550" border="0" cellpadding="0" cellspacing="0" class="login_bg">
      <tr>
        <td width="45%" align="right" valign="top" background="image/center.jpg"><table width="91%" height="550" border="0" cellpadding="0" cellspacing="0" class="login_bg2">
          <tr>
            <td align="right" valign="top"><table class="login_bg2" height="532" cellspacing="0" cellpadding="0" 
            width="91%" border="0">
              <tbody>
                <tr>
                  <td valign="top" height="150"><table width="89%" height="427" 
                  border="0" align="center" cellpadding="0" cellspacing="0">
                      <tbody>
                        <tr>
                          <td height="130">&nbsp;</td>
                        </tr>
                        <tr>
                          <td valign="top" align="right" height="60"><img src="image/1.png" alt="GJP-复利投资" width="420" height="180" /></td>
                        </tr>
                        <tr>
                          <td valign="top" align="center" height="198"><table width="275" border="0" align="right" cellpadding="0" cellspacing="0">
                              
                          </table></td>
                        </tr>
                      </tbody>
                  </table></td>
                </tr>
              </tbody>
            </table></td>
          </tr>
        </table></td>
        <td width="1%" align="center" valign="top" background="image/center.jpg"><img src="image/ge.jpg" width="1" height="550" /></td>
        <td width="54%" align="left" valign="top" background="image/center.jpg"><table width="91%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="129">&nbsp;</td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="4%">&nbsp;</td>
                <td width="96%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="30">&nbsp;</td>
                  </tr>
                   <tr>
                    <td>
   			<form action='login' method="post">
   			 <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="40" align="center"><span class="login_txt">用户名：&nbsp;&nbsp;</span></td>
                          <td  height="40"><label>
   			<input type="text" name="name" /> 
                          </label></td>
                        </tr>
                        <tr>
                          <td height="40" align="center"><span class="login_txt">密&nbsp;&nbsp;&nbsp;&nbsp;码：&nbsp;&nbsp;</span></td>
                          <td height="40"><label>
                            <input type="text" name="pwd" />
                          </label></td>
                        </tr>   
                         <tr>
                          <td height="40"align="center"><span class="login_txt">验证码：&nbsp;&nbsp;</span></td>
                          <td height="40"><label>
                          <input type="text" name="checkCode"><img src="/LOGIN/immg" id='imgid'><a href="javascript:flush()">看不清</a>
                           </label></td>
                        </tr>   
                       <tr> 
                         <td height="40">&nbsp;</td>
                          <td height="40"><label>
                            <br>  <form>        
   			
   			<input type="submit"value="登录" />&nbsp;
   			<input type="reset"value="重置" />
   			<a href='jsps/Reg.jsp'>注册</a>
   			</form>
   			  </label></td>
                      </tr>
                      </table>
   		
  </body>
</html>
