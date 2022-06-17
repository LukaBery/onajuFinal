package com.myspring.Onaju.admin.adminHost.dao;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;



public interface AdminHostDAO {
	
	//==========================================호스트 관련 메서드==========================================
	public List<Map<String, Object>> selectAllHostList(Criteria cri);
	public int selectAllHostListTotal(Criteria cri);
	public AdminHostVO selectHostDetail(String h_id);
	public int selectUpdateHost(AdminHostVO hostVO);
	public int selectDeleteHost(String h_id);
	
	
	//==========================================사업장 관련 메서드==========================================
	public List<Map<String, Object>> selectAllHostInfoList(Criteria cri);
	public int selectAllHostInfoListTotal(Criteria cri);
	public AdminHostInfoVO selectHostInfoDetail(String h_id);
	public int selectUpdateHostInfo(AdminHostInfoVO hostInfoVO);
	public int selectDeleteHostInfo(String h_code);
	
}
