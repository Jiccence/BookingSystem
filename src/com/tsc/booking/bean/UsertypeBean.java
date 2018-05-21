package com.tsc.booking.bean;

public class UsertypeBean {
	private int typeid;
	private String typename;
	
	public void settypeid(int typeid) {
		this.typeid=typeid;
	}
	public int gettypeid() {
		return typeid;
	}
	
	public  void settypename(String typename) {
		this.typename=typename;
	}
	public String gettypename() {
		return typename;
	}
}
