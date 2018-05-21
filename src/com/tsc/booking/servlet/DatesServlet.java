package com.tsc.booking.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tsc.booking.service.TeaBookingService;
import com.tsc.booking.service.TeaBookingServiceImp;

@WebServlet("/DatesServlet")
public class DatesServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String m1=request.getParameter("m1");
		String m2=request.getParameter("m2");
		String m3=request.getParameter("m3");
		String m4=request.getParameter("m4");
		String tu1=request.getParameter("tu1");
		String tu2=request.getParameter("tu2");
		String tu3=request.getParameter("tu3");
		String tu4=request.getParameter("tu4");
		String w1=request.getParameter("w1");
		String w2=request.getParameter("w2");
		String w3=request.getParameter("w3");
		String w4=request.getParameter("w4");
		String th1=request.getParameter("th1");
		String th2=request.getParameter("th2");
		String th3=request.getParameter("th3");
		String th4=request.getParameter("th4");
		String f1=request.getParameter("f1");
		String f2=request.getParameter("f2");
		String f3=request.getParameter("f3");
		String f4=request.getParameter("f4");
		String st1=request.getParameter("st1");
		String st2=request.getParameter("st2");
		String st3=request.getParameter("st3");
		String st4=request.getParameter("st4");
		String su1=request.getParameter("su1");
		String su2=request.getParameter("su2");
		String su3=request.getParameter("su3");
		String su4=request.getParameter("su4");
		List<String> datelist=new ArrayList<>();
		datelist.add(m1);
		datelist.add(m2);
		datelist.add(m3);
		datelist.add(m4);
		datelist.add(tu1);
		datelist.add(tu2);
		datelist.add(tu3);
		datelist.add(tu4);
		datelist.add(w1);
		datelist.add(w2);
		datelist.add(w3);
		datelist.add(w4);
		datelist.add(th1);
		datelist.add(th2);
		datelist.add(th3);
		datelist.add(th4);
		datelist.add(f1);
		datelist.add(f2);
		datelist.add(f3);
		datelist.add(f4);
		datelist.add(st1);
		datelist.add(st2);
		datelist.add(st3);
		datelist.add(st4);
		datelist.add(su1);
		datelist.add(su2);
		datelist.add(su3);
		datelist.add(su4);
		TeaBookingService tbs=new TeaBookingServiceImp();
		System.out.println("测试"+uname);
		HttpSession session=request.getSession();
		session.setAttribute("dates",tbs.setdates(uname, datelist));
					
		response.sendRedirect(request.getContextPath() + "/teapage.jsp");
		return;
		
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		
		
	}
}
