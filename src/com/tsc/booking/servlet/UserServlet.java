package com.tsc.booking.servlet;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.tsc.booking.bean.*;
import com.tsc.booking.service.UserService;
import com.tsc.booking.service.UserServiceImp;
import com.tsc.booking.utils.MailUtils;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//转换编码
		request.setCharacterEncoding("utf-8");
		// 得到请求参数method,判断当前是什么操作
		String method = request.getParameter("method");

		if ("login".equals(method)) { // 登录操作台
			login(request, response);
		} else if ("regist".equals(method)) { // 注册操作
			regist(request, response);
		} else if ("logout".equals(method)) {
			// 注销操作
			logout(request, response);
		} else if ("activeuser".equals(method)) {
			active(request, response);
		}else if("forget".equals(method)) {
			foget(request,response);
		}else if("resetp".equals(method)) {
			reset(request,response);
		}

	}

	private void reset(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String type=request.getParameter("typeselector");
		UserService service = new UserServiceImp();
		service.reset(email,password,type);
		response.setContentType("text/html;charset=utf-8");
		try {
			response.getWriter().write(
					"已重置密码,请<a href='" + request.getContextPath()
							+ "/index.jsp'>登录</a>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void foget(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String type=request.getParameter("typeselector");
		System.out.println(email+type);
		UserService service = new UserServiceImp();
		if(service.finduserbyemail(email,type))
		{
			MailUtils m=new MailUtils();
			try{
				m.sendMail(email,"<a href='http://localhost:8080/BookingSystem/resetp.jsp'>验证成功，点击重置密码！</a>", "forget");
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.setContentType("text/html;charset=utf-8");
			try {
				response.getWriter().write(
						"等待查收邮件,<a href='" + request.getContextPath()
								+ "/login.jsp'>登录</a>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			response.setContentType("text/html;charset=utf-8");
			try {
				response.getWriter().write(
						"邮箱错误,<a href='" + request.getContextPath()
								+ "/login.jsp'>登录</a>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		/*MailUtils m=new MailUtils();
		try{
			m.sendMail(email,"<a href='http://localhost:8080/BookingSystem/resetp.jsp'>验证成功，点击重置密码！</a>", "forget");
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8");
		try {
			response.getWriter().write(
					"等待查收邮件,<a href='" + request.getContextPath()
							+ "/login.jsp'>登录</a>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	// 激活用户操作
	@SuppressWarnings("unused")
	public void active(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1.得到用户ID
		String uname = request.getParameter("uname");
		String type=request.getParameter("type");
		// 2.调用UserService中的方法完成激活操作
		StuBean sb=null;
		TeaBean tb=null;
		MailUtils m=new MailUtils();
		UserService service = new UserServiceImp();
		if(type.equals("学生")) {
			sb=service.findusersbyname(uname);
			service.activeUser(uname,type);
			try {
				m.sendMail(sb.getemail(),"<a href='http://localhost:8080/BookingSystem/UserServlet?method=activeuser&type=finish'>恭喜你，激活BookingSystem 账户成功！</a>", "active");
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getSession().setAttribute("user", sb);
			
		}else if(type.equals("教师")){
			tb=service.findusertbyname(uname);
			service.activeUser(uname,type);
			try {
				m.sendMail(tb.getemail(),"<a href='http://localhost:8080/BookingSystem/UserServlet?method=activeuser&type=finish'>恭喜你，激活BookingSystem 账户成功！</a>", "active");
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getSession().setAttribute("user", tb);
		}else if(type.equals("finish")) {
			response.setContentType("text/html;charset=utf-8");
			if(sb==null) {
				request.getSession().setAttribute("user",tb );
			}else{
				request.getSession().setAttribute("user", sb);
			}	
			response.getWriter().write(
					"用户激活成功,请<a href='" + request.getContextPath()
							+ "/index.jsp'>回首页</a>");
		}
		
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write(
				"等待查收邮件,请<a href='" + request.getContextPath()
						+ "/mypage.jsp'>回首页</a>");
		return;
	}

	// 注销操作
	public void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getSession().invalidate(); // 销毁session
		Cookie cookie = new Cookie("autologin", "");
		cookie.setMaxAge(0);
		cookie.setPath("/");

		response.addCookie(cookie);

		response.sendRedirect(request.getContextPath() + "/login.jsp");

	}

	// 登录操作
	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.得到用户名与密码
		String username = request.getParameter("Name");
		String password = request.getParameter("Password");
		String usertype = request.getParameter("typeselector");
		//调试
		System.out.println(username+password+usertype);
		// 2.调用service中登录方法
		UserService service = new UserServiceImp();
		TeaBean tuser=null;
		StuBean suser=null;
		AdminBean auser=null;
		
		if(usertype==null)
		{
			try {
				auser=service.Alogin(username,password);
				request.getSession().invalidate();
				request.getSession().setAttribute("user", auser);
				request.getSession().setAttribute("type", "Admin");
				response.sendRedirect(request.getContextPath() + "/mypage.jsp");
				return;
			}catch (Exception e) {
				e.printStackTrace();
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write(
						"<p>登录信息有误请 重新<a href='" + request.getContextPath()
								+ "/login.jsp'> 登录！</a></p>");
				return;
			}
		}
		
		try {
			if(usertype.equals("Usertea"))
				tuser = service.Tlogin(username, password);
			if(usertype.equals("Userstu"))
				suser = service.Slogin(username, password);
			
			if (tuser != null||suser!=null) {
				// 用户如果登录成功，判断是否勾选了记住用户名.
				String saveUsername = request.getParameter("remuser");

				if ("on".equals(saveUsername)) {
					// 记住用户名
					Cookie cookie = new Cookie("saveusername",
							URLEncoder.encode(username, "utf-8")); // 存储utf-8码
					cookie.setMaxAge(7 * 24 * 60 * 60); // 可以记住7天
					cookie.setPath("/");
					response.addCookie(cookie);
				} else {
					Cookie cookie = new Cookie("saveusername",
							URLEncoder.encode(username, "utf-8")); // 存储utf-8码
					cookie.setMaxAge(0);
					cookie.setPath("/");
					response.addCookie(cookie);
				}

				// 自动登录
				String autologin = request.getParameter("autologin");

				if ("on".equals(autologin)) {
					// 勾选了自动登录，就将用户名与密码存储到cookie中.
					Cookie cookie = new Cookie("autologin", URLEncoder.encode(
							username, "utf-8") + "%itcast%" + password);
					cookie.setMaxAge(7 * 24 * 60 * 60);
					cookie.setPath("/");
					response.addCookie(cookie);
				} else {
					Cookie cookie = new Cookie("autologin", URLEncoder.encode(
							username, "utf-8") + "%itcast%" + password);
					cookie.setMaxAge(0);
					cookie.setPath("/");
					response.addCookie(cookie);
				}

				// 登录成功后，将用户存储到session中.
				request.getSession().invalidate();
				if(usertype.equals("Usertea"))
				{
					request.getSession().setAttribute("user", tuser);
					request.getSession().setAttribute("type", "教师");
				}
					
				if(usertype.equals("Userstu")) 
				{
					request.getSession().setAttribute("user", suser);
					request.getSession().setAttribute("type", "学生");
				}
					
				response.sendRedirect(request.getContextPath() + "/mypage.jsp");
				return;
			} else {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write(
						"<p>用户名或密码错误 请 重新<a href='" + request.getContextPath()
								+ "/login.jsp'> 登录！</a></p>");
				return;
			}

		} catch (Exception e) {
			e.printStackTrace();
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write(
					"<p>登录信息有误请 重新<a href='" + request.getContextPath()
							+ "/login.jsp'> 登录！</a></p>");
			return;
		}
	}

	// 注册操作
	public void regist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//获取注册用户类型
		String usertype=request.getParameter("typeselector");
		
		// 1.得到请求参数，封装到javaBean中.
		TeaBean tuser = new TeaBean();
		StuBean suser=new StuBean();
		
		if(usertype.equals("Usertea")) {
				tuser.setuname(request.getParameter("username"));
				tuser.setteapassword(request.getParameter("password"));
		}
		if(usertype.equals("Userstu")){
				suser.setuname(request.getParameter("username"));
				suser.setstupassword(request.getParameter("password"));
		}
		
		System.out.println(request.getParameter("username")+request.getParameter("password")+usertype);
		//前端校验完毕
	
		// 手动封装一个激活码
		if(usertype.equals("Usertea"))
			tuser.setactivecode(UUID.randomUUID().toString());
		if(usertype.equals("Userstu"))
			suser.setactivecode(UUID.randomUUID().toString());
		// 2.调用service操作
		
		UserService service = new UserServiceImp();
		try {
			if(usertype.equals("Usertea"))
					service.Tregist(tuser);
			if(usertype.equals("Userstu"))
					service.Sregist(suser);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write(
					"<p>Regist Successfully! 请 <a href='" + request.getContextPath()
							+ "/login.jsp'> 登录！</a></p>");
			return;
		} catch (Exception e) {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write(
					"<p>Regist 失败! 请 重新<a href='" + request.getContextPath()
							+ "/register.jsp'>注册 </a></p>");
			return;
		}

	}

}
