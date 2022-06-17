package com.myspring.Onaju.host.reservation.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.host.reservation.vo.ReservationVO;
@Repository("reservationDAO")
public class ReservationDAOImpl implements ReservationDAO{
	@Autowired
	private SqlSession sqlSession;
	
	/* 예약 목록 나오는 페이지 */ 
	@Override
	public List<ReservationVO> hostReservationList(String h_id) throws DataAccessException {
		List<ReservationVO> hostReservationList = (ArrayList)sqlSession.selectList("mapper.reservation.hostReservationList",h_id); 
		   System.out.println(hostReservationList);
		return hostReservationList;
	}
	/* DB승인 저장 */ 
	@Override
	public void  updateReservationState(Map stateMap) throws DataAccessException{
		sqlSession.update("mapper.reservation.updateReservationState",stateMap);
	}
	
	/* 취소 및 환불 목록 나오는 페이지 */ 
	@Override
	public List<ReservationVO> cancelReservationList(String h_id) throws DataAccessException {
		List<ReservationVO> cancelReservationList = (ArrayList)sqlSession.selectList("mapper.reservation.cancelReservationList",h_id); 
		   System.out.println(cancelReservationList);
		return cancelReservationList;
	}
	
	/* 승인 목록 나오는 페이지 */ 
	@Override
	public List<ReservationVO> approveReservationList(String h_id) throws DataAccessException {
		List<ReservationVO> approveReservationList = (ArrayList)sqlSession.selectList("mapper.reservation.approveReservationList",h_id); 
		   System.out.println(approveReservationList);
		return approveReservationList;
	}
	
}
