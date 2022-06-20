package com.myspring.Onaju.admin.admin.controller;

import java.util.Map;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 직원에 관한 Controller
 */

public interface AdminController {
	
	// 관리자 리스트 조회
	public ModelAndView adminsList(Criteria cri);
	
	// 관리자 상세 정보 조회
	public ModelAndView adminDetail(String a_id, @ModelAttribute("cri") Criteria cri) throws Exception;
	
	// 관리자 상세 정보 수정
	public ModelAndView adminModifyForm(String a_id, @ModelAttribute("cri") Criteria cri) throws Exception;
	
	public ModelAndView updateAdmin(Map<String, Object> adminMap, @ModelAttribute("cri") Criteria cri);
}
