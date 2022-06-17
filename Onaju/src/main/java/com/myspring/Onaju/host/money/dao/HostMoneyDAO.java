package com.myspring.Onaju.host.money.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.host.money.vo.HostMoneyVO;
import com.myspring.Onaju.host.reservation.vo.ReservationVO;

public interface HostMoneyDAO {

	public List<HostMoneyVO> hostSalesAllList(String h_id) throws DataAccessException;

	
}
