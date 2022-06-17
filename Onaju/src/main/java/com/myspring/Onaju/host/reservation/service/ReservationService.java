package com.myspring.Onaju.host.reservation.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.host.reservation.vo.ReservationVO;

public interface ReservationService {
	public List<ReservationVO> hostReservationList(String h_id) throws Exception;
	public void  modifyReservationState(Map stateMap) throws Exception;
	public List<ReservationVO> cancelReservationList(String h_id) throws Exception;
	public List<ReservationVO> approveReservationList(String h_id) throws Exception;

}
