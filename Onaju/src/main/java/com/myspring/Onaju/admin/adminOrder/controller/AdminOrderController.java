package com.myspring.Onaju.admin.adminOrder.controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

public interface AdminOrderController {
	public ModelAndView ordersList(Criteria cri) throws Exception;
	public ModelAndView orderDetail(@RequestParam("order_code")String order_code, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ModelAndView orderModify(@RequestParam("order_code")String order_code, @ModelAttribute("cri") Criteria cri) throws Exception;
	public int orderCancel(String order_code);
	public String orderUpdate(AdminOrderVO orderVO, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr);
}
