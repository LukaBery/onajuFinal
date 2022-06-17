package com.myspring.Onaju.host.reservation.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.host.reservation.vo.ReservationVO;

public interface ReservationController {

	public ModelAndView hostReservationList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity modifyReservationState(@RequestParam Map<String, String> StateMap, HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ModelAndView cancelReservationList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView approveReservationList(HttpServletRequest request, HttpServletResponse response) throws Exception;	
}
