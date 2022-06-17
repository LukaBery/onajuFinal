package com.myspring.Onaju.admin.adminCommon.scheduler.service;

import java.util.List;

import com.myspring.Onaju.member.vo.MemberVO;



public interface ScheduleService{
	public List<MemberVO> listMemberScheduler() throws Exception;
	public void deleteMemberScheduler(String u_id) throws Exception;
}
