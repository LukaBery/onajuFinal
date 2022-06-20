package com.myspring.Onaju.admin.adminMember.controller;

import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.member.vo.MemberVO;

public interface AdminMemberController {
	public ModelAndView listMembers(Criteria cri) throws Exception;
	public ModelAndView memberDetail(@RequestParam("u_id")String u_id, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ModelAndView memberModifyForm(@RequestParam("u_id")String u_id, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ModelAndView memberUpdate(MemberVO vo, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) throws Exception;
	public ModelAndView searchMember(@RequestParam Map<String, Object> searchMap, Criteria cri) throws Exception;
	public ModelAndView memberDelete(String u_id, @ModelAttribute("cri") Criteria cri) throws Exception;
}
