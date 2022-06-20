package com.myspring.Onaju.admin.admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.admin.dao.AdminDAO;
import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 직원에 관한 Service
 */
@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminDAO adminDAO;
	
	// 관리자 리스트 조회
	@Override
	public List<Map<String, Object>> adminsList(Criteria cri) {
		return  adminDAO.selectAllAdminList(cri);
	}
	
	// 관리자 직원수 조회 
	@Override
	public int adminListTotal(Criteria cri) {
		return adminDAO.selectAllAdminListTotal(cri);
	}
	// 관리자 직원 삭제
	@Override
	public Map<String, Object> adminDetail(String a_id) {
		return adminDAO.selectAdminDetail(a_id);
	}

	@Override
	public int updateAdmin(Map<String, Object> adminMap) {
		return adminDAO.selectUpdateAdmin(adminMap);
	}
}
