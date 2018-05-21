package com.tsc.booking.service;

import com.tsc.booking.bean.AdminBean;
import com.tsc.booking.bean.StuBean;
import com.tsc.booking.bean.TeaBean;


public interface UserService {

	public TeaBean Tlogin(String username, String password);
	public StuBean Slogin(String username, String password);
	
	public void activeUser(String uname, String type);

	public void Tregist(TeaBean user);
	public void Sregist(StuBean user);
	
	public void Tupdateinfo(TeaBean sbean);
	public void Supdateinfo(StuBean user);
	public StuBean findusersbyname(String username);
	public TeaBean findusertbyname(String username);
	public AdminBean Alogin(String username, String password);
	public Boolean finduserbyemail(String email,String type);
	public void reset(String email, String password, String type);
	
	
	
}
