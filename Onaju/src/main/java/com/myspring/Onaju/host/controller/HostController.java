package com.myspring.Onaju.host.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.host.vo.HostVO;

public interface HostController {
	public ModelAndView h_login(@RequestParam Map<String, String> loginMap,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView h_logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity addHost(@ModelAttribute("host") HostVO host, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity overlappedH_id(@RequestParam("h_id") String h_id,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView h_idFind(@RequestParam Map<String, String> loginMap,HttpServletRequest request, HttpServletResponse response) throws Exception; 
	public ModelAndView h_pwdFind(@RequestParam Map<String, String> loginMap,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView h_pwdChange(@RequestParam Map<String, String> loginMap, HttpServletRequest request,HttpServletResponse response) throws Exception;
}
