<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

  
  <body>
                                                  
   <% 
   Connection con;
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
	%>
		<center>
			<h2>
				<font color=cracker khaki >投资资讯</font>
			</h2>
		</center>
		<table border="1" align="center" border="0" align="center"
			cellpadding="0" cellspacing="1" bgcolor="#c5d7ed">
			<tr height="30">
				<th>
					代号
				</th>
				<th>
					基金名称
				</th>
				<th>
					基金类型
				</th>
				<th>
					净值
				</th>
				<th>
					昨日涨幅
				</th>
				<th>
					近一年收益
				</th>
				<th>
					起购（元）
				</th>
				<th>
					费率
				</th>
			</tr>
			<%
			int p;
	    int pagecount=4;
	    int p2=1;
	    int rowcount;
	    int intpagecount;
	    String page1=request.getParameter("page");
	    if(page1==null){
	         p=1;	         
	      }   	        
	    else
	        {
	         p=Integer.parseInt(page1);	        
	         }
	    rs.last();
        rowcount = rs.getRow();
        intpagecount = (rowcount + pagecount - 1)/pagecount;
        if(p>intpagecount) p=intpagecount;
        if(p<1) p=1;
        rs.beforeFirst();
			while(rs.next()){
	if(p2>(p-1)*pagecount&&p2<=p*pagecount){
	%>
   <td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<td><%=rs.getString(7) %></td>
				<td><%=rs.getString(8) %></td>
				
			</tr>
			<%}
                  p2++; 
}
		
 %>
		</table>
		<p align="center" class="STYLE7">
		<form method="POST" action="five.jsp">
			第<%=p %>页 共<%=intpagecount %>页&nbsp;&nbsp;
			<%if(p>1){ %>
			<a href="five.jsp?page=1">第一页</a>
			<a href="five.jsp?page=<%=p-1 %>">上一页</a>
			<%} %>
			&nbsp;&nbsp;
			<%if(p<intpagecount){ %>

			<a href="five.jsp?page=<%=p+1 %>">下一页</a>
			<a href="five.jsp?page=<%=intpagecount %>">最后一页</a>
			<%} %>

			&nbsp;&nbsp;转到第
			<input type="text" name="page" size="4">
			页
			<span><input name="Submit" type="submit"
					style="border-style: none; background-color: Transparent; background-image: url(${pageContext.request.contextPath}/images/f2.jpg); width: 20px; height: 19px; vertical-align: top; FONT-SIZE: 12px; COLOR: #666666;"
					value="GO" />
			</span>
		</form>
	<% 
        rs.close();
  sql.close();
    con.close();
	}
	catch(SQLException e)
	{
		out.println(e.getMessage());
	}
	%>
	<table width="600" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1">&nbsp;</td>
    <td width="580" height="1" align="left" class="left_txt">&nbsp;<a href="${pageContext.request.contextPath}/two.jsp"><font color=cracker khaki>返回主页</a></font></td>
  </tr>
  
</table> 
        <br><a href="http://localhost:8080/LOGIN/seven.jsp"><font color=darkgoldenrod ><font size=5>复利投资方式</font></a>  
        <form action="seven.jsp" method="post" >  
  </body>
</html>
