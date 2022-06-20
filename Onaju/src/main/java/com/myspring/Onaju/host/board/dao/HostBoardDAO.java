package com.myspring.Onaju.host.board.dao;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;

public interface HostBoardDAO {
	public List<Map<String, Object>> selectAllHostBoardList(Criteria cri);
	public int selectAllHostBoardListTotal(Criteria cri);
	public Map<String, Object> selectHostBoardDetail(String notice_code);

}
