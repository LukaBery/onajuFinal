package com.myspring.Onaju.admin.adminCommon.scheduler.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminCommon.scheduler.dao.ScheduleDAO;
import com.myspring.Onaju.member.vo.MemberVO;



@Service("scheduleService")
public class ScheduleServiceImpl implements ScheduleService{
	@Autowired
	private ScheduleDAO scheduleDAO;
	

	
	public List<MemberVO> listMemberScheduler() throws Exception {
		return scheduleDAO.selectRetireMembers();
		
	} 
	
	public void deleteMemberScheduler(String u_id) throws Exception{
		scheduleDAO.deleteRetireMember(u_id);
	}
}