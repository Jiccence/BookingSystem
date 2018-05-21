package com.tsc.booking.bean;

import java.sql.Date;


public class StuBean {
		private int id;
		private String uname;
		private String nickname;
		private String gender;
		private String stupassword;
		private String stuid;
		private String schoolno;
		private String sdeptno;
		private String majorno;
		private Date birth;
		private String email;
		private String phonenum;
		private int intergral;
		private int level;
		private int fullbool;
		private String remarks;
		private String icon;
		private String activecode;
		private int state;
		public void setactivecode(String activecode) {
			this.activecode=activecode;
		}
		public String getactivecode() {
			return activecode;
		}
		public void setid(int id){
			this.id=id;
		}
		public int getid() {
			return id;
		}
		
		public void setuname(String uname) {
			this.uname=uname;
		}
		public String getuname() {
			return uname;
		}
		
		public void setnickname(String nickname) {
			this.nickname=nickname;
		}
		public String getnickname() {
			return nickname;
		}
		
		public void setgender(String gender) {
			this.gender=gender;
		}
		public String getgender() {
			return gender;
		}
		
		public void setstupassword(String stupassword) {
			this.stupassword=stupassword;
		}
		public String getstupassword() {
			return stupassword;
		}
		
		public void setstuid(String stuid) {
			this.stuid=stuid;
		}
		public String getstuid() {
			return stuid;
		}
		
		public void setschoolno(String schoolno) {
			this.schoolno=schoolno;
		}
		public String getschoolno() {
			return schoolno;
		}
		
		public void setsdeptno(String sdeptno) {
			this.sdeptno=sdeptno;
		}
		public String getsdeptno() {
			return sdeptno;
		}
		
		public void setmajorno(String majorno) {
			this.majorno=majorno;
		}
		public String getmajorno() {
			return majorno;
		}
		
		public void setbirth(Date birth) {
			this.birth=birth;
		}
		public Date getbirth() {
			return birth;
		}
		
		public void setemail(String email) {
			this.email=email;
		}
		public String getemail() {
			return email;
		}
		
		public void setphonenum(String phonenum) {
			this.phonenum=phonenum;
		}
		public String getphonenum() {
			return phonenum;
		}
		
		public void setintergral(int intergral) {
			this.intergral=intergral;
		}
		public int getintergral() {
			return intergral;
		}
		
		public void setlevel(int level) {
			this.level=level;
		}
		public int getlevel() {
			return level;
		}
		public void setfullbool(int fullbool) {
			this.fullbool=fullbool;
		}
		public int getfullbool() {
			return fullbool;
		}
		
		public void setremarks(String remarks){
			this.remarks=remarks;
		}
		public String getremarks() {
			return remarks;
		}
		
		public void seticon(String icon) {
			this.icon=icon;
		}
		public String geticon() {
			return icon;
		}
		public int getState() {
			return state;
		}
		public void setState(int state) {
			this.state = state;
		}
		
		
		
}
