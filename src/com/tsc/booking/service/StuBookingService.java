package com.tsc.booking.service;

import java.util.List;

import com.tsc.booking.bean.BookingBean;

public interface StuBookingService {
	public void addbooking(BookingBean bean);

	public List<BookingBean> findBoo(String username);

	public List<BookingBean> findBooOld(String username);
	
	public List<BookingBean> updateBoo(String id,String state,String username);
	public Boolean checkname(String stuname,String teaname);
}
