package com.myspring.Onaju.admin.adminCommon.scheduler.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.member.vo.MemberVO;

@Repository("scheduleDAO")
public class ScheduleDAOImpl implements ScheduleDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MemberVO> selectRetireMembers() throws Exception {
		return sqlSession.selectList("mapper.member.selectRetireMembers");
	}

	@Override
	public int deleteRetireMember(String u_id) throws Exception {
		return sqlSession.delete("mapper.member.deleteRetireMember", u_id);
	}

}
