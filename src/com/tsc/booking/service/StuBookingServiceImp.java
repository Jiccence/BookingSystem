package com.tsc.booking.service;

import java.sql.SQLException;
import java.util.List;

import com.tsc.booking.bean.BookingBean;
import com.tsc.booking.bean.StuBean;
import com.tsc.booking.bean.TeaBean;
import com.tsc.booking.dao.BookingDao;
import com.tsc.booking.dao.SearchDao;

public class StuBookingServiceImp implements StuBookingService{

	@Override
	public void addbooking(BookingBean bean) {
		// TODO Auto-generated method stub
		BookingDao bdao=new BookingDao();
		try {
			bdao.addBooking(bean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<BookingBean> findBoo(String username) {
		// TODO Auto-generated method stub
		BookingDao bdao=new BookingDao();
		List<BookingBean> bean=null;
		try {
			bean=bdao.findbookingbyname(username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bean;
	}

	@Override
	public List<BookingBean> findBooOld(String username) {
		// TODO Auto-generated method stub
		BookingDao bdao=new BookingDao();
		List<BookingBean> bean = null;
		try {
			bean=bdao.findbookingold(username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bean;
	}

	@Override
	public List<BookingBean> updateBoo(String id, String state,String username) {
		// TODO Auto-generated method stub
		
		BookingDao bdao=new BookingDao();
		List<BookingBean> bean=null;
		try {
			bdao.updateboo(id, state);
			bean=bdao.findbookingbyname(username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bean;
	}
	public Boolean checkname(String stuname,String teaname) {
		
		SearchDao sd=new SearchDao();
		TeaBean tb=null;
		StuBean sb=null;
		
		try {
			sb=sd.findStubyName(stuname);
			tb=sd.findTeabyName(teaname);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(sb==null||tb==null) {
			return false;
		}
		
		return true;
		
	}

}
