package com.myspring.Onaju.admin.adminMain.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.admin.vo.AdminVO;
import com.myspring.Onaju.admin.adminMain.service.AdminMainService;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 메인 Controller
 */

 @Controller("adminMainController") 
 public class AdminMainControllerImpl implements AdminMainController {
	 @Autowired
	 private AdminMainService adminMainService;
	 @Autowired
	 private AdminVO adminVO;
	
	 // 관리자 메인 페이지
	 @RequestMapping(value = "/admin/main.do", method = {RequestMethod.GET,RequestMethod.POST}) 
	 public ModelAndView adminHome(HttpServletRequest request, HttpServletResponse response) throws Exception { 
		 ModelAndView mav =new ModelAndView(); 
		 String viewName = (String)request.getAttribute("viewName"); 
		 mav.setViewName(viewName); 
		 return mav; 
	}
	 
	// 관리자 로그인 폼 이동
	@Override
	@RequestMapping(value = "/admin/loginForm.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminLoginForm(HttpServletRequest request, HttpServletResponse response) throws Exception {	
		return "/admin/main/loginForm";
	}

	// 관리자 로그인
	@Override
	@RequestMapping(value="/admin/adminLogin.do", method = RequestMethod.POST)
	public ModelAndView adminLogin(@RequestParam Map<String, String> loginMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		adminVO = adminMainService.adminLogin(loginMap); //DB에 있는 관리자 정보를 불러옴
		String a_id = adminVO.getA_id(); //불러온 VO에서 ID만 추출
		String msg; //세션 시간 설정을 위한 변수
		if(adminVO != null && a_id != null && adminVO.getA_pw().equals(loginMap.get("a_pw"))){
			HttpSession session = request.getSession();
			String action = (String)session.getAttribute("action");
					
			if(action != null){
				session.setAttribute("isLogOn", "admin");
				session.setAttribute("adminInfo", adminVO);
				session.setMaxInactiveInterval(3000);
				msg = "1";
				mav.addObject("msg", msg);
				mav.setViewName(action);
			}else{
				session.setAttribute("isLogOn", "admin");
				session.setAttribute("adminInfo", adminVO);
				session.setMaxInactiveInterval(3000);
				msg = "3";
				mav.addObject("msg", msg);
				mav.setViewName("redirect:/admin/main.do");	
			}
				
		}else{
			String message="아이디 또는 비밀번호가 잘못됐습니다.";
			mav.addObject("message", message);
			mav.setViewName("/admin/main/loginForm");
		}
		return mav;
	}
	
	// 관리자 회원 가입
	@Override
	@RequestMapping(value = "/admin/joinForm.do", method = RequestMethod.GET)
	public String adminJoinForm() throws Exception {
		return "/admin/main/joinForm";
	}

	// 관리자 아이디 중복 검사
	@Override
	@RequestMapping(value="/admin.overlapped.do", method = RequestMethod.POST)
	public ResponseEntity<String> adminOverlapped(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ResponseEntity<String> resEntity = null;
		String result = adminMainService.adminOverlapped(id);
		resEntity =new ResponseEntity<String>(result, HttpStatus.OK);
		return resEntity;	
	}	
}
