package com.myspring.Onaju.admin.adminGoods.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminGoods.dao.AdminGoodsDAO;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

@Service("adminGoodsService")
public class AdminGoodsServiceImpl implements AdminGoodsService {
	@Autowired
	private AdminGoodsDAO adminGoodsDAO;
	
	@Override
	public List<Map<String, Object>> roomsList(Criteria cri) {
		return adminGoodsDAO.selectAllRoomList(cri);
	}

	@Override
	public int roomTotal(Criteria cri) {
		return adminGoodsDAO.selectAllRoomTotal(cri);
	}

	@Override
	public AdminHostRoomVO roomDetail(String room_code) {
		return adminGoodsDAO.selectOneRoomDetail(room_code);
	}

	@Override
	public int roomUpdate(AdminHostRoomVO roomVO) {
		return adminGoodsDAO.selectRoomUpdate(roomVO);
	}

	@Override
	public int roomDelete(String room_code) {
		return adminGoodsDAO.selectRoomDelete(room_code);
	}

}
