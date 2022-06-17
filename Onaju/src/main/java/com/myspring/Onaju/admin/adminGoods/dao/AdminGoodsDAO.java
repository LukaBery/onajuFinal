package com.myspring.Onaju.admin.adminGoods.dao;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

public interface AdminGoodsDAO {
	public List<Map<String, Object>> selectAllRoomList(Criteria cri);
	public int selectAllRoomTotal(Criteria cri);
	public AdminHostRoomVO selectOneRoomDetail(String room_code);
	public int selectRoomUpdate(AdminHostRoomVO roomVO);
	public int selectRoomDelete(String room_code);
}
