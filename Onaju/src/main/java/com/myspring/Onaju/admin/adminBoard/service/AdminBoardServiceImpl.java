package com.myspring.Onaju.admin.adminBoard.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminBoard.dao.AdminBoardDAO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireReplyVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;
import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

@Service("adminBoardService")
public class AdminBoardServiceImpl implements AdminBoardService {
	
	@Autowired
	private AdminBoardDAO adminBoardDAO;
	
	@Override
	public List<Map<String,Object>> noticeList(Criteria cri) throws Exception {
		return  adminBoardDAO.selectAllNoticeList(cri);
	}
	
	@Override
	public Map<String, Object> noticeDetail(String notice_code) throws Exception {
		return adminBoardDAO.selectNoticeDetail(notice_code);
	}
	
	@Override
	public String getImgFile(Map<String, Object> imgInfoMap) throws Exception {
		return adminBoardDAO.selectImgFile(imgInfoMap);
	}
	
	@Override
	public int noticeListTotal(Criteria cri) {
		return adminBoardDAO.selectAllNoticeListTotal(cri);
	}
	
	@Override
	public int insertNotice(AdminNoticeVO noticeVO) throws Exception {		
		return adminBoardDAO.insertNotice(noticeVO);
	}

	@Override
	public int insertImgFile(Map<String, Object> imgFile) throws Exception {
		return adminBoardDAO.insertImgFile(imgFile);
	}

	@Override
	public List<Map<String, Object>> searchNotice(Map<String, Object> searchMap) {
		return adminBoardDAO.selectSearchNotice(searchMap);
	}

	
	
	
	@Override
	public List<Map<String, Object>> enquireBoardList(Criteria cri) {
		return adminBoardDAO.selectAllEnquireList(cri);
	}

	@Override
	public List<Map<String, Object>> enquireBoardDetail(String enquire_NO) {
		return adminBoardDAO.selectEnquireDetail(enquire_NO);
	}
	
	@Override
	public int enquireListTotal(Criteria cri) {
		return adminBoardDAO.selectAllEnquireListTotal(cri);
	}

	@Override
	public void updateHit(String enquire_NO) {
		adminBoardDAO.updateHit(enquire_NO);	
	}
	
	
	

	@Override
	public int insertEnquireReply(AdminEnquireReplyVO replyVO) {
		return adminBoardDAO.insertEnquireReply(replyVO);
	}

	@Override
	public List<Map<String, Object>> enquireReplyDetail(AdminEnquireReplyVO replyVO) {
		return adminBoardDAO.selectEnquireReplyDetail(replyVO);
	}

	@Override
	public int updateReplyCheck(AdminEnquireReplyVO replyVO) {
		return adminBoardDAO.updateReplyCheck(replyVO);
	}

	@Override
	public int deleteNoticeImg(String img_code) {
		return adminBoardDAO.selectDeleteNoticeImg(img_code);
	}



}
