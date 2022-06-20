package com.myspring.Onaju.host.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

@Component("hostBoardDAO")
public class HostBoardDAOImpl implements HostBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Map<String, Object>> selectAllHostBoardList(Criteria cri) {
		return sqlSession.selectList("mapper.host.board.selectAllHostBoardList", cri);
	}

	@Override
	public int selectAllHostBoardListTotal(Criteria cri) {
		return sqlSession.selectOne("mapper.host.board.selectAllHostBoardListTotal", cri);
	}

	@Override
	public Map<String, Object> selectHostBoardDetail(String notice_code) {
		return sqlSession.selectOne("mapper.host.board.selectHostBoardDetail", notice_code);
	}
}
