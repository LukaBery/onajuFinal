package com.myspring.Onaju.host.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.host.vo.HostVO;
import com.myspring.Onaju.member.vo.MemberVO;

@Repository("hostMypageDAO")
public class HostMypageDAOImpl implements HostMypageDAO {
	
	@Autowired 
	private SqlSession sqlSession;
	
	@Override
	public void updateHostMyInfo(Map hostMap) throws DataAccessException {
		sqlSession.update("mapper.hostMypage.updateHostMyInfo", hostMap);
	}
	@Override
	public HostVO selectHostMyDetailInfo(String h_id) throws DataAccessException {
		HostVO hostVO = (HostVO) sqlSession.selectOne("mapper.hostMypage.selectHostMyDetailInfo", h_id);
		return hostVO;
	}
	@Override
	public void insertHostProfile(List fileList) throws DataAccessException {
		for (int i = 0; i < fileList.size(); i++) {
			HostVO profileVO = (HostVO) fileList.get(i);
			sqlSession.update("mapper.hostMypage.insertHostProfile", profileVO);
		}
	}
	
	public void deleteHost(String h_id) throws DataAccessException {
		sqlSession.delete("mapper.hostMypage.deleteHost", h_id);
	}
	

}
