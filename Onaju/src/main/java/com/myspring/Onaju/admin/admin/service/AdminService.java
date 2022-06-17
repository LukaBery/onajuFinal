package com.myspring.Onaju.admin.admin.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.admin.admin.vo.AdminVO;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 직원에 관한 Service
 */

public interface AdminService {
	
	// 관리자 리스트 조회
	public List<AdminVO> adminsList(AdminVO vo) throws DataAccessException;
	
	// 관리자 직원수 조회
	public int adminListTotal(AdminVO vo) throws Exception;
	
	// 관리자 직원 삭제
	public AdminVO adminDetail(String a_id) throws Exception;
}
