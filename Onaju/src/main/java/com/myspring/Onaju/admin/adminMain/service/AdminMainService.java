package com.myspring.Onaju.admin.adminMain.service;

import java.util.Map;

import com.myspring.Onaju.admin.admin.vo.AdminVO;

public interface AdminMainService {
	public AdminVO adminLogin(Map<String, String> loginMap) throws Exception;
	public String adminOverlapped(String id) throws Exception;
}
