package com.myspring.Onaju.admin.admin.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.admin.service.AdminService;
import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminCommon.paging.PageVO;

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
	
	// 관리자 리스트 조회
	@Override
	@RequestMapping(value="/admin/adminList.do" ,method = RequestMethod.GET)
	public ModelAndView adminsList(Criteria cri) {
		
		int total = adminService.adminListTotal(cri);
		
		List<Map<String, Object>> adminsList = adminService.adminsList(cri);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminsList", adminsList);
		mav.addObject("pageMaker", new PageVO(cri, total));
		return mav;
	}
	
	
	// 관리자 상세 정보 조회
	@Override
	@RequestMapping(value="/admin/adminDetail.do" ,method = RequestMethod.GET)
	public ModelAndView adminDetail(@RequestParam String a_id, @ModelAttribute("cri") Criteria cri) throws Exception {
		Map<String, Object> adminVO = adminService.adminDetail(a_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminVO", adminVO);
		return mav;
	}
	
	// 관리자 상세 정보 수정
	@Override
	@RequestMapping(value="/admin/adminModify.do" ,method =  RequestMethod.GET)
	public ModelAndView adminModifyForm(@RequestParam String a_id, @ModelAttribute("cri") Criteria cri) throws Exception {
		Map<String, Object> adminVO = adminService.adminDetail(a_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminVO",adminVO);
		return mav;
	}


	@Override
	@RequestMapping(value = "/admin/updateAdmin.do", method = RequestMethod.POST)
	public ModelAndView updateAdmin(@RequestParam Map<String, Object> adminMap, @ModelAttribute("cri") Criteria cri) {
		int update_admin = adminService.updateAdmin(adminMap);
		ModelAndView mav = new ModelAndView();
		String a_id = (String)adminMap.get("a_id");
		if(update_admin == 1) {
			String message = "정보 수정이 완료되었습니다.";
			mav.addObject("adminVO", adminService.adminDetail(a_id));
			mav.addObject("message", message);
		}else {
			String message = "정보 변경이 실패하였습니다.";
			mav.addObject("adminVO", adminService.adminDetail(a_id));
			mav.addObject("message", message);
		}
		
		mav.setViewName("/admin/adminDetail");
		
		return mav;
	}
}
