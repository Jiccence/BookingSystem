package com.tsc.booking.dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import com.tsc.booking.bean.BookingBean;
import com.tsc.booking.utils.DataSourceUtils;


public class BookingDao {
	public void addBooking(BookingBean bean) throws SQLException {

		// 1.创建QueryRunner
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		// 2.执行sql语句
		//默认用户 state=0 代表未激活
		String sql = "insert into booking(stuname,teaname,reason,email,state,phonenum,time,classes) values(?,?,?,?,'0',?,?,?)";
		runner.update(sql,bean.getStuname(),bean.getTeaname(),bean.getReason(),bean.getEmail(),bean.getPhonenum(),bean.getTime(),bean.getClasses());
		
	}

	public List<BookingBean> findbookingbyname(String username) throws SQLException{
		
		// TODO Auto-generated method stub
		// 1.创建QueryRunner
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		// 2.执行sql语句
				
		String sql="select * from booking where (stuname=? or teaname=?) and state!=-1";
				
		return runner.query(sql, new BeanListHandler<BookingBean>(BookingBean.class),username,username);
		
		
	}
	public List<BookingBean> findbookingold(String username) throws SQLException{
		
		// TODO Auto-generated method stub
		// 1.创建QueryRunner
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		// 2.执行sql语句
				
		String sql="select * from booking where (stuname=? or teaname=?) and state=-1";
				
		return runner.query(sql, new BeanListHandler<BookingBean>(BookingBean.class),username,username);
		
		
	}
	public void updateboo(String id,String state) throws SQLException{
		
		// TODO Auto-generated method stub
		// 1.创建QueryRunner
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		// 2.执行sql语句
				
		String sql="update booking set state=? where id=?";
				
		runner.update(sql,state,id);
		
		
	}
}
