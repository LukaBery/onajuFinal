package com.myspring.Onaju.host.hostInfo.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("hostInfoDAO")
public class HostInfoDAOImpl implements HostInfoDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int selectInsertHostInfo(Map<String, Object> infoMap) {
		return sqlSession.insert("mapper.host.selectInsertHostInfo", infoMap);
	}

}
