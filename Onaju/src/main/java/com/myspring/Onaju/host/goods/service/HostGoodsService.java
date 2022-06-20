package com.myspring.Onaju.host.goods.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.host.goods.vo.HostGoodsVO;
import com.myspring.Onaju.host.goods.vo.HostImageFileVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;


public interface HostGoodsService {

	public Map<String,List<HostGoodsVO>> listGoods(Map searchMap) throws Exception;
	public Map goodsDetail(String room_code) throws Exception;
	
	
	/* 이정아 작성 */
	public List<HostInfoVO> h_login(String h_id) throws Exception;
	public void addHostInfo(HostInfoVO hostInfoVO) throws Exception;
	public HostInfoVO hostInfoDetail(int room_code) throws Exception;
	public void modifyHostInfo(Map hostInfoMap) throws Exception;
	public void deleteHostInfo(int h_code) throws Exception;
	public int hostInfoListTotal(Criteria cri) throws Exception;
	public List<Map<String, Object>> hostInfoFormlist(Criteria cri) throws Exception;
	public List<HostInfoVO> hostInfoFormlist(HostInfoVO hostInfoVO) throws Exception;
	public Map hostInfoChange(int h_code) throws Exception;
	public int  addNewGoods(Map newGoodsMap) throws Exception;
	public void addNewGoodsImage(List imageFileList) throws Exception;
	public List<HostGoodsVO> selectGoodsList(Criteria cri) throws Exception;
	public int selectGoodsListTotal(Criteria cri) throws Exception ;
	public Map hostGoodsDetail(int room_code) throws Exception;
	public List hostGoodsImageFile(int room_code) throws Exception;
	public void modiHostGoodsInfo(Map goodsMap) throws Exception;
	public void modiHostGoodsImage(List<HostImageFileVO> imageFileList) throws Exception;
	public void addNewHostGoodsImage(List imageFileList) throws Exception;
	public void removeHostGoodsImage(int roomImage_NO) throws Exception;
	public void deleteHostGoodsAllImage(int room_code) throws Exception;
	public void deleteHostGoods(int room_code) throws Exception;
	
}
