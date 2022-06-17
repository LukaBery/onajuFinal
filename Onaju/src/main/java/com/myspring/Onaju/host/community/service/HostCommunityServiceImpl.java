package com.myspring.Onaju.host.community.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.Onaju.host.community.dao.HostCommunityDAO;
import com.myspring.Onaju.host.community.vo.HostCommunityVO;

@Service("hostCommunityService")
@Transactional(propagation=Propagation.REQUIRED)
public class HostCommunityServiceImpl implements HostCommunityService{
	@Autowired
	private HostCommunityDAO hostCommunityDAO;
	/* 커뮤니티 글 등록시 첫번째 사업장 정보 나오는 페이지 */ 
	@Override
	public List<HostCommunityVO> selectCommunityList(int h_code) throws Exception {
		return hostCommunityDAO.selectCommunityList(h_code);
		
	}
	/* 커뮤니티 글 등록시 두번째 객실번호에 대한 정보 나오는 페이지 */ 
	@Override
	public Map selectCommunityView(int room_code) throws Exception {
		Map goodsMap = new HashMap();
		HostCommunityVO hostCommunityVO=hostCommunityDAO.selectCommunityView(room_code);
		 System.out.println("hostCommunityVO #####: " + hostCommunityVO);
		List imageFileList =hostCommunityDAO.slideView(room_code);
		 goodsMap.put("goods", hostCommunityVO); 
		 goodsMap.put("imageFileList", imageFileList);
		 
		return goodsMap;
	}
	
	@Override
	public List slideView(int room_code) throws Exception{
		List imageList =hostCommunityDAO.slideView(room_code);
		return imageList;
	}
	@Override
	public void addNewCommunity(HostCommunityVO hostCommunityVO) throws Exception{
		System.out.println("hostCommunityVO 서비스 부분#####: " + hostCommunityVO);
		hostCommunityDAO.insertNewCommunity(hostCommunityVO);
	}
	
	@Override
	public List<HostCommunityVO> hostAllCommunityList(String h_id) throws Exception{
		
		return hostCommunityDAO.hostAllCommunityList(h_id);
	}
	
	@Override
	public HostCommunityVO modCommunity(int cmnNum) throws Exception{
		return hostCommunityDAO.modCommunity(cmnNum);
	}
	
	@Override
	public void updateHostCommunity(HostCommunityVO hostCommunityVO)throws Exception{
		hostCommunityDAO.updateHostCommunity(hostCommunityVO);
	}
	
	@Override
	public void deleteHostCommunity(int cmnNum) throws Exception{
		hostCommunityDAO.deleteHostCommunity(cmnNum);
	}

	@Override
	public void addLike(Map likeMap) throws Exception{
		hostCommunityDAO.addLike(likeMap);
	}

	@Override
	public void delLike(Map likeMap) throws Exception{
		hostCommunityDAO.delLike(likeMap);
	}

	@Override
	public String get_likeId(Map likeMap) throws Exception{
		return hostCommunityDAO.get_likeId(likeMap);
	}

	@Override
	public List<HostCommunityVO> comunityList_best(Map searchMap) throws Exception{
		
		return hostCommunityDAO.comunityList_best(searchMap);
	}

	@Override
	public void updateHit(int cmnNum) throws Exception{
		hostCommunityDAO.updateHit(cmnNum);
	}
	@Override
	public String getCnt() throws Exception{
		return hostCommunityDAO.getCnt();
	}
}
