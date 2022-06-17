package com.myspring.Onaju.mypage.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.cart.vo.CartVO;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.order.vo.OrderVO;


public interface MyPageService{
	public List<OrderVO> listMyOrderGoods(Map _dateMap) throws Exception;

	
	public MemberVO  modifyMyInfo(Map memberMap) throws Exception;
	public String getCnt(Map _dateMap) throws Exception;
	public MemberVO myDetailInfo(String u_id) throws Exception;
	public void removeMember(String u_id) throws Exception;
	public MemberVO deleteMemberInfo(String u_id) throws Exception;
	public List<OrderVO> listMyOrderGoods_fu(Map _dateMap) throws Exception;

}
