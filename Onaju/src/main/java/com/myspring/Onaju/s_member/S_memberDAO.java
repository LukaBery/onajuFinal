package com.myspring.Onaju.s_member;

import java.util.HashMap;


public interface S_memberDAO {
	public S_memberVO findkakao(HashMap<String, Object> userInfo);
	public void kakaoinsert(HashMap<String, Object> userInfo);
	public void naverinsert(HashMap<String, Object> userInfo);
	public S_memberVO findnaver(HashMap<String, Object> userInfo);
}
