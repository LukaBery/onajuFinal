package com.myspring.Onaju.admin.adminBoard.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireReplyVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;
import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

public interface AdminBoardController {
	public ModelAndView adminNoticeList(Criteria cri) throws Exception;
	public ModelAndView adminNoticeDetail(@RequestParam("notice_code")String notice_code, @ModelAttribute("cri") Criteria cri) throws Exception;
	public void imgFile(String a_id, String notice_code, HttpServletResponse response) throws Exception;
	public ModelAndView adminNoticeForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView insertNotice(AdminNoticeVO noticeVO, MultipartFile file, HttpServletRequest request) throws Exception;
	public ModelAndView noticeModify(String notice_code, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ResponseEntity<String> imgDelete(Map<String, Object> deleteMap);
	public ModelAndView updateNotice(Map<String, Object> noticeMap, MultipartFile file, Criteria cri) throws Exception;
	public ModelAndView enquireBoardList(Criteria cri) throws Exception;
	public ModelAndView enquireBoardDetail(@RequestParam("enquire_NO")String enquire_NO, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ModelAndView deleteNotice(String notice_code, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ResponseEntity<String> insertEnquireReply(@ModelAttribute("replyVO") AdminEnquireReplyVO replyVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity<List<Map<String, Object>>> ajaxcommentList(AdminEnquireReplyVO replyVO);
	public ResponseEntity<Map<String, Object>> replydelete(Map<String, Object> reMap);
}
