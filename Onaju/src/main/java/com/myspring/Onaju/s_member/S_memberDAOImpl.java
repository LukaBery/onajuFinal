package com.myspring.Onaju.s_member;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("s_memberDAO")
public class S_memberDAOImpl  implements S_memberDAO{
	@Autowired
	private SqlSession sqlSession;	
	
	@Override
	public void kakaoinsert(HashMap<String, Object> userInfo) {
		sqlSession.insert("mapper.s_member.kakaoInsert",userInfo);
	}
	
	@Override
	public void naverinsert(HashMap<String, Object> userInfo) {
		sqlSession.insert("mapper.s_member.naverInsert",userInfo);
	}
	@Override
	public S_memberVO findnaver(HashMap<String, Object> userInfo) {
		System.out.println("RN:"+userInfo.get("nickname"));
		System.out.println("RE1:"+userInfo.get("email1"));
		System.out.println("RE2:"+userInfo.get("email2"));
		S_memberVO smember=(S_memberVO)sqlSession.selectOne("mapper.s_member.findNaver", userInfo);
		return smember;
	}
		
	@Override
	public S_memberVO findkakao(HashMap<String, Object> userInfo) {
		System.out.println("RN:"+userInfo.get("name"));
		System.out.println("RE1:"+userInfo.get("email1"));
		System.out.println("RE2:"+userInfo.get("email2"));
		S_memberVO smember=(S_memberVO)sqlSession.selectOne("mapper.s_member.findKakao", userInfo);
		return smember;
	}
}
