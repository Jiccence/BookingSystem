package com.tsc.booking.bean;

public class MajorBean {
	private int id;
	private int sdeptno;
	private String majorname;
	private int schoolno;
	
	public void setid(int id) {
		this.id=id;
	}
	public int getid() {
		return id;
	}
	
	public void setsdeptno(int sdeptno) {
		this.sdeptno=sdeptno;
	}
	public int getsdeptid() {
		return sdeptno;
	}
	
	public void setmajorname(String majorname) {
		this.majorname=majorname;
	}
	public String getmajorname() {
		return majorname;
	}
	
	public void setschoolno(int schoolno) {
		this.schoolno=schoolno;
	}
	public int getschoolinfo() {
		return schoolno;
	}

}
