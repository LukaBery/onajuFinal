package com.myspring.Onaju.board.cs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireVO;
import com.myspring.Onaju.admin.adminCommon.paging.vo.Criteria;

public interface CSController {
	public ModelAndView qnaList(Criteria cri) throws Exception ;
	public ModelAndView noticeBoard(Criteria cri) throws Exception;
	public ModelAndView noticeDetail(String notice_code) throws Exception;
	public ModelAndView enquireDetail(AdminEnquireVO enquireVO) throws Exception;
	

}
