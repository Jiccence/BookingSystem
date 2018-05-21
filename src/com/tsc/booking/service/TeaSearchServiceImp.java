package com.tsc.booking.service;

import java.sql.SQLException;
import java.util.List;

import com.tsc.booking.bean.TeaBean;
import com.tsc.booking.dao.SearchDao;

public class TeaSearchServiceImp implements TeaSearchService{

	@Override
	public List<TeaBean> findTeaOrderByKey(String key) {
		// TODO Auto-generated method stub
		
		SearchDao sdao=new SearchDao();
		List<TeaBean> re=null;
		try {
			 re=sdao.findTea(key);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return re;
	}

	@Override
	public TeaBean findTeaOrderByName(String teaname) {
		// TODO Auto-generated method stub
		SearchDao sdao=new SearchDao();
		TeaBean re=null;
		try {
			 re=sdao.findTeabyName(teaname);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return re;
		
	}

	@Override
	public List<TeaBean> findTeaByKey(String key) {
		// TODO Auto-generated method stub
		SearchDao sdao=new SearchDao();
		List<TeaBean> re=null;
		try {
			 re=sdao.findTeabyKey(key);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return re;
	}
	
	
}
