package cn.hncu.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dom4j.Document;
import org.dom4j.Element;

import cn.hncu.login.Img.ImgDemo;
import cn.hncu.login.factory.DocumentFactory;

public class Login extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");//设置utf-8的编码格式去接收
		response.setContentType("text/html;charset=UTF-8");//设置页面显示方式，这个设置必须要在获得输出流之前设置，不然设置都没有用，照样会出现乱码
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE>");
		out.println(" <meta http-equiv='content-type' content='text/html; charset=UTF-8'> </HEAD>");
		out.println("  <BODY>");
		String name=request.getParameter("name");
		String pwd=request.getParameter("pwd");
		String check=request.getParameter("checkCode");//从界面获得验证码输入的值
		ImgDemo id =new ImgDemo();
		String str=id.getStr();
		if(!check.equals(str)){
			out.println("登录失败，验证码不正确！");//要是验证码不符合，直接返回登录界面
			out.print("<a href='index.jsp'>返回登录</a>");
			return;
		}
		
		//登录前获得所有的对象
		Document dom=DocumentFactory.getDocument();
		boolean flag=false;
		Element root=dom.getRootElement();
		Iterator<Element> it=root.elementIterator();
		
		while(it.hasNext()){
			Element ele =it.next();
			String nameC=ele.attributeValue("name");
			String pwdC=ele.attributeValue("pwd");
			if(name.trim().equals(nameC)&&pwdC.equals(pwdC)){
				flag=true;
				break;
			}
		}
		if(flag){
			out.println("<font color='red' size='6px'>登陆成功！</font>");
			out.print("<a href='index.jsp'><font color=cracker khaki size='6px'>返回登录</a><br>");
			out.print("<br><a href='two.jsp'><font color='darkgoldenrod' size='8px'>点击进入</font></a><br>");
		}else{
			out.println("用户名和密码不匹配，登录失败。。。");
			out.println("<a href='index.jsp'>返回登录</a>");
		}
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
