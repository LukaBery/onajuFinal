package com.myspring.Onaju.order.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.order.vo.OrderVO;




public interface OrderDAO {
	public void insertNewOrder(OrderVO myOrderList) throws DataAccessException;
	public void removeGoodsFromCart(List<OrderVO> myOrderList)throws DataAccessException;
	public void removeGoodsFromCart(OrderVO orderVO)throws DataAccessException;
	public void requestRefund(String order_code) throws DataAccessException;
	public List<OrderVO> reservationList(String room_code) throws DataAccessException;
}
