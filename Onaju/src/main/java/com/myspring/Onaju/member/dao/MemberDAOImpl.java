package com.myspring.Onaju.member.dao;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.host.goods.vo.HostImageFileVO;
import com.myspring.Onaju.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	private SqlSession sqlSession;	
	@Override
	public MemberVO login(Map loginMap) throws DataAccessException{
	
		MemberVO member=(MemberVO)sqlSession.selectOne("mapper.member.login",loginMap);
		   System.out.println(loginMap);
		   return member;

	}

	@Override
	public void insertNewMember(MemberVO memberVO) throws DataAccessException{
		sqlSession.insert("mapper.member.insertNewMember",memberVO);
	}

	@Override
	public String selectOverlappedID(String id) throws DataAccessException {
		String result =  sqlSession.selectOne("mapper.member.selectOverlappedID",id);
		return result;
	}
	@Override
	public MemberVO idFind(Map loginMap) throws DataAccessException{
		
		MemberVO member=(MemberVO)sqlSession.selectOne("mapper.member.idFind",loginMap);
		   System.out.println(loginMap);
		return member;

	}
	@Override
	public MemberVO pwdFind(Map loginMap) throws DataAccessException{
		
		MemberVO member=(MemberVO)sqlSession.selectOne("mapper.member.pwdFind",loginMap);
		   System.out.println(loginMap);
		return member;

	}
	@Override
	public MemberVO pwdChange(Map loginMap) throws DataAccessException{
		
		MemberVO member=(MemberVO)sqlSession.selectOne("mapper.member.pwdChange",loginMap);
		   System.out.println(loginMap);
		return member;

	}
	@Override
	public void insertUserProfile(List fileList) throws DataAccessException {
		for (int i = 0; i < fileList.size(); i++) {
			MemberVO profileVO = (MemberVO) fileList.get(i);
			sqlSession.update("mapper.member.insertUserProfile", profileVO);
		}
	}
}
