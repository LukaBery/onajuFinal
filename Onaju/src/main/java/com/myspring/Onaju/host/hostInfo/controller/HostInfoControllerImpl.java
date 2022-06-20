package com.myspring.Onaju.host.hostInfo.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.host.hostInfo.service.HostInfoService;
import com.myspring.Onaju.host.vo.HostVO;


@Controller("hostInfoCotroller")
public class HostInfoControllerImpl implements HostInfoController {
	
	@Autowired
	private HostInfoService hostInfoService;
	
	@Override
	@RequestMapping(value = "/host/insertHostInfo.do", method = RequestMethod.POST)
	public ModelAndView insertHostInfo(@RequestParam Map<String, Object> infoVO, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO)session.getAttribute("hostInfo");
		String h_id = hostVO.getH_id();
		infoVO.put("h_id", h_id);
		
		if( !h_id.equals("") && !h_id.equals(null)) {
			int insert_hostInfo = hostInfoService.insertHostInfo(infoVO);
			
			if(insert_hostInfo == 1) {
				String message = "사업장 등록이 완료되었습니다.";
				mav.addObject("message", message);
				mav.setViewName("/host/goods/hostInfoList");
			}else {
				String message = "사업장 등록이 실패하였습니다.";
				mav.addObject("message", message);
				mav.setViewName("/host/main");
			}	
		}
		return mav;
	}

}
