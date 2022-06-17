package com.myspring.Onaju.admin.adminCommon.scheduler.dao;

import java.util.List;

import com.myspring.Onaju.member.vo.MemberVO;

public interface ScheduleDAO {
	public List<MemberVO> selectRetireMembers() throws Exception;
	public int deleteRetireMember(String u_id) throws Exception;
}
