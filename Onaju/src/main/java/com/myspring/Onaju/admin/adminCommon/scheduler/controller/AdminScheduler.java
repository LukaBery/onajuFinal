package com.myspring.Onaju.admin.adminCommon.scheduler.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.executor.BatchResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.myspring.Onaju.admin.adminCommon.scheduler.service.ScheduleService;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;
import com.myspring.Onaju.host.hostInfo.vo.HostInfoVO;
import com.myspring.Onaju.host.vo.HostVO;
import com.myspring.Onaju.member.vo.MemberVO;

@Controller("schedule")
public class AdminScheduler {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private MemberVO schMemVO;
	@Autowired
	private HostVO schHostVO;
	@Autowired
	private HostInfoVO schHostInfoVO;
	@Autowired
	private AdminHostRoomVO schRoomVO;
	@Autowired
	private ScheduleService scheduleService;
	
	public void memberSchedule(){
		logger.info("memberSchedule 동작하고 있음 : {}",Calendar.getInstance().getTime());
	}
	
	
	public void listMemberScheduler() throws Exception {
		String batchResult = "성공";
		
			try {
			List<MemberVO> membersList = scheduleService.listMemberScheduler();
			System.out.println(membersList.size());
			if(membersList != null) {
				for(int i = 0; i < membersList.size(); i++) {
					schMemVO = membersList.get(i);
					String u_id = schMemVO.getU_id();
					scheduleService.deleteMemberScheduler(u_id);
				}
			}
			
		}catch(Exception e) {
			batchResult = "실패";
		}
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		logger.info("스케줄 실행:["+batchResult+"]"+dateFormat.format(calendar.getTime()));
	}
	
	public void listHostScheduler() throws Exception{
		String batchResult = "호스트 접근 성공";
		
		try {
			List<HostVO> hostList = scheduleService.listHostScheduler();
			if(hostList != null) {
				for(int i = 0; i < hostList.size(); i++) {
					schHostVO = hostList.get(i);
					String h_id = schHostVO.getH_id();
					scheduleService.deleteHostScheduler(h_id);
				}
			}
		}catch(Exception e) {
			batchResult = "호스트 접근 실패";
		}
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("tttt-MM-dd HH:mm:ss");
		logger.info("호스트 스케줄 실행:["+batchResult+"]" + dateFormat.format(calendar.getTime()));
	}
	
	public void listHostInfoScheduler() throws Exception{
		String batchResult = "호스트 info 접근 성공";
		try {
			List<HostInfoVO> hostInfoList = scheduleService.listHostInfoScheduler();
			if(hostInfoList != null) {
				for(int i = 0; i < hostInfoList.size(); i++) {
					schHostInfoVO = hostInfoList.get(i);
					String h_code = schHostInfoVO.getH_code();
					scheduleService.deleteHostInfoScheduler(h_code);
				}
			}
		}catch(Exception e) {
			batchResult = "호스트 info 접근 실패";
		}
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("tttt-MM-dd HH:mm:ss");
		logger.info("호스트 info 스케줄 실행:["+batchResult+"]" + dateFormat.format(calendar.getTime()));
	}
	
	public void listRoomScheduler() throws Exception{
		String batchResult = "상품 접근 성공";
		try {
			List<AdminHostRoomVO> roomList = scheduleService.listRoomScheduler();
			if(roomList != null) {
				for(int i = 0; i < roomList.size(); i++) {
					schRoomVO = roomList.get(i);
					String room_code = schRoomVO.getRoom_code();
					scheduleService.deleleteRoomScheduler(room_code);
				}
			}
		}catch(Exception e) {
			batchResult = "상품 접근 실패";
		}
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("tttt-MM-dd HH:mm:ss");
		logger.info("상품 스케줄 실행:["+batchResult+"]" + dateFormat.format(calendar.getTime()));
	}
	
}
