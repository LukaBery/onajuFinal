package com.myspring.Onaju.host.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.host.board.dao.HostBoardDAO;

@Service("hostBoardService")
public class HostBoardServiceImpl implements HostBoardService {

	@Autowired
	private HostBoardDAO hostBoardDAO;
	
	@Override
	public List<Map<String, Object>> hostBoardList(Criteria cri) {
		return hostBoardDAO.selectAllHostBoardList(cri);
	}

	@Override
	public int hostNoticeListTotal(Criteria cri) {
		return hostBoardDAO.selectAllHostBoardListTotal(cri);
	}

	@Override
	public Map<String, Object> noticeDetail(String notice_code) {
		return hostBoardDAO.selectHostBoardDetail(notice_code);
	}
	
	

}
