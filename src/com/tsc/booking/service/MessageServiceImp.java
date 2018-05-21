package com.tsc.booking.service;

import java.sql.SQLException;
import java.util.List;

import com.tsc.booking.bean.MessageBean;
import com.tsc.booking.dao.MessageDao;

public class MessageServiceImp implements MessageService{

	@Override
	public void addMes(MessageBean mb) {
		// TODO Auto-generated method stub
		MessageDao md=new MessageDao();
		try {
			md.addMessage(mb);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<MessageBean> seeMes(String state) {
		// TODO Auto-generated method stub
		MessageDao md=new MessageDao();
		List<MessageBean> mlist=null;
		try {
			mlist=md.seeMessage(state);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mlist;
	}

	@Override
	public List<MessageBean> updateMes(String id) {
		// TODO Auto-generated method stub
		
		MessageDao md=new MessageDao();
		List<MessageBean> mlist=null;
		try {
			md.updateMessage(id);
			mlist=md.seeMessage("0");
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mlist;
	}

}
