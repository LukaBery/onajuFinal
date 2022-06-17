package com.myspring.Onaju.admin.adminMember.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminCommon.paging.PageVO;
import com.myspring.Onaju.admin.adminMember.service.AdminMemberService;
import com.myspring.Onaju.admin.adminOrder.service.AdminOrderService;
import com.myspring.Onaju.member.vo.MemberVO;

@Controller("adminMemberController")
public class AdminMemberControllerImpl implements AdminMemberController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	@Autowired
	private MemberVO memberVO;
	@Autowired
	private AdminOrderService adminOrderService;
	
	
	@Override
	@RequestMapping(value="/admin/memberList.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listMembers(Criteria cri) throws Exception {
		
		if(cri.getJoin_endDate() != "" && cri.getJoin_endDate() != null) {
			String endDate = cri.getJoin_endDate();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date = format.parse(endDate);
			Date plus_date = new Date(date.getTime() + (1000*60*60*24));
			String join_endDate = DateFormatUtils.format(plus_date, "yyyy-MM-dd");
		
			cri.setJoin_endDate(join_endDate);
		}
		
		ModelAndView mav = new ModelAndView();
		List<Map<String, Object>> membersList = adminMemberService.listMembers(cri);
		
		int total = adminMemberService.memberListTotal(cri);
		
		mav.addObject("membersList", membersList);
		mav.addObject("pageMaker", new PageVO(cri, total));
		return mav;
	}

	@Override
	@RequestMapping(value="/admin/memberDetail.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberDetail(@RequestParam("u_id")String u_id, @ModelAttribute("cri") Criteria cri) throws Exception {
	
		memberVO = adminMemberService.memberDetail(u_id);
		List<Map<String, Object>> ordersList = adminOrderService.ordersList(u_id);
		
		ModelAndView mav = new ModelAndView("admin/memberDetail.do");
		mav.addObject("memberVO",memberVO);
		mav.addObject("ordersList", ordersList);
		return mav;
	}

	@Override
	@RequestMapping(value="/admin/memberModify.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberModifyForm(@RequestParam("u_id")String u_id, @ModelAttribute("cri") Criteria cri)
			throws Exception {
		memberVO = adminMemberService.memberDetail(u_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberVO",memberVO);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/memberUpdate.do", method = RequestMethod.POST)
	public ModelAndView memberUpdate(MemberVO vo, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) throws Exception {
		int result = adminMemberService.memberUpdate(vo);
		ModelAndView mav = new ModelAndView();
		if(result == 1) {
			rttr.addFlashAttribute("result", "success");
			mav.addObject("memberVO", adminMemberService.memberDetail(vo.getU_id()));
			mav.addObject("u_id", vo.getU_id());
			mav.addObject("ordersList", adminOrderService.ordersList(vo.getU_id()));
			
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("join_startDate", cri.getJoin_startDate());
		rttr.addAttribute("join_endDate", cri.getJoin_endDate());
		rttr.addAttribute("u_del_yn", cri.getU_del_yn());
		rttr.addAttribute("u_name2", cri.getU_name2());
		rttr.addAttribute("u_id2", cri.getU_id2());
		mav.setViewName("/admin/memberDetail");
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/searchMember.do", method = RequestMethod.GET)
	public ModelAndView searchMember(@RequestParam Map<String, Object> searchMap, Criteria cri) throws Exception {

		if(searchMap.get("write_endDate") != null && searchMap.get("write_endDate") != "") {
			String endDate = (String)searchMap.get("write_endDate");
		
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date = format.parse(endDate);
			Date plus_endDate = new Date(date.getTime() + (1000*60*60*24));
			String write_endDate = DateFormatUtils.format(plus_endDate, "yyyy-MM-dd");
	
			searchMap.put("write_endDate", write_endDate);
		}
		
		
		List<Map<String, Object>> searchMemberList =  adminMemberService.searchMember(searchMap);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/memberList");
		mav.addObject("membersList", searchMemberList);

		return mav;	
	}

	@Override
	public ResponseEntity<Map<String, Object>> memberDelete(String u_id, Criteria cri) {
		/* int delete_Member = adminMemberService.memberDelete(u_id); */
		return null;
	}
}
