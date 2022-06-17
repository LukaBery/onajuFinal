package com.myspring.Onaju.host.money.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.host.community.vo.HostCommunityVO;
import com.myspring.Onaju.host.money.vo.HostMoneyVO;
import com.myspring.Onaju.host.reservation.vo.ReservationVO;

@Repository("hostMoneyDAO")
public class HostMoneyDAOImpl implements HostMoneyDAO{
	@Autowired
	private SqlSession sqlSession;
	
	/*매출 목록 나오는 페이지 */ 
	@Override
	public List<HostMoneyVO> hostSalesAllList(String h_id) throws DataAccessException {
		List<HostMoneyVO> hostSalesAllList = (ArrayList)sqlSession.selectList("mapper.money.hostSalesAllList",h_id); 
		
		return hostSalesAllList;
	}
}
