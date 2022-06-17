package com.myspring.Onaju.host.mypage.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.Onaju.host.mypage.dao.HostMypageDAO;
import com.myspring.Onaju.host.vo.HostVO;
import com.myspring.Onaju.member.vo.MemberVO;

@Service("hostMypageService")
@Transactional(propagation=Propagation.REQUIRED)
public class HostMypageServiceImpl implements HostMypageService {
	
	@Autowired 
	private HostMypageDAO hostMypageDAO;
	
	public HostVO  modifyHostMyInfo(Map hostMap) throws Exception { 
		 String h_id = (String)hostMap.get("h_id");
		 hostMypageDAO.updateHostMyInfo(hostMap);
		 return hostMypageDAO.selectHostMyDetailInfo(h_id);
		
	}
	@Override
	public void addNewHostProfile(Map newHostMap) throws Exception{
		String h_id = (String) newHostMap.get("h_id");
		 ArrayList<HostVO> imageFileList = (ArrayList) newHostMap.get("imageFileList"); 
		  for (HostVO imageFileVO : imageFileList) { imageFileVO.setH_id(h_id); }
		
		  hostMypageDAO.insertHostProfile(imageFileList);
		
	}
	
	public void removeHost(String h_id) throws Exception {
		hostMypageDAO.deleteHost(h_id);
	}
	

}
