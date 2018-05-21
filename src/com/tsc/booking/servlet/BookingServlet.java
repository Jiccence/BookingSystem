package com.tsc.booking.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tsc.booking.bean.BookingBean;
import com.tsc.booking.service.StuBookingService;
import com.tsc.booking.service.StuBookingServiceImp;
import com.tsc.booking.service.UserService;
import com.tsc.booking.service.UserServiceImp;
import com.tsc.booking.utils.DateAndString;
import com.tsc.booking.utils.MailUtils;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 得到请求参数method,判断当前是什么操作
		String method = request.getParameter("method");

		if ("add".equals(method)) { 
			// 申请预约
			add(request,response);
			
		} else if ("del".equals(method)) { 
			// 删除预约
			
		} else if ("sea".equals(method)) {
			// 查看预约
			
		} else if ("update".equals(method)) {
			update(request,response);
		}
		
	}

	private void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		// TODO Auto-generated method stub
		String type=request.getParameter("type");
		String id=request.getParameter("id");
		String uname=request.getParameter("uname");
		String email=request.getParameter("email");
		System.out.println(type+id+uname+email);
		MailUtils m=new MailUtils();
		StuBookingService sbs=new StuBookingServiceImp();
		HttpSession session=request.getSession();
		if(type.equals("del")){
			//删除操作，state=-1
			session.setAttribute("stea",sbs.updateBoo(id, "-1", uname));
		}else if(type.equals("giv")) {
			//取消操作 ，state=3
			session.setAttribute("stea",sbs.updateBoo(id, "3", uname));
		}else if(type.equals("cmp")) {
			//完成操作 ，state=2
			session.setAttribute("stea",sbs.updateBoo(id, "2", uname));
		}else if(type.equals("pass")) {
			//通过操作 ，state=1
			session.setAttribute("stea",sbs.updateBoo(id, "1", uname));
			
			try {
				m.sendMail(email, "<a href='http://localhost:8080/BookingSystem/index.jsp'>恭喜，"+uname+"老师同意了你的预约申请</a>", "message");
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(type.equals("refu")) {
			//拒绝操作 ，state=-1
			session.setAttribute("stea",sbs.updateBoo(id, "-1", uname));
			
			
			try {
				m.sendMail(email, "<a href='http://localhost:8080/BookingSystem/index.jsp'>抱歉，"+uname+"老师拒绝了你的预约申请</a>", "message");
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		response.sendRedirect(request.getContextPath() + "/boo_history.jsp");
		return;
	}

	private void add(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		// TODO Auto-generated method stub
		//转换编码
		String stuname=request.getParameter("sname");
		String teaname=request.getParameter("tname");
		String semail=request.getParameter("semail");
		String sphone=request.getParameter("sphone");
		String reasons=request.getParameter("reasons");
		System.out.println(request.getParameter("time"));
		if(request.getParameter("time").equals("")) {
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write(
					"预约信息有误,请<a href='" + request.getContextPath()
							+ "/booking.jsp'>重新填写</a>");
			return;
		}
		
		DateAndString dands=new DateAndString();
		Date time=(Date) dands.stringToDate(request.getParameter("time"));
		String classes=request.getParameter("classlist");
		
		
		
		BookingBean bbean=new BookingBean();
		bbean.setStuname(stuname);
		bbean.setTeaname(teaname);
		bbean.setEmail(semail);
		bbean.setPhonenum(sphone);
		bbean.setTime(time);
		bbean.setReason(reasons);
		bbean.setClasses(classes);
		StuBookingService sbs=new StuBookingServiceImp();
		UserService us=new UserServiceImp();
		MailUtils m=new MailUtils();
		
		if(sbs.checkname(stuname, teaname)){
			sbs.addbooking(bbean);
			String temail=us.findusertbyname(teaname).getemail();
			
			try {
				m.sendMail(temail,"尊敬的老师，"+stuname+"同学向您发出预约申请，登陆<a href='http://localhost:8080/BookingSystem/index.jsp'>查看详情</a>", "message");
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write(
				"预约已提交,请<a href='" + request.getContextPath()
						+ "/booking.jsp'>返回</a>");
		}else {
			
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write(
					"预约信息有误,请<a href='" + request.getContextPath()
							+ "/booking.jsp'>重新填写</a>");
			
		}
	
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
