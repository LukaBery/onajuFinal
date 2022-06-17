package com.myspring.Onaju.order.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface OrderController {
	public Map<String, String> payToOrderGoods(@RequestParam Map<String, String> orderMap,HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ModelAndView orderCartGoods(@RequestParam Map<String, String> receiverMap,
            HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ModelAndView requestRefund(@RequestParam("order_code") String order_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception;

}
