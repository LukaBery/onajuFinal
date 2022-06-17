package com.myspring.Onaju.admin.adminGoods.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

public interface AdminGoodsService {
	public List<Map<String, Object>> roomsList(Criteria cri);
	public int roomTotal(Criteria cri);
	public AdminHostRoomVO roomDetail(String room_code);
	public int roomUpdate(AdminHostRoomVO roomVO);
	public int roomDelete(String room_code);
}
