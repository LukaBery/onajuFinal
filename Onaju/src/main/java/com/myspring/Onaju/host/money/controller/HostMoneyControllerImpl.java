package com.myspring.Onaju.host.money.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.host.community.vo.HostCommunityVO;
import com.myspring.Onaju.host.money.service.HostMoneyService;
import com.myspring.Onaju.host.money.vo.HostMoneyVO;
import com.myspring.Onaju.host.reservation.service.ReservationService;
import com.myspring.Onaju.host.reservation.vo.ReservationVO;
import com.myspring.Onaju.host.vo.HostVO;

@Controller("hostMoneyController")
@RequestMapping(value = "/host/money")
public class HostMoneyControllerImpl extends BaseController implements HostMoneyController{
	@Autowired
	private HostMoneyVO hostMoneyVO;
	@Autowired
	private HostMoneyService hostMoneyService;
	
	/*매출 목록 나오는 페이지 */
	@Override
	@RequestMapping(value = "/hostSalesAllList.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView hostSalesAllList(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		System.out.println("컨트롤러 viewName : " + viewName);

		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("hostVO의 h_id : " + h_id);

		List<HostMoneyVO> hostSalesAllList = hostMoneyService.hostSalesAllList(h_id);
		mav.addObject("hostSalesAllList", hostSalesAllList);
		System.out.println("hostSalesAllList####### " + hostSalesAllList);
		return mav;
	}
}
