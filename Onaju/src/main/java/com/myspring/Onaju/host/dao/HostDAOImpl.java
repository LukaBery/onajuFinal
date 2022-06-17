package com.myspring.Onaju.host.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.host.vo.HostVO;


@Repository("hostDAO")
	public class HostDAOImpl implements HostDAO{
		@Autowired
		private SqlSession sqlSession;	
		@Override
		public HostVO hostLogin(Map loginMap) throws DataAccessException{
			System.out.println("호스트나와랑");
			HostVO host=(HostVO)sqlSession.selectOne("mapper.host.hostLogin",loginMap);
			   System.out.println(host);
			return host;

		}

		@Override
		public void insertNewHost(HostVO hostVO) throws DataAccessException{
			System.out.println("hostVO나와나와나와나와DAO:"+hostVO);
			sqlSession.insert("mapper.host.insertNewHost",hostVO);
			
		}

		@Override
		public String selectOverlappedH_ID(String h_id) throws DataAccessException {
			String result =  sqlSession.selectOne("mapper.host.selectOverlappedH_ID",h_id);
			return result;
		}
		
		@Override
		public HostVO h_idFind(Map loginMap) throws DataAccessException{
			
			HostVO host=(HostVO)sqlSession.selectOne("mapper.host.h_idFind",loginMap);
			   System.out.println(loginMap);
			return host;

		}
		@Override
		public HostVO h_pwdFind(Map loginMap) throws DataAccessException{
			
			HostVO host=(HostVO)sqlSession.selectOne("mapper.host.h_pwdFind",loginMap);
			   System.out.println(loginMap);
			return host;

		}
		@Override
		public HostVO h_pwdChange(Map loginMap) throws DataAccessException{
			
			HostVO host=(HostVO)sqlSession.selectOne("mapper.host.h_pwdChange",loginMap);
			   System.out.println(loginMap);
			return host;

		}
	}


