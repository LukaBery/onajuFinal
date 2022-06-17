package com.myspring.Onaju.cart.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.cart.vo.CartVO;

public interface CartDAO {
	public List<CartVO> selectMyCartGoodsList(Map condMap) throws DataAccessException;

	public void insertNewCart(CartVO cartVO) throws DataAccessException;
	public void deleteCartGoods(String cart_id) throws DataAccessException;
}
