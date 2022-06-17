package com.myspring.Onaju.admin.adminBoard.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireReplyVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;
import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

@Repository("adminBoardDAO")
public class AdminBoardDAOImpl implements AdminBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	//==========================공지사항==========================
	@Override
	public List<Map<String,Object>> selectAllNoticeList(Criteria cri) {
		return sqlSession.selectList("mapper.admin.board.selectAllNoticeList", cri);
	}
	
	@Override
	public Map<String, Object> selectNoticeDetail(String notice_code) {
		return sqlSession.selectOne("mapper.admin.board.selectNoticeDetail", notice_code);
	}
	
	@Override
	public String selectImgFile(Map<String, Object> imgInfoMap) {
		return sqlSession.selectOne("mapper.admin.board.selectImgFile", imgInfoMap);
	}
	
	@Override
	public int selectAllNoticeListTotal(Criteria cri) {
		return sqlSession.selectOne("mapper.admin.board.selectAllNoticeTotal", cri);
	}
	
	@Override
	public int insertNotice(AdminNoticeVO noticeVO) {
		return sqlSession.insert("mapper.admin.board.insertNotice", noticeVO);
	}

	@Override
	public int insertImgFile(Map<String, Object> imgFile) {
		return sqlSession.insert("mapper.admin.board.insertImgFile", imgFile);
	}

	@Override
	public List<Map<String, Object>> selectSearchNotice(Map<String, Object> searchMap) {
		return sqlSession.selectList("mapper.admin.board.selectSearchNotice", searchMap);
	}
	
	

	//==========================1대1 게시판==========================
	@Override
	public List<Map<String, Object>> selectAllEnquireList(Criteria cri) {
		return sqlSession.selectList("mapper.admin.board.selectAllEnquireList", cri);
	}

	@Override
	public List<Map<String, Object>> selectEnquireDetail(String enquire_NO) {
		return sqlSession.selectList("mapper.admin.board.selectEnquireDetail", enquire_NO);
	}

	@Override
	public void updateHit(String enquire_NO) {
		sqlSession.update("mapper.admin.board.updateHit", enquire_NO);	
	}
	
	@Override
	public int selectAllEnquireListTotal(Criteria cri) {
		return sqlSession.selectOne("mapper.admin.board.selectAllEnquireListTotal", cri);
	}
	


	//==========================1대1 게시판 댓글==========================
	@Override
	public int insertEnquireReply(AdminEnquireReplyVO replyVO) {
		return sqlSession.insert("mapper.admin.board.insertEnquireReply", replyVO);
	}

	@Override
	public List<Map<String, Object>> selectEnquireReplyDetail(AdminEnquireReplyVO replyVO) {
		return sqlSession.selectList("mapper.admin.board.selectEnquireReplyDetail", replyVO);	
	}

	@Override
	public int updateReplyCheck(AdminEnquireReplyVO replyVO) {
		return sqlSession.update("mapper.admin.board.updateReplyCheck", replyVO);
	}

	

	

  
}
