package com.myspring.Onaju.cart.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.cart.vo.CartVO;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO{
	@Autowired
	private SqlSession sqlSession;	
	

	@Override
	public List<CartVO> selectMyCartGoodsList(Map condMap) throws DataAccessException {
		List<CartVO> orderGoodsList = (List) sqlSession.selectList("mapper.cart.selectMyCartGoodsList", condMap);
		return orderGoodsList;
	}

	@Override
	public void insertNewCart(CartVO cartVO) throws DataAccessException{
		sqlSession.insert("mapper.cart.insertNewCart",cartVO);
	}
	@Override
	public void deleteCartGoods(String cart_code) throws DataAccessException{
		sqlSession.delete("mapper.cart.deleteCartGoods",cart_code);
	}

}
