package com.myspring.Onaju.board.cs.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminBoard.service.AdminBoardService;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireReplyVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireVO;
import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminCommon.paging.PageVO;
import com.myspring.Onaju.common.base.BaseController;

@Controller("csController")
@RequestMapping(value = "/cs")
public class CSControllerImpl extends BaseController implements CSController{
	@Autowired
	AdminBoardService adminBoardService;
	
	
	@Override
	@RequestMapping(value = "/qnaList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView qnaList(Criteria cri) throws Exception {
		ModelAndView mav = new ModelAndView();

		int total = adminBoardService.enquireListTotal(cri);
		List<Map<String, Object>> enquireList = adminBoardService.enquireBoardList(cri);
		mav.addObject("enquireList", enquireList);
		mav.addObject("pageMaker", new PageVO(cri, total));
		mav.setViewName("/customerService/qnaList");

		return mav;
	}
	
	@Override
	@RequestMapping(value = "/noticeBoard.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView noticeBoard(Criteria cri) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		int total = adminBoardService.noticeListTotal(cri);
		List<Map<String, Object>> noticeList = adminBoardService.noticeList(cri);
		mav.addObject("noticeList", noticeList);
		mav.addObject("pageMaker", new PageVO(cri,total));
		mav.setViewName("/customerService/noticeBoard");

		return mav; 
	}
	@Override
	@RequestMapping(value = "/noticeDetail.do", method = RequestMethod.GET)
	public ModelAndView noticeDetail(String notice_code) throws Exception {
	
		ModelAndView mav = new ModelAndView("/admin/noticeDetail.do");
		Map<String, Object> noticeMap = adminBoardService.noticeDetail(notice_code);
		mav.addObject("noticeMap", noticeMap);
		mav.setViewName("/customerService/noticeDetail");

		return mav;
	}

	@Override
	@RequestMapping(value = "/enquireDetail.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView enquireDetail(AdminEnquireVO enquireVO) throws Exception {
		String enquire_NO = enquireVO.getEnquire_NO();

		adminBoardService.updateHit(enquire_NO);
		
		ModelAndView mav = new ModelAndView();
		List<Map<String, Object>> enquireDetail = adminBoardService.enquireBoardDetail(enquire_NO);
		AdminEnquireReplyVO replyVO = new AdminEnquireReplyVO();
		replyVO.setEnquire_NO(enquire_NO);
		List<Map<String, Object>> replysList = adminBoardService.enquireReplyDetail(replyVO);
		int replyLength = replysList.size();
		mav.addObject("replyLength", replyLength);
		mav.addObject("replysList", replysList);
		mav.addObject("enquireDetail", enquireDetail);
		mav.setViewName("/customerService/qnaDetail");

		return mav;
	}
}
