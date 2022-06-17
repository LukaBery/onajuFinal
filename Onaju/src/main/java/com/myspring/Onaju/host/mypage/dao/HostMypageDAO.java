package com.myspring.Onaju.host.mypage.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.host.vo.HostVO;

public interface HostMypageDAO {
	
	public void updateHostMyInfo(Map hostMap) throws DataAccessException;
	public HostVO selectHostMyDetailInfo(String h_id) throws DataAccessException;
	public void insertHostProfile(List fileList) throws DataAccessException;
	public void deleteHost(String h_id) throws DataAccessException;

}
