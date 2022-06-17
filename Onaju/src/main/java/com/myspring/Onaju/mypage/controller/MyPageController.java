package com.myspring.Onaju.mypage.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface MyPageController {
	public ModelAndView mypageMain(@RequestParam Map<String, String> dateMap,HttpServletRequest request, HttpServletResponse response)  throws Exception ;
	
	public ModelAndView myCart(@RequestParam Map<String, String> _pageNum,
			   HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ResponseEntity modifyMyInfo(@RequestParam("attribute")  String attribute,
					            @RequestParam("value")  String value,
					            HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ModelAndView deleteMember(@RequestParam Map<String, String> loginMap,HttpServletRequest request, HttpServletResponse response)  throws Exception;

public ModelAndView deleteMemberInfo(HttpServletRequest request, HttpServletResponse response)  throws Exception;
}
