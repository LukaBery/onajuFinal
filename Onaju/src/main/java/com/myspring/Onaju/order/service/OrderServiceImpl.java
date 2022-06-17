package com.myspring.Onaju.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.Onaju.host.goods.vo.HostInfoVO;
import com.myspring.Onaju.order.dao.OrderDAO;
import com.myspring.Onaju.order.vo.OrderVO;



@Service("orderService")
@Transactional(propagation=Propagation.REQUIRED)
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderDAO orderDAO;

	@Override
	public void addNewOrder(OrderVO myOrderList) throws Exception{
		orderDAO.insertNewOrder(myOrderList);
		//īƮ���� �ֹ� ��ǰ �����Ѵ�.
	
	}	
	@Override
	public void requestRefund(String order_code) throws Exception{
		orderDAO.requestRefund(order_code);
		//īƮ���� �ֹ� ��ǰ �����Ѵ�.
	
	}	
	@Override
	public List<OrderVO> reservationList(String room_code) throws Exception{
		return orderDAO.reservationList(room_code);	
	}
	

}
