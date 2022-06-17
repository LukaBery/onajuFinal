package com.myspring.Onaju.host.community.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.host.community.vo.HostCommunityVO;

public interface HostCommunityController {
	public ModelAndView cmnAticleForm1(HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ModelAndView cmnAticleForm1_2(@RequestParam("h_code") int h_code, HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ModelAndView cmnAticleForm2(@RequestParam("room_code") int room_code, HttpServletRequest request,HttpServletResponse response) throws Exception;
	public ResponseEntity addNewCommunity(HostCommunityVO hostCommunityVO, MultipartHttpServletRequest request,
			HttpServletResponse response) throws Exception;
	public ModelAndView hostAllCommunityList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView modCmnAticleForm(@RequestParam("cmnNum") int cmnNum, @RequestParam("room_code") int room_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView modingCmnAticleForm(@RequestParam("room_code") int room_code, @RequestParam("cmnNum") int cmnNum,
			MultipartHttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView confirmCmnAticle(int cmnNum, int room_code, HttpServletRequest request,HttpServletResponse response) throws Exception;
	public void download2(String fileName, int room_code, HttpServletResponse response) throws Exception;
	
	public ResponseEntity deleteHostCommunity(@RequestParam("cmnNum") int cmnNum, HttpServletRequest request, HttpServletResponse response)  throws Exception;

	public Map<String, String> addLike(@RequestBody Map<String, String> map, HttpServletRequest request, HttpServletResponse response) throws Exception ;	
	
}
