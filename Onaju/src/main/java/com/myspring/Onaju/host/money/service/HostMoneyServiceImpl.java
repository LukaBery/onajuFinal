package com.myspring.Onaju.host.money.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.Onaju.host.money.dao.HostMoneyDAO;
import com.myspring.Onaju.host.money.vo.HostMoneyVO;
import com.myspring.Onaju.host.reservation.vo.ReservationVO;




@Service("hostMoneyService")
@Transactional(propagation=Propagation.REQUIRED)
public class HostMoneyServiceImpl implements HostMoneyService{
	@Autowired
	private HostMoneyDAO hostMoneyDAO;
	
	/* 매출 목록 페이지 */ 
	@Override
	public List<HostMoneyVO> hostSalesAllList(String h_id) throws Exception {
		return hostMoneyDAO.hostSalesAllList(h_id);	
	}
}
