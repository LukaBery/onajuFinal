package com.myspring.Onaju.cart.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.cart.vo.CartVO;

public interface CartService {
	public List<CartVO> listMyCartGoods(Map condMap) throws Exception;
	public void addCart(CartVO cartVO) throws Exception;
	public void removeCartGoods(String cart_code) throws Exception;

}
