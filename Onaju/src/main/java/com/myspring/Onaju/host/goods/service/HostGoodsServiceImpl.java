package com.myspring.Onaju.host.goods.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.host.goods.dao.HostGoodsDAO;
import com.myspring.Onaju.host.goods.vo.HostGoodsVO;
import com.myspring.Onaju.host.goods.vo.HostImageFileVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;


@Service("hostGoodsService")
@Transactional(propagation=Propagation.REQUIRED)
public class HostGoodsServiceImpl implements HostGoodsService{
	@Autowired
	private HostGoodsDAO goodsDAO;

	public Map<String,List<HostGoodsVO>> listGoods(Map searchMap) throws Exception {
		Map<String,List<HostGoodsVO>> goodsMap=new HashMap<String,List<HostGoodsVO>>();
		System.out.println("서비스 들어옴");

		List<HostGoodsVO> goodsList=goodsDAO.selectGoodsList(searchMap);
		System.out.println("다오끝");

		goodsMap.put("goodsList",goodsList);
	
		return goodsMap;
	}


	public Map goodsDetail(String room_code) throws Exception {
		Map hostgoodsMap=new HashMap();
		HostGoodsVO hostgoodsVO = goodsDAO.selectGoodsDetail(room_code);
		hostgoodsMap.put("goodsVO", hostgoodsVO);
		
		 List<HostImageFileVO> imageList =goodsDAO.selectGoodsDetailImage(room_code);
		 hostgoodsMap.put("imageList", imageList);
		
		return hostgoodsMap;
	}
	
	
	/* 이정아 작성 */
	/* 사업자 관련 */ 
	
	@Override
	public List<HostInfoVO> h_login(String h_id) throws Exception{
		return goodsDAO.hostLogin(h_id);	
	}
	@Override
	public void addHostInfo(HostInfoVO hostInfoVO) throws Exception{
		goodsDAO.insertNewHostInfo(hostInfoVO);
	}	
	@Override
	public int hostInfoListTotal(Criteria cri) throws Exception {	
		return goodsDAO.selectAllhostInfoListTotal(cri);
	}
	
	@Override
	public List<Map<String, Object>> hostInfoFormlist(Criteria cri) throws Exception{
		return goodsDAO.hostInfoFormlist(cri);
	}
	@Override
	public List<HostInfoVO> hostInfoFormlist(HostInfoVO hostInfoVO) throws Exception{
		return goodsDAO.hostInfoFormlist(hostInfoVO);
	}
	@Override
	public HostInfoVO hostInfoDetail(int h_code) throws Exception {
		return goodsDAO.hostInfoDetail(h_code);
	}	
	
	@Override
	public void modifyHostInfo(Map hostInfoMap) throws Exception{
		System.out.println("서비스의 hostInfoMap : " + hostInfoMap);
		goodsDAO.updateHostInfo(hostInfoMap);
		
	}
	
	@Override
	public void deleteHostInfo(int h_code) throws Exception {
		goodsDAO.deleteHostInfo(h_code);
	}
	
	@Override
	public Map hostInfoChange(int h_code) throws Exception {
		Map hostInfoMap = new HashMap();
		HostInfoVO hostInfoVO = goodsDAO.hostInfoChange(h_code);
		hostInfoMap.put("hostInfoVO", hostInfoVO);
		
		return hostInfoMap;
	}
	@Override
	public int addNewGoods(Map newGoodsMap) throws Exception {
		int room_code = goodsDAO.insertNewGoods(newGoodsMap);

		ArrayList<HostImageFileVO> imageFileList = (ArrayList) newGoodsMap.get("imageFileList");
		for (HostImageFileVO hostImageFileVO : imageFileList) {
			hostImageFileVO.setRoom_code(room_code);
		}
		goodsDAO.insertGoodsImageFile(imageFileList);

		System.out.println(room_code);
		return room_code;
	}
	@Override
	public void addNewGoodsImage(List imageFileList) throws Exception{
		
		goodsDAO.insertGoodsImageFile(imageFileList);
	}	
	@Override
	public List<HostGoodsVO> selectGoodsList(Criteria cri) throws Exception{
		return goodsDAO.selectGoodsList(cri);
	}
	@Override
	public int selectGoodsListTotal(Criteria cri) throws Exception {	
		return goodsDAO.selectGoodsListTotal(cri);
	}
	@Override
	public Map hostGoodsDetail(int room_code) throws Exception {
		Map goodsMap = new HashMap();
		HostGoodsVO hostGoodsVO = goodsDAO.selectHostGoodsDetail(room_code);
		List imageFileList = goodsDAO.selectHostGoodsImageFileList(room_code);
		goodsMap.put("goods", hostGoodsVO);
		goodsMap.put("imageFileList", imageFileList);
		return goodsMap;
	}
	
	@Override
	public List hostGoodsImageFile(int room_code) throws Exception{
		List imageList = goodsDAO.selectHostGoodsImageFileList(room_code);
		return imageList;
	}

	@Override
	public void modiHostGoodsInfo(Map goodsMap) throws Exception{
		System.out.println("서비스의 goodsMap : " + goodsMap);
		goodsDAO.updateHostGoodsInfo(goodsMap);
		
	}	
	@Override
	public void modiHostGoodsImage(List<HostImageFileVO> imageFileList) throws Exception{
		goodsDAO.updateHostGoodsImage(imageFileList); 
	}
	@Override
	public void addNewHostGoodsImage(List imageFileList) throws Exception{
		goodsDAO.insertHostGoodsImageFile(imageFileList);
	}
	
	@Override
	public void removeHostGoodsImage(int roomImage_NO) throws Exception{
		goodsDAO.deleteHostGoodsImage(roomImage_NO);
	}
	@Override
	public void deleteHostGoodsAllImage(int room_code) throws Exception {
		goodsDAO.deleteHostGoodsAllImage(room_code);
		
	}
	@Override
	public void deleteHostGoods(int room_code) throws Exception {
		goodsDAO.deleteHostGoods(room_code);
	}

}
