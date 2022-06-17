package com.myspring.Onaju.member.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.member.vo.MemberVO;

public interface MemberDAO {
	public MemberVO login(Map<String, String> loginMap) throws DataAccessException;
	public void insertNewMember(MemberVO memberVO) throws DataAccessException;
	public String selectOverlappedID(String id) throws DataAccessException;
	public MemberVO idFind(Map<String, String> loginMap) throws DataAccessException;
	public MemberVO pwdFind(Map<String, String> loginMap) throws DataAccessException;
	public MemberVO pwdChange(Map<String, String> loginMap) throws DataAccessException;
	public void insertUserProfile(List fileList) throws DataAccessException;
}
