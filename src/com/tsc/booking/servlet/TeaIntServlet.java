package com.tsc.booking.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tsc.booking.bean.DatesBean;
import com.tsc.booking.bean.TeaBean;
import com.tsc.booking.service.TeaBookingService;
import com.tsc.booking.service.TeaBookingServiceImp;
import com.tsc.booking.service.TeaSearchService;
import com.tsc.booking.service.TeaSearchServiceImp;
@WebServlet("/TeaIntServlet")
public class TeaIntServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String teaname=request.getParameter("teaname");
			//获取教师信息
			TeaSearchService tss=new TeaSearchServiceImp();
			TeaBean tbean=tss.findTeaOrderByName(teaname);
			//获取教师日程信息
			TeaBookingService tbs=new TeaBookingServiceImp();
			DatesBean db=tbs.getdates(teaname);
			
			HttpSession session = request.getSession();
			
			session.setAttribute("tea_re", tbean);
			session.setAttribute("dates", db);
			response.sendRedirect(request.getContextPath() + "/teapage.jsp");
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				doGet(request,response);
	}

}
