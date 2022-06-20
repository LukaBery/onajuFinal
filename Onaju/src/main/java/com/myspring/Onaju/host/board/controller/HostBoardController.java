package com.myspring.Onaju.host.board.controller;

import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

public interface HostBoardController {
	public ModelAndView hostBoardList(Criteria cri);
	public ModelAndView hostBoardDetail(String notice_code, Criteria cri);
}
