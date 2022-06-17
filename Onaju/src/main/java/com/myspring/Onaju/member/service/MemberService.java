package com.myspring.Onaju.member.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.s_member.S_memberVO;



public interface MemberService {
	public MemberVO login(Map loginMap) throws Exception;
	public void addMember(MemberVO memberVO) throws Exception;
	public String overlapped(String id) throws Exception;
	public MemberVO idFind(Map loginMap) throws Exception;
	public MemberVO pwdFind(Map loginMap) throws Exception;
	public MemberVO pwdChange(Map loginMap) throws Exception;
	public String getAccessToken(String auth_code) throws Exception;
	public S_memberVO getUserInfo(String access_Token) throws Exception;
	public void kakaoLogout(String access_Token) throws Exception;
	public void addNewUserProfile(Map newGoodsMap) throws Exception;
	public S_memberVO naverLogin(S_memberVO s_memberVO) throws Exception;

}
