package com.myspring.Onaju.host.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.host.dao.HostDAO;
import com.myspring.Onaju.host.vo.HostVO;



	@Service("hostService")
	public class HostServiceImpl implements HostService{
		@Autowired
		private HostDAO hostDAO;
		@Override
		public HostVO h_login(Map loginMap) throws Exception{
			
			System.out.println("호스트다");
			return hostDAO.hostLogin(loginMap);
		}

		@Override
		public void addHost(HostVO hostVO) throws Exception{
			hostDAO.insertNewHost(hostVO);
			System.out.println("호스트다 서비스"+hostVO);
		}
		
		@Override
		public String overlappedH_id(String h_id) throws Exception{
			return hostDAO.selectOverlappedH_ID(h_id);
		}
		
		@Override
		public HostVO h_idFind(Map loginMap) throws Exception{
			return hostDAO.h_idFind(loginMap);
		
		}

		@Override
		public HostVO h_pwdFind(Map loginMap) throws Exception{
			return hostDAO.h_pwdFind(loginMap);
		
		}

		@Override
		public HostVO h_pwdChange(Map loginMap) throws Exception{
			return hostDAO.h_pwdChange(loginMap);
		
		}
}
