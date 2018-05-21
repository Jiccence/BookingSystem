package com.tsc.booking.service;

import java.sql.SQLException;
import java.util.List;

import com.tsc.booking.bean.DatesBean;
import com.tsc.booking.dao.UserDao;

public class TeaBookingServiceImp implements TeaBookingService{

	@Override
	public DatesBean getdates(String uname) {
		// TODO Auto-generated method stub
		UserDao dao=new UserDao();
		DatesBean db=new DatesBean();
		
		try {
			db=dao.finddatesbyname(uname);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return db;
	}

	@Override
	public DatesBean setdates(String uname, List<String> list) {
		// TODO Auto-generated method stub
		UserDao dao=new UserDao();
		DatesBean db=new DatesBean();
		
		try {
			dao.updatebyname(uname,list);
			db=dao.finddatesbyname(uname);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return db;
	}

}
