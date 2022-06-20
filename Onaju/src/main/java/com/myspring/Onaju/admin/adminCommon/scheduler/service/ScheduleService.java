package com.myspring.Onaju.admin.adminCommon.scheduler.service;

import java.util.List;

import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;
import com.myspring.Onaju.host.hostInfo.vo.HostInfoVO;
import com.myspring.Onaju.host.vo.HostVO;
import com.myspring.Onaju.member.vo.MemberVO;



public interface ScheduleService{
	public List<MemberVO> listMemberScheduler() throws Exception;
	public void deleteMemberScheduler(String u_id) throws Exception;
	public List<HostVO> listHostScheduler() throws Exception;
	public void deleteHostScheduler(String h_id) throws Exception;
	public List<HostInfoVO> listHostInfoScheduler()throws Exception;
	public void deleteHostInfoScheduler(String h_code) throws Exception;
	public List<AdminHostRoomVO> listRoomScheduler() throws Exception;
	public void deleleteRoomScheduler(String room_code) throws Exception;
}
