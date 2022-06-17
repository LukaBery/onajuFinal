package com.myspring.Onaju.host.dao;

import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.host.vo.HostVO;


public interface HostDAO {

		public HostVO hostLogin(Map<String, String> loginMap) throws DataAccessException;
		public void insertNewHost(HostVO hostVO) throws DataAccessException;
		public String selectOverlappedH_ID(String h_id) throws DataAccessException;
		public HostVO h_idFind(Map<String, String> loginMap) throws DataAccessException;
		public HostVO h_pwdFind(Map<String, String> loginMap) throws DataAccessException;
		public HostVO h_pwdChange(Map<String, String> loginMap) throws DataAccessException;

	}

