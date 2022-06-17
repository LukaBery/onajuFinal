package com.myspring.Onaju.host.reservation.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.host.reservation.service.ReservationService;
import com.myspring.Onaju.host.reservation.vo.ReservationVO;
import com.myspring.Onaju.host.vo.HostVO;


@Controller("reservationController")
@RequestMapping(value = "/host/reservation")
public class ReservationControllerImpl extends BaseController implements ReservationController{
	@Autowired
	private ReservationVO reservationVO;
	@Autowired
	private ReservationService reservationService;
	
	/* 예약 목록 나오는 페이지 */
	@Override
	@RequestMapping(value = "/hostReservationList.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView hostReservationList(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		System.out.println("컨트롤러 viewName : " + viewName);

		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("hostVO의 h_id : " + h_id);

		List<ReservationVO> hostReservationList = reservationService.hostReservationList(h_id);
		mav.addObject("hostReservationList", hostReservationList);
		System.out.println("hostReservationList####### " + hostReservationList);
		return mav;
	}

	/* 승인 여부 DB저장 */
	@Override
	@RequestMapping(value = "/modifyReservationState.do", method = { RequestMethod.POST, RequestMethod.GET })
		public ResponseEntity modifyReservationState(@RequestParam Map<String, String> stateMap, HttpServletRequest request, HttpServletResponse response)  throws Exception {
			
		reservationService.modifyReservationState(stateMap);
			String message = null;
			ResponseEntity resEntity = null;
			HttpHeaders responseHeaders = new HttpHeaders();
			message  = "mod_success";
			resEntity =new ResponseEntity(message, responseHeaders, HttpStatus.OK);
			return resEntity;
			
			}
	
	/* 취소 및 환불 목록 나오는 페이지 */
	@Override
	@RequestMapping(value = "/cancelReservationList.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView cancelReservationList(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		System.out.println("컨트롤러 viewName : " + viewName);

		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("hostVO의 h_id : " + h_id);

		List<ReservationVO> cancelReservationList = reservationService.cancelReservationList(h_id);
		mav.addObject("cancelReservationList", cancelReservationList);
		System.out.println("cancelReservationList####### " + cancelReservationList);
		return mav;
	}
	
	/*승인 목록 나오는 페이지 */
	@Override
	@RequestMapping(value = "/approveReservationList.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView approveReservationList(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		System.out.println("컨트롤러 viewName : " + viewName);

		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("hostVO의 h_id : " + h_id);

		List<ReservationVO> approveReservationList = reservationService.approveReservationList(h_id);
		mav.addObject("approveReservationList", approveReservationList);
		System.out.println("approveReservationList####### " + approveReservationList);
		return mav;
	}
	
}
