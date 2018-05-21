package com.tsc.booking.service;

import java.util.List;

import com.tsc.booking.bean.TeaBean;

public interface TeaSearchService {
	public List<TeaBean> findTeaOrderByKey(String key);

	public TeaBean findTeaOrderByName(String teaname);

	public List<TeaBean> findTeaByKey(String string);
	
	
	
	
}
