package com.myspring.Onaju.admin.admin.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 직원에 관한 Service
 */

public interface AdminService {
	
	// 관리자 리스트 조회
	public List<Map<String, Object>> adminsList(Criteria cri);
	
	// 관리자 직원수 조회
	public int adminListTotal(Criteria cri);
	
	// 관리자 직원 삭제
	public Map<String, Object> adminDetail(String a_id);
	
	public int updateAdmin(Map<String, Object> adminMap);
}
