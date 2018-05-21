package com.tsc.booking.bean;

public class SdeptBean {
	private int id;
	private String sdeptid;
	private String sdeptname;
	private int schoolno;
	
	public void setid(int id) {
		this.id=id;
	}
	public int getid() {
		return id;
	}
	
	public void setsdeptid(String sdeptid) {
		this.sdeptid=sdeptid;
	}
	public String getsdeptid() {
		return sdeptid;
	}
	
	public void setsdeptname(String sdeptname) {
		this.sdeptname=sdeptname;
	}
	public String getsdeptname() {
		return sdeptname;
	}
	
	public void setschoolno(int schoolno) {
		this.schoolno=schoolno;
	}
	public int getschoolinfo() {
		return schoolno;
	}

}
