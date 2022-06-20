package com.myspring.Onaju.admin.adminHost.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;

public interface AdminHostController {
	
	//==========================================호스트 관련 메서드==========================================
	public ModelAndView hostList(Criteria cri) throws Exception;
	public ModelAndView hostDetail(@RequestParam("h_id")String h_id, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ModelAndView hostModifyForm(@RequestParam("h_id") String h_id, @ModelAttribute("cri") Criteria cri) throws Exception;
	public String updateHost(AdminHostVO hostVO, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr);
	public ModelAndView hostCalculate(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView deletHost(String h_id, @ModelAttribute("cri") Criteria cri) throws Exception;
	//==========================================사업장 관련 메서드==========================================
	public ModelAndView hostInfoList(Criteria cri) throws Exception;
	public ModelAndView hostInfoDetail(String h_code, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ModelAndView hostInfoModifyForm(String h_code, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ModelAndView updateHostInfo(AdminHostInfoVO hostInfoVO, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ModelAndView deleteHostInfo(String h_code, @ModelAttribute("cri") Criteria cri) throws Exception;;
}
