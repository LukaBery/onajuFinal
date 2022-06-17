package com.myspring.Onaju.host.service;

import java.util.Map;

import com.myspring.Onaju.host.vo.HostVO;


public interface HostService {
	public HostVO h_login(Map loginMap) throws Exception;
	public void addHost(HostVO hostVO) throws Exception;
	public String overlappedH_id(String h_id) throws Exception;
	public HostVO h_idFind(Map loginMap) throws Exception;
	public HostVO h_pwdFind(Map loginMap) throws Exception;
	public HostVO h_pwdChange(Map loginMap) throws Exception;
}
