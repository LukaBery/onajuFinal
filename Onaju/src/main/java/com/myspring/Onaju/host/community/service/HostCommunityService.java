package com.myspring.Onaju.host.community.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.host.community.vo.HostCommunityVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;

public interface HostCommunityService {
	public Map selectCommunityView(int room_code) throws Exception;
	public List<HostCommunityVO> selectCommunityList(int h_code) throws Exception;
	public List slideView(int room_code) throws Exception;
	public void addNewCommunity(HostCommunityVO hostCommunityVO) throws Exception;
	public List<HostCommunityVO> hostAllCommunityList(String h_id) throws Exception;
	public HostCommunityVO modCommunity(int cmnNum) throws Exception;
	public void deleteHostCommunity(int cmnNum) throws Exception;
	public void updateHostCommunity(HostCommunityVO hostCommunityVO) throws Exception;
	
	
	
	public void addLike(Map likeMap) throws Exception;
	public void delLike(Map likeMap) throws Exception;
	public String get_likeId(Map likeMap) throws Exception;
	public List<HostCommunityVO> comunityList_best(Map searchMap) throws Exception;
	public void updateHit(int cmnNum) throws Exception;
	public String getCnt() throws Exception;

}
