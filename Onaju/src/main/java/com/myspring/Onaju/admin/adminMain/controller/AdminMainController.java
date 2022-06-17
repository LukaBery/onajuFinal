package com.myspring.Onaju.admin.adminMain.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 메인 Controller
 */

public interface AdminMainController { 
	
	// 관리자 메인 페이지
	public ModelAndView adminHome(HttpServletRequest request, HttpServletResponse response) throws Exception; 
	// 관리자 로그인 폼 이동
	public String adminLoginForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
	// 관리자 로그인
	public ModelAndView adminLogin(@RequestParam Map<String, String> loginMap, HttpServletRequest request, HttpServletResponse response) throws Exception;
	// 관리자 회원 가입
	public String adminJoinForm() throws Exception;
	// 관리자 아이디 중복 검사
	public ResponseEntity<String> adminOverlapped(@RequestParam("id") String id,HttpServletRequest request, HttpServletResponse response) throws Exception;
}
 