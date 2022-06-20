package com.myspring.Onaju.admin.admin.dao;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 직원에 관한 DAO
 */

public interface AdminDAO {
	// 관리자 목록 리스트
	public List<Map<String, Object>> selectAllAdminList(Criteria cri);
	// 관리자 직원 수
	public int selectAllAdminListTotal(Criteria cri);
	// 관리자 직원 삭제
	public Map<String, Object> selectAdminDetail(String a_id);
	
	public int selectUpdateAdmin(Map<String, Object> adminMap);
}
