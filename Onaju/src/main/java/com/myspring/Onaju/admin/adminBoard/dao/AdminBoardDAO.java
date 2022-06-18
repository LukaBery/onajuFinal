package com.myspring.Onaju.admin.adminBoard.dao;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireReplyVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;
import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

public interface AdminBoardDAO {
	//==========================공지사항==========================
	public List<Map<String,Object>> selectAllNoticeList(Criteria cri);
	public Map<String, Object> selectNoticeDetail(String notice_code);
	public String selectImgFile(Map<String, Object> imgInfoMap);
	public int selectAllNoticeListTotal(Criteria cri);

	public int insertNotice(AdminNoticeVO noticeVO);
	public int insertImgFile(Map<String, Object> imgFile);
	public int selectDeleteNoticeImg(String img_code);
	public List<Map<String, Object>> selectSearchNotice(Map<String, Object> searchMap);
	
	//==========================1대1 게시판==========================
	public List<Map<String, Object>> selectAllEnquireList(Criteria cri);
	public List<Map<String, Object>> selectEnquireDetail(String enquire_NO);
	public int selectAllEnquireListTotal(Criteria cri);

	public void updateHit(String enquire_NO);
	
	//==========================1대1 게시판 댓글==========================
	public int insertEnquireReply(AdminEnquireReplyVO replyVO);
	public List<Map<String, Object>> selectEnquireReplyDetail(AdminEnquireReplyVO replyVO);
	public int updateReplyCheck(AdminEnquireReplyVO replyVO);
}
