package com.myspring.Onaju.host.money.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.host.money.vo.HostMoneyVO;

public interface HostMoneyController {

	public ModelAndView hostSalesAllList(HttpServletRequest request, HttpServletResponse response) throws Exception;

	
}
