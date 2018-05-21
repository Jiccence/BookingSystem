package com.tsc.booking.utils;

import java.sql.Date;


public class DateAndString {
	 public Date stringToDate(String str) {  
	        Date date = null; 
	        System.out.println(str);
	        date = java.sql.Date.valueOf(str);                                     
	        return date;  
	    }  
}
