package com.myspring.Onaju.admin.adminHost.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;


@Repository("adminHostDAO")
public class AdminHostDAOImpl implements AdminHostDAO{
	@Autowired
	private SqlSession sqlSession;
	
	
	//==========================================호스트 관련 메서드==========================================
	@Override
	public List<Map<String, Object>> selectAllHostList(Criteria cri) {
		return sqlSession.selectList("mapper.admin.host.selectAllHostList", cri);	
	}

	@Override
	public int selectAllHostListTotal(Criteria cri) {
		return sqlSession.selectOne("mapper.admin.host.selectAllHostTotal",cri);
	}

	@Override
	public AdminHostVO selectHostDetail(String h_id) {
		return sqlSession.selectOne("mapper.admin.host.selectHostDetail", h_id);
	}

	@Override
	public int selectUpdateHost(AdminHostVO hostVO) {
		return sqlSession.update("mapper.admin.host.selectUpdateHost", hostVO);
	}

	@Override
	public int selectDeleteHost(String h_id) {
		return sqlSession.update("mapper.admin.host.selectDeleteHost", h_id);
	}

	
	//==========================================사업장 관련 메서드==========================================
	@Override
	public List<Map<String, Object>> selectAllHostInfoList(Criteria cri) {
		return sqlSession.selectList("mapper.admin.host.selectAllHostInfoList", cri);
	}
	
	@Override
	public int selectAllHostInfoListTotal(Criteria cri) {
		return sqlSession.selectOne("mapper.admin.host.selectAllHostInfoTotal", cri);
	}
	
	@Override
	public AdminHostInfoVO selectHostInfoDetail(String h_code) {
		return sqlSession.selectOne("mapper.admin.host.selectHostInfoDetail", h_code);
	}

	@Override
	public int selectUpdateHostInfo(AdminHostInfoVO hostInfoVO) {
		return sqlSession.update("mapper.admin.host.selectUpdateHostInfo", hostInfoVO);
	}

	@Override
	public int selectDeleteHostInfo(String h_code) {
		return sqlSession.update("mapper.admin.host.selectDeleteHostInfo", h_code);
	}
	
	
}
