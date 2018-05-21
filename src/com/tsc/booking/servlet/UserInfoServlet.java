package com.tsc.booking.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tsc.booking.bean.StuBean;
import com.tsc.booking.bean.TeaBean;
import com.tsc.booking.service.UserService;
import com.tsc.booking.service.UserServiceImp;
import com.tsc.booking.utils.DateAndString;

@WebServlet("/UserInfoServlet")
public class UserInfoServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//将前台Tomcat 默认的ISO 编码转换为UTF-8;
		request.setCharacterEncoding("utf-8");
		// 得到用户个人信息列表需要修改的各项属性值
		String username=request.getParameter("name");
		String nickname=request.getParameter("nickname");
		String realname=request.getParameter("realname");
		String email=request.getParameter("email");
		String phonenum=request.getParameter("phonenum");
		String type=request.getParameter("type");
		DateAndString dands=new DateAndString();
		Date birth=(Date) dands.stringToDate(request.getParameter("birth"));
		String schoolno=request.getParameter("schoolno");
		String sdeptno=request.getParameter("sdeptno");
		String majorno=request.getParameter("sdeptno");
		System.out.println(username+nickname+realname+email+phonenum+type+birth+schoolno+sdeptno+majorno);
		TeaBean tbean=new TeaBean();
		StuBean sbean=new StuBean();
		System.out.println(type);
		if(type.equals("学生")) {
			System.out.println("已经进入到");
			sbean.setuname(username);
			sbean.setnickname(nickname);
			sbean.setphonenum(phonenum);
			sbean.setemail(email);
			sbean.setbirth(birth);
			sbean.setschoolno(schoolno);
			sbean.setsdeptno(sdeptno);
			sbean.setmajorno(majorno);
			UserService userservice=new UserServiceImp();
			userservice.Supdateinfo(sbean);
			sbean=userservice.findusersbyname(username);
			//重新写入Session
			request.getSession().setAttribute("user", sbean);
			request.getSession().setAttribute("type", "学生");
			response.sendRedirect(request.getContextPath() + "/mypage.jsp");
			return;
			
		}else if(type.equals("教师")){
			tbean.setuname(username);
			tbean.setnickname(nickname);
			tbean.setphonenum(phonenum);
			tbean.setemail(email);
			tbean.setbirth(birth);
			tbean.setschoolno(schoolno);
			tbean.setsdeptno(sdeptno);
			tbean.setmajorno(majorno);
			UserService userservice=new UserServiceImp();
			userservice.Tupdateinfo(tbean);
			tbean=userservice.findusertbyname(username);
			//重新写入Session
			request.getSession().setAttribute("user",tbean);
			request.getSession().setAttribute("type", "教师");
			response.sendRedirect(request.getContextPath() + "/mypage.jsp");
			return;
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
}
