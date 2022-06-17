package com.myspring.Onaju.admin.adminMain.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.admin.vo.AdminVO;
import com.myspring.Onaju.admin.adminMain.dao.AdminMainDAO;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 메인 Service
 */

@Service("adminMainService")
public class AdminMainServiceImpl implements AdminMainService {
	@Autowired
	private AdminMainDAO adminMainDAO;
	
	// 관리자 로그인
	@Override
	public AdminVO adminLogin(Map<String, String> loginMap) throws Exception {
		return adminMainDAO.adminLogin(loginMap);
	}
	
	// 관리자 아이디 중복 검사
	@Override
	public String adminOverlapped(String id) throws Exception {
		return adminMainDAO.selectAdminOverlappedID(id);
	}

}
