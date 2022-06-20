package com.myspring.Onaju.host.board.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminCommon.paging.PageVO;
import com.myspring.Onaju.host.board.service.HostBoardService;

@Controller("hostBoardController")
public class HostBoardControllerImpl implements HostBoardController{
	
	@Autowired
	private HostBoardService hostBoardService;
	
	@Override
	@RequestMapping(value = "/host/noticeList.do", method = RequestMethod.GET)
	public ModelAndView hostBoardList(Criteria cri) {
		ModelAndView mav = new ModelAndView();
		
		int total = hostBoardService.hostNoticeListTotal(cri);
		List<Map<String, Object>> noticeList = hostBoardService.hostBoardList(cri);
		mav.addObject("noticeList", noticeList);
		mav.addObject("pageMaker", new PageVO(cri,total));
		
		return mav; 
	}

	@Override
	@RequestMapping(value = "/host/noticeDetail.do", method = RequestMethod.GET)
	public ModelAndView hostBoardDetail(@RequestParam String notice_code, @ModelAttribute("cri") Criteria cri) {
		ModelAndView mav = new ModelAndView();
		Map<String, Object> noticeMap = hostBoardService.noticeDetail(notice_code);
		mav.addObject("noticeMap", noticeMap);
		return mav;
	}

}
