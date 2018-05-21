package com.tsc.booking.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tsc.booking.service.TeaSearchService;
import com.tsc.booking.service.TeaSearchServiceImp;

@WebServlet("/SearchteaServlet")
public class SearchteaServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String key=request.getParameter("key");
		String str=request.getParameter("str");
		System.out.println(key+str);
		TeaSearchService tss=new TeaSearchServiceImp();
		HttpSession session=request.getSession();
		switch (key){
			case "school":{
				session.setAttribute("stea",tss.findTeaOrderByKey("Hit"));
				break;
			}
				
			case "sdept":{
				session.setAttribute("stea",tss.findTeaOrderByKey("计算机科学与技术学院"));
				break;
			}
			case "major":{
			
				session.setAttribute("stea",tss.findTeaOrderByKey("计算机科学与技术学院"));
				break;
			}
			case "sear":{
				session.setAttribute("stea",tss.findTeaByKey(str));
				response.sendRedirect(request.getContextPath() + "/teasear.jsp");
				return;
				//break;
			}
			
		}
			
		response.sendRedirect(request.getContextPath() + "/teacher_sch.jsp");
		return;
		
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		doGet(request,response);
	}
}
