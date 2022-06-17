package com.myspring.Onaju.cart.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.cart.vo.CartVO;



public interface CartController {
	public ModelAndView addCart(@RequestParam Map<String, String> receiverMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	public ModelAndView removeCart(@RequestParam("cart_id") String cart_id,HttpServletRequest request, HttpServletResponse response)  throws Exception;

}
