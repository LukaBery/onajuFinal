package com.myspring.Onaju.host.hostInfo.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.host.hostInfo.dao.HostInfoDAO;

@Service("hostInfoService")
public class HostInfoServiceImpl implements HostInfoService{
	
	@Autowired
	private HostInfoDAO hostInfoDAO;
	
	@Override
	public int insertHostInfo(Map<String, Object> infoVO) {
		return hostInfoDAO.selectInsertHostInfo(infoVO);
	}
	

}
