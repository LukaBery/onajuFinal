package com.myspring.Onaju.host.reservation.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.host.reservation.vo.ReservationVO;

public interface ReservationDAO {
	public List<ReservationVO> hostReservationList(String h_id) throws DataAccessException;
	public void  updateReservationState(Map stateMap) throws DataAccessException;
	public List<ReservationVO> cancelReservationList(String h_id) throws DataAccessException;
	public List<ReservationVO> approveReservationList(String h_id) throws DataAccessException;
}
