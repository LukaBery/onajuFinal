package com.myspring.Onaju.admin.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.admin.service.AdminService;
import com.myspring.Onaju.admin.admin.vo.AdminVO;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 직원에 관한 Controller
 */

@Controller("adminController")
public class AdminControllerImpl implements AdminController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private AdminVO adminVO ;
	
	// 관리자 리스트 조회
	@Override
	@RequestMapping(value="/admin/adminList.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView adminsList(AdminVO vo,HttpServletRequest request, HttpServletResponse response) throws Exception {
		//String viewName = getViewName(request);
		//String viewName = (String)request.getAttribute("viewName");
		// 총 데이터 개수
		int total = adminService.adminListTotal(vo);
		//(double)12/10 -> ceil 1.2 -> Integer(2.0) ->2
		int totalPage = (int) Math.ceil((double)total/10);
		
		int viewPage = vo.getViewPage();
		int startNO = (viewPage - 1) * 10 + 1;
		int endNO = startNO + (10 - 1);
		
		vo.setStartNO(startNO);
		vo.setEndNO(endNO);
	
		List<AdminVO> adminsList = adminService.adminsList(vo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("total", total);
		mav.addObject("totalPage", totalPage);
		mav.addObject("adminsList", adminsList);
		return mav;
	}
	
	
	// 관리자 상세 정보 조회
	@Override
	@RequestMapping(value="/admin/adminDetail.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView adminDetail(String a_id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		adminVO = adminService.adminDetail(a_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminVO", adminVO);
		return mav;
	}
	
	// 관리자 상세 정보 수정
	@Override
	@RequestMapping(value="/admin/adminModify.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView adminModifyForm(String a_id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		adminVO = adminService.adminDetail(a_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminVO",adminVO);
		return mav;
	}
}
