package com.tsc.booking.service;

import java.sql.SQLException;

import com.tsc.booking.bean.AdminBean;
import com.tsc.booking.bean.StuBean;
import com.tsc.booking.bean.TeaBean;
import com.tsc.booking.dao.UserDao;

public class UserServiceImp implements UserService{
	@Override
	public void activeUser(String uname,String type) {
		// TODO Auto-generated method stub
		UserDao udao=new UserDao();
		try {
			if(type.equals("教师"))
				udao.activeTeaUserByActivecode(uname);
			else
				udao.activeStuUserByActivecode(uname);
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public void Tregist(TeaBean user) {
		// TODO Auto-generated method stub
		UserDao udao=new UserDao();
		try {
			udao.addTeaUser(user);
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public void Sregist(StuBean user) {
		// TODO Auto-generated method stub
		UserDao udao=new UserDao();
		try {
			udao.addStuUser(user);
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public TeaBean Tlogin(String username, String password) {
		// TODO Auto-generated method stub
		UserDao udao=new UserDao();
		TeaBean teabean = null;
		try {
			 teabean=udao.findTeaUserByUserNameAndPassword(username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return teabean;
	}

	@Override
	public StuBean Slogin(String username, String password) {
		// TODO Auto-generated method stub
		UserDao udao=new UserDao();
		StuBean stubean = null;
		try {
			 stubean=udao.findStuUserByUserNameAndPassword(username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return stubean;
		
	}
	@Override
	public void Tupdateinfo(TeaBean user) {
		// TODO Auto-generated method stub
		UserDao udao=new UserDao();
		try{
			udao.UpdateInfoByTeaBean(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public void Supdateinfo(StuBean user) {
		// TODO Auto-generated method stub
		UserDao udao=new UserDao();
		try{
			udao.UpdateInfoByStuBean(user);
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public StuBean findusersbyname(String username) {
		// TODO Auto-generated method stub
		
		UserDao udao=new UserDao();
		StuBean sbean=null;
		try{
			sbean=udao.findusersbyname(username);
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sbean;
	}
	@Override
	public TeaBean findusertbyname(String username) {
		// TODO Auto-generated method stub
		UserDao udao=new UserDao();
		TeaBean tbean=null;
		try{
			tbean=udao.findusertbyname(username);
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tbean;
	}
	@Override
	public AdminBean Alogin(String username, String password) {
		// TODO Auto-generated method stub
		UserDao udao=new UserDao();
		AdminBean bean = null;
		try {
			 	bean=udao.findAdmin(username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bean;
	}
	@Override
	public Boolean finduserbyemail(String email,String type) {
		// TODO Auto-generated method stub
		UserDao udao=new UserDao();
		Boolean b=true;
		try {
			 	b=udao.finduserbyemail(email,type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return b;
		
		
		
	}
	@Override
	public void reset(String email, String password, String type) {
		// TODO Auto-generated method stub
		UserDao udao=new UserDao();
		
		try {
			 	udao.reset(email,password,type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	

}
