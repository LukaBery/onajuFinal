package com.myspring.Onaju.admin.adminOrder.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminCommon.paging.PageVO;
import com.myspring.Onaju.admin.adminOrder.service.AdminOrderService;
import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

@Controller("adminOrderController")
public class AdminOrderControllerImpl implements AdminOrderController {

	@Autowired
	AdminOrderService adminOrderService;
	
	@Override
	@RequestMapping(value = "/admin/orderList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView ordersList(Criteria cri) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		int total = adminOrderService.orderListTotal(cri);
		
		List<Map<String, Object>> ordersList = adminOrderService.ordersList(cri);
		
		mav.addObject("ordersList", ordersList);
		mav.addObject("pageMaker", new PageVO(cri, total));
		return mav;
	}
	@Override
	@RequestMapping(value = "/admin/orderDetail.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView orderDetail(@RequestParam("order_code")String order_code, @ModelAttribute("cri") Criteria cri) {
		ModelAndView mav = new ModelAndView();
		AdminOrderVO orderVO = adminOrderService.orderDetail(order_code);
		mav.addObject("orderVO", orderVO );
		return mav;
	}
	@Override
	@ResponseBody
	@RequestMapping(value = "/admin/orderCancel.do", method = RequestMethod.POST )
	public int orderCancel(String order_code) {

		int data = adminOrderService.orderCancel(order_code);
		return data;
	}
	
	
	@Override
	@RequestMapping(value = "/admin/orderModify.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView orderModify(@RequestParam("order_code") String order_code, @ModelAttribute("cri") Criteria cri)
			throws Exception {
		ModelAndView mav = new ModelAndView();
		AdminOrderVO orderVO = adminOrderService.orderDetail(order_code);
		mav.addObject("orderVO", orderVO );
		return mav;
	}
	@Override
	@RequestMapping(value = "/admin/orderUpdate.do", method = RequestMethod.POST)
	public String orderUpdate(AdminOrderVO orderVO, Criteria cri, RedirectAttributes rttr) {
		int update_order = adminOrderService.orderUpdate(orderVO);
		
		if(update_order == 1) {
			rttr.addAttribute("order_code", orderVO.getOrder_code());
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("join_startDate", cri.getJoin_startDate());
		rttr.addAttribute("join_endDate", cri.getJoin_endDate());
		rttr.addAttribute("pay_state2", cri.getPay_state2());
		rttr.addAttribute("u_name2", cri.getU_name2());
		rttr.addAttribute("u_id2", cri.getU_id2());
		rttr.addAttribute("order_code2", cri.getOrder_code2());
		return "redirect:/admin/orderDetail.do";
	}
	
	
}
