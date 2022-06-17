package com.myspring.Onaju.admin.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.admin.vo.AdminVO;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 직원에 관한 Controller
 */

public interface AdminController {
	
	// 관리자 리스트 조회
	public ModelAndView adminsList(AdminVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	// 관리자 상세 정보 조회
	public ModelAndView adminDetail(String a_id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	// 관리자 상세 정보 수정
	public ModelAndView adminModifyForm(String a_id,HttpServletRequest request, HttpServletResponse response) throws Exception;
}
