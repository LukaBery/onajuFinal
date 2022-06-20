package com.myspring.Onaju.admin.adminCommon.scheduler.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.myspring.Onaju.admin.adminCommon.scheduler.service.ScheduleService;
import com.myspring.Onaju.member.vo.MemberVO;

@Controller("schedule")
public class AdminScheduler {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private MemberVO schMemVO;
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
	
}
