package com.tsc.booking.bean;

import org.w3c.dom.Text;

public class SchoolBean {
		private int id;
		private String schoolid;
		private String schoolname;
		private Text schoolinfo;
		
		public void setid(int id) {
			this.id=id;
		}
		public int getid() {
			return id;
		}
		
		public void setschoolod(String schoolid) {
			this.schoolid=schoolid;
		}
		public String getschoolid() {
			return schoolid;
		}
		
		public void setschoolname(String schoolname) {
			this.schoolname=schoolname;
		}
		public String getschoolname() {
			return schoolname;
		}
		
		public void setschoolinfo(Text schoolinfo) {
			this.schoolinfo=schoolinfo;
		}
		public Text getschoolinfo() {
			return schoolinfo;
		}
		
		
		
		
		
		
		
		
		
}
