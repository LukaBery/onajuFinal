package com.myspring.Onaju.admin.adminCommon.scheduler.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminCommon.scheduler.dao.ScheduleDAO;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;
import com.myspring.Onaju.host.hostInfo.vo.HostInfoVO;
import com.myspring.Onaju.host.vo.HostVO;
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

	@Override
	public List<HostVO> listHostScheduler() throws Exception {
		return scheduleDAO.selectRetireHost();
	}

	@Override
	public void deleteHostScheduler(String h_id) throws Exception {
		scheduleDAO.deleteRetireHost(h_id);
	}

	@Override
	public List<HostInfoVO> listHostInfoScheduler() throws Exception {
		return scheduleDAO.selectRetireHostInfo();
	}

	@Override
	public void deleteHostInfoScheduler(String h_code) throws Exception {
		scheduleDAO.deleteRetireHostInfo(h_code);
	}

	@Override
	public List<AdminHostRoomVO> listRoomScheduler() throws Exception {
		return scheduleDAO.selectRetireRoom();
	}

	@Override
	public void deleleteRoomScheduler(String room_code) throws Exception {
		scheduleDAO.deleteRetireRoom(room_code);		
	}
}