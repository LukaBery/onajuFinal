package com.myspring.Onaju.order.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.host.goods.vo.HostInfoVO;
import com.myspring.Onaju.order.vo.OrderVO;



@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO{
	@Autowired
	private SqlSession sqlSession;
	

	@Override
	public void insertNewOrder(OrderVO myOrderList) throws DataAccessException{
	
			
			sqlSession.insert("mapper.order.insertNewOrder",myOrderList);
			sqlSession.update("mapper.order.memberGradeMod",myOrderList);
		
	}	
	@Override
	public void requestRefund(String order_code) throws DataAccessException{
		
		
		
		sqlSession.update("mapper.order.requestRefund",order_code);
	
}	
	@Override
	public void removeGoodsFromCart(OrderVO orderVO)throws DataAccessException{
		sqlSession.delete("mapper.order.deleteGoodsFromCart",orderVO);
	}
	@Override
	public void removeGoodsFromCart(List<OrderVO> myOrderList)throws DataAccessException{
		for(int i=0; i<myOrderList.size();i++){
			OrderVO orderVO =(OrderVO)myOrderList.get(i);
			sqlSession.delete("mapper.order.deleteGoodsFromCart",orderVO);		
		}
	}	
	
	private String selectOrderID() throws DataAccessException{
		return sqlSession.selectOne("mapper.order.selectOrderID");
		
	}
	@Override
	public List<OrderVO> reservationList(String room_code) throws DataAccessException{
		
	
		List<OrderVO> reservationList = (ArrayList)sqlSession.selectList("mapper.order.reservationList",room_code); 
		 
		return reservationList;
	}
}
