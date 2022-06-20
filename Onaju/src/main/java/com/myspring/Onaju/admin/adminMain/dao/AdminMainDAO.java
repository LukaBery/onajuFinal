package com.myspring.Onaju.admin.adminMain.dao;

import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.admin.admin.vo.AdminVO;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 메인 DAO
 */

public interface AdminMainDAO {
	public AdminVO adminLogin(Map<String, String> loginMap) throws DataAccessException;
	public String selectAdminOverlappedID(String id) throws DataAccessException;
	public int resultLoginId(String a_id);
	public int resultLoginPw(Map<String, String> loginMap);
}
