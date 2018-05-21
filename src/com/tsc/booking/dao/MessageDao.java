package com.tsc.booking.dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import com.tsc.booking.bean.MessageBean;
import com.tsc.booking.utils.DataSourceUtils;


public class MessageDao {
	public void addMessage(MessageBean mb) throws SQLException {

		// 1.创建QueryRunner
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		// 2.执行sql语句
		//默认用户 state=0 代表未激活
		
		String sql = "insert into message(username,state,time,email,phone,content) values(?,'0',?,?,?,?)";
		runner.update(sql,mb.getUsername(),mb.getTime(),mb.getEmail(),mb.getPhone(),mb.getContent());
	
	}
	public List<MessageBean> seeMessage(String state) throws SQLException {

		// 1.创建QueryRunner
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		
		String sql="select * from message where state=?";
		return runner.query(sql, new BeanListHandler<MessageBean>(MessageBean.class),state);
	}
	public void updateMessage(String id) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

		// 2.执行sql语句
		//默认用户 state=0 
		
		String sql = "update  message set state=1 where id= ?";
		runner.update(sql,id);
	}
}
