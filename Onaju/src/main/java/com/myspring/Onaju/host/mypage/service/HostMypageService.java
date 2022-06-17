package com.myspring.Onaju.host.mypage.service;

import java.util.Map;

import com.myspring.Onaju.host.vo.HostVO;

public interface HostMypageService {
	
	public HostVO  modifyHostMyInfo(Map hostMap) throws Exception;
	public void addNewHostProfile(Map newHostMap) throws Exception;
	public void removeHost(String h_id) throws Exception;

}
