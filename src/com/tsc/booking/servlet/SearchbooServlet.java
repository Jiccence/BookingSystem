package com.tsc.booking.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tsc.booking.service.StuBookingService;
import com.tsc.booking.service.StuBookingServiceImp;
@WebServlet("/SearchbooServlet")
public class SearchbooServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String key=request.getParameter("key");
		String uname=request.getParameter("uname");
		System.out.println(key+uname);
		StuBookingService sbs=new StuBookingServiceImp();
		HttpSession session=request.getSession();
		switch (key){
			case "1":{
				
				session.setAttribute("boo",sbs.findBoo(uname));
				break;
			}	
			case "0":{
				
				session.setAttribute("boo",sbs.findBoo(uname));
				break;
			}
			case "-1":{
				
				session.setAttribute("boo",sbs.findBooOld(uname));
				break;
			}
			
			
		}
			
		response.sendRedirect(request.getContextPath() + "/boo_history.jsp");
		return;
		
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		doGet(request,response);
	}

}
