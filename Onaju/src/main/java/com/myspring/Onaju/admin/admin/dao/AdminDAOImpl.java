package com.myspring.Onaju.admin.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.admin.admin.vo.AdminVO;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 직원에 관한 DAO
 */

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	private SqlSession sqlSession;
	
	// 관리자 리스트 조회를 위한 DB 접근 DAO
	@Override
	public List<AdminVO> selectAllAdminList(AdminVO vo) throws DataAccessException {
		return sqlSession.selectList("mapper.admin.selectAllAdminList", vo);
	}
	
	// 관리자 모든 직원 수를 구하기 위한 DB 접근 DAO
	@Override
	public int selectAllAdminListTotal(AdminVO vo) throws DataAccessException {
		return sqlSession.selectOne("mapper.admin.selectAllAdminTotal", vo);
	}
	
	// 관리자 직원 삭제를 위한 DB 접근 DAO
	@Override
	public AdminVO selectAdminDetail(String a_id) throws DataAccessException {
		return sqlSession.selectOne("mapper.admin.selectAdminDetail", a_id); 
	}
}
