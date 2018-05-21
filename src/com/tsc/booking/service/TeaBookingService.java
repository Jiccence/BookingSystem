package com.tsc.booking.service;

import java.util.List;

import com.tsc.booking.bean.DatesBean;

public interface TeaBookingService {
	public DatesBean getdates(String uname);
	public DatesBean setdates(String uname,List<String> list);
}
