package com.myspring.Onaju.host.hostInfo.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

public interface HostInfoController {
	public ModelAndView insertHostInfo(Map<String, Object> infoVO, HttpServletRequest request);

}
