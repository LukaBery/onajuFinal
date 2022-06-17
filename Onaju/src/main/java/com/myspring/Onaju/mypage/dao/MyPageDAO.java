package com.myspring.Onaju.mypage.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.cart.vo.CartVO;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.order.vo.OrderVO;

public interface MyPageDAO {
	public List<OrderVO> selectMyOrderGoodsList(Map _dateMap) throws DataAccessException;	

	public String getCnt(Map _dateMap) throws DataAccessException;
	public void updateMyInfo(Map memberMap) throws DataAccessException;
	public MemberVO selectMyDetailInfo(String u_id) throws DataAccessException;

	public void deleteMember(String u_id) throws DataAccessException;
	public MemberVO selectdeleteMemberInfo(String u_id) throws DataAccessException;
	public List<OrderVO> listMyOrderGoods_fu(Map _dateMap) throws DataAccessException;
}
