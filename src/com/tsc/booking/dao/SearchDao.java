package com.tsc.booking.dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.tsc.booking.bean.StuBean;
import com.tsc.booking.bean.TeaBean;
import com.tsc.booking.utils.DataSourceUtils;

public class SearchDao {
	public List<TeaBean> findTea(String value) throws SQLException {

		// 1.创建QueryRunner
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		// 2.执行sql语句
		
		String sql="select * from teacherifo where schoolno=? or sdeptno=? or majorno=?";
		
		return runner.query(sql, new BeanListHandler<TeaBean>(TeaBean.class),value,value,value);
		
	}

	public TeaBean findTeabyName(String teaname) throws SQLException {
		// TODO Auto-generated method stub
		// 1.创建QueryRunner
				QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

				// 2.执行sql语句
				
				String sql="select * from teacherifo where uname=?";
				return runner.query(sql, new BeanHandler<TeaBean>(TeaBean.class),teaname);
		
		
	
	}
	public StuBean findStubyName(String stuname) throws SQLException {
		// TODO Auto-generated method stub
		// 1.创建QueryRunner
				QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

				// 2.执行sql语句
				
				String sql="select * from studentifo where uname=?";
				return runner.query(sql, new BeanHandler<StuBean>(StuBean.class),stuname);
		
		
	
	}

	public List<TeaBean> findTeabyKey(String key) throws SQLException {
		// TODO Auto-generated method stub
		// 1.创建QueryRunner
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		// 2.执行sql语句
				
		String sql="select * from teacherifo where  uname LIKE '%"+key+"%' or schoolno LIKE '%"+key+"%' or sdeptno LIKE '%"+key+"%' or majorno LIKE'%"+key+"%'";
				
		return runner.query(sql, new BeanListHandler<TeaBean>(TeaBean.class));
		
	}
}
