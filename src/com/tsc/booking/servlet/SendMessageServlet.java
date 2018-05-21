package com.tsc.booking.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tsc.booking.bean.MessageBean;
import com.tsc.booking.service.MessageService;
import com.tsc.booking.service.MessageServiceImp;


@WebServlet("/SendMessageServlet")
public class SendMessageServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String type=request.getParameter("type");
		if(type.equals("see")) {
			seeMes(request,response);
		}else if(type.equals("cmp")) {
			cmpMes(request,response);
		}else {
		
		String username=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String content=request.getParameter("content");
		Date time=new Date();
		String temp=null;
		temp=time.toString();
		int state=0;
		MessageBean mb= new MessageBean();
		mb.setUsername(username);
		mb.setContent(content);
		mb.setEmail(email);
		mb.setPhone(phone);
		mb.setTime(temp);
		mb.setState(state);
		
		System.out.println(username+phone+email+content+time+temp);
		MessageService ms=new MessageServiceImp();
		ms.addMes(mb);
		
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write(
				"已成功提交,我们会尽快处理，<a href='" + request.getContextPath()
						+ "/mypage.jsp'>回首页</a>");
		}
		
	}
	private void cmpMes(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		MessageService ms=new MessageServiceImp();
		request.getSession().setAttribute("mes", ms.updateMes(request.getParameter("id")));
		
		response.sendRedirect(request.getContextPath() + "/message.jsp");
	}
	private void seeMes(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		MessageService ms=new MessageServiceImp();
		
		request.getSession().setAttribute("mes", ms.seeMes("0"));
		
		response.sendRedirect(request.getContextPath() + "/message.jsp");
	}
}
