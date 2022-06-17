package com.myspring.Onaju.admin.adminHost.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;

public interface AdminHostService {
	//==========================================호스트 관련 메서드==========================================
	public List<Map<String, Object>> listAllHost(Criteria cri);
	public int hostListTotal(Criteria cri);
	public AdminHostVO hostDetail(String h_id);
	public int updateHost (AdminHostVO hostVO);
	public int deleteHost (String h_id);
	
	//==========================================사업장 관련 메서드==========================================
	public List<Map<String, Object>> listAllHostInfo(Criteria cri);	
	public int hostInfoListTotal(Criteria cri);
	public AdminHostInfoVO hostInfoDetail(String h_code);
	public int updateHostInfo (AdminHostInfoVO hostInfoVO);
	public int deleteHostInfo (String h_code);
	
}
