package com.myspring.Onaju.host.reservation.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.Onaju.host.reservation.dao.ReservationDAO;
import com.myspring.Onaju.host.reservation.vo.ReservationVO;


@Service("ReservationService")
@Transactional(propagation=Propagation.REQUIRED)
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	private ReservationDAO reservationDAO;
	
	/* 예약 목록 페이지 */ 
	@Override
	public List<ReservationVO> hostReservationList(String h_id) throws Exception {
		return reservationDAO.hostReservationList(h_id);	
	}
	/* 승인 여부 DB저장 */
	@Override
	public void  modifyReservationState(Map stateMap) throws Exception{
		reservationDAO.updateReservationState(stateMap);
	}
	
	/* 취소및환불 목록 페이지 */ 
	@Override
	public List<ReservationVO> cancelReservationList(String h_id) throws Exception {
		return reservationDAO.cancelReservationList(h_id);	
	}
	/*승인 목록 페이지 */ 
	@Override
	public List<ReservationVO> approveReservationList(String h_id) throws Exception {
		return reservationDAO.approveReservationList(h_id);	
	}
}
