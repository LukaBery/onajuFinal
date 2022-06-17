package com.myspring.Onaju.host.money.service;

import java.util.List;

import com.myspring.Onaju.host.money.vo.HostMoneyVO;
import com.myspring.Onaju.host.reservation.vo.ReservationVO;

public interface HostMoneyService {

	public List<HostMoneyVO> hostSalesAllList(String h_id) throws Exception;

	
}
