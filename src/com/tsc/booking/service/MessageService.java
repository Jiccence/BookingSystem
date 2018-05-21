package com.tsc.booking.service;

import java.util.List;

import com.tsc.booking.bean.MessageBean;

public interface MessageService {
	public void addMes(MessageBean mb);
	public List<MessageBean> seeMes(String state);
	public List<MessageBean> updateMes(String parameter);

}
