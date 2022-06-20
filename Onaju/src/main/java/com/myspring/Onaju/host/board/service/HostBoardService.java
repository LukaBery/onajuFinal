package com.myspring.Onaju.host.board.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

public interface HostBoardService {
	public List<Map<String, Object>> hostBoardList(Criteria cri);
	public int hostNoticeListTotal(Criteria cri);
	public Map<String, Object> noticeDetail(String notice_code);

}
