package com.myspring.Onaju.order.service;

import java.util.List;

import com.myspring.Onaju.order.vo.OrderVO;

public interface OrderService {
	public void addNewOrder(OrderVO myOrderList) throws Exception;
	public void requestRefund(String order_code) throws Exception;
	public List<OrderVO> reservationList(String room_code) throws Exception;
}
