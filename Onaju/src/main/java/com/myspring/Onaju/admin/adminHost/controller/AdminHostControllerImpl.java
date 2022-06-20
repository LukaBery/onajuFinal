package com.myspring.Onaju.admin.adminHost.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.time.DateFormatUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminCommon.paging.PageVO;
import com.myspring.Onaju.admin.adminHost.service.AdminHostService;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostInfoVO;
import com.myspring.Onaju.admin.adminHost.vo.AdminHostVO;
import com.myspring.Onaju.member.controller.MemberControllerImpl;

@Controller("adminHostController")
public class AdminHostControllerImpl implements AdminHostController {
	private static final Logger logger = LoggerFactory.getLogger(MemberControllerImpl.class);
	@Autowired
	private AdminHostService adminHostService;
	@Autowired
	private AdminHostVO adminHostVO ;
	@Autowired
	private AdminHostInfoVO adminHostInfoVO;

	
	//==========================================호스트 관련 메서드==========================================
	@Override
	@RequestMapping(value="/admin/hostList.do" ,method = {RequestMethod.GET,RequestMethod.POST}) 
	public ModelAndView hostList(Criteria cri) throws Exception {
		
		if(cri.getJoin_endDate() != "" && cri.getJoin_endDate() != null) {
			String endDate = cri.getJoin_endDate();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date = format.parse(endDate);
			Date plus_date = new Date(date.getTime() + (1000*60*60*24));
			String join_endDate = DateFormatUtils.format(plus_date, "yyyy-MM-dd");
		
			cri.setJoin_endDate(join_endDate);
		}
		
		ModelAndView mav = new ModelAndView();
		List<Map<String, Object>> hostList = adminHostService.listAllHost(cri);
		
		int total = adminHostService.hostListTotal(cri);
		
		mav.addObject("hostList", hostList);
		mav.addObject("pageMaker", new PageVO(cri, total));
		return mav;
	  }
	 
	
	@Override
	@RequestMapping(value="/admin/hostDetail.do" ,method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView hostDetail(@RequestParam("h_id")String h_id, @ModelAttribute("cri") Criteria cri)
			throws Exception {

		adminHostVO = adminHostService.hostDetail(h_id);

		ModelAndView mav = new ModelAndView();
		mav.addObject("hostVO", adminHostVO);
	
		return mav;
	}

	
	@Override
	@RequestMapping(value="/admin/hostModify.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostModifyForm(@RequestParam("h_id") String h_id, @ModelAttribute("cri") Criteria cri)
			throws Exception {
		adminHostVO = adminHostService.hostDetail(h_id);
		
		ModelAndView mav = new ModelAndView();		
		mav.addObject("hostVO",adminHostVO);
		
		return mav;
	}
	
	
	@RequestMapping(value = "/admin/hostCalculate.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostCalculate(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);		
		return mav;
	}
	
	
	@Override
	@RequestMapping(value = "/admin/updateHost.do", method = RequestMethod.POST)
	public String updateHost(AdminHostVO hostVO,
			@ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		
		int update_host = adminHostService.updateHost(hostVO);
		if(update_host == 1) {
			rttr.addFlashAttribute("h_id", hostVO.getH_id());
		}	
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("join_startDate", cri.getJoin_startDate());
		rttr.addAttribute("join_endDate", cri.getJoin_endDate());
		rttr.addAttribute("h_del_yn", cri.getH_del_yn());
		rttr.addAttribute("h_id2", cri.getH_id2());
		rttr.addAttribute("h_name2", cri.getH_name2());
		rttr.addAttribute("h_sellerNum2", cri.getH_sellerNum2());
		rttr.addAttribute("h_id", hostVO.getH_id());
		
		return "redirect:/admin/hostDetail.do";
	}

	
	@Override
	@RequestMapping(value = "/admin/hostDelete.do", method = RequestMethod.POST)
	public ModelAndView deletHost(@RequestParam String h_id, @ModelAttribute("cri") Criteria cri) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		int update_del_yn = adminHostService.deleteHost(h_id);
		
		if(update_del_yn == 3) {
			String message = "해지 처리가 완료되었습니다.";
			mav.addObject("hostVO", adminHostService.hostDetail(h_id));
			mav.addObject("message", message);
		}else {
			String message = "해지 처리가 실패하였습니다.";
			mav.addObject("hostVO", adminHostService.hostDetail(h_id));
			mav.addObject("message", message);	
		}
		mav.setViewName("/admin/hostDetail");
		return mav;
	}
	
	//==========================================사업장 관련 메서드==========================================
	@Override
	@RequestMapping(value="/admin/hostInfoList.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostInfoList(Criteria cri) throws Exception {
		
		if(cri.getJoin_endDate() != "" && cri.getJoin_endDate() != null) {
			String endDate = cri.getJoin_endDate();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date = format.parse(endDate);
			Date plus_date = new Date(date.getTime() + (1000*60*60*24));
			String join_endDate = DateFormatUtils.format(plus_date, "yyyy-MM-dd");
		
			cri.setJoin_endDate(join_endDate);
		}
		
		ModelAndView mav = new ModelAndView();
		
		int total = adminHostService.hostInfoListTotal(cri);
		
		List<Map<String, Object>> hostInfoList = adminHostService.listAllHostInfo(cri);
		
		mav.addObject("hostInfoList", hostInfoList);
		mav.addObject("pageMaker", new PageVO(cri, total));
		return mav;
	}
	
	
	@Override
	@RequestMapping(value="/admin/hostInfoDetail.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostInfoDetail(@RequestParam("h_code") String h_code, @ModelAttribute("cri") Criteria cri)
			throws Exception {
		
		adminHostInfoVO = adminHostService.hostInfoDetail(h_code);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminHostInfoVO", adminHostInfoVO);
		return mav;
	}

	
	@Override
	@RequestMapping(value = "/admin/hostInfoModify.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView hostInfoModifyForm(String h_code, @ModelAttribute("cri") Criteria cri) throws Exception {
		adminHostInfoVO = adminHostService.hostInfoDetail(h_code);
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminHostInfoVO", adminHostInfoVO);

		return mav;
	}


	@Override
	@RequestMapping(value = "/admin/hostInfoUpdate.do", method = RequestMethod.POST)
	public ModelAndView updateHostInfo(AdminHostInfoVO hostInfoVO, @ModelAttribute("cri") Criteria cri) {
		
		ModelAndView mav = new ModelAndView();
		String h_code = hostInfoVO.getH_code();
		
		int update_hostInfo = adminHostService.updateHostInfo(hostInfoVO);
		
		//update 할 테이블이 2개 이기때문에 숫자 2 반환
		if(update_hostInfo == 2) {
			String message = "수정 처리가 완료되었습니다.";
			mav.addObject("adminHostInfoVO", adminHostService.hostInfoDetail(h_code));
			mav.addObject("message", message);
			
		}else {
			String message = "수정 처리가 실패하였습니다.";
			mav.addObject("adminHostInfoVO", adminHostService.hostInfoDetail(h_code));
			mav.addObject("message", message);
		}
		mav.setViewName("/admin/hostInfoDetail");
		return mav;
	}

	
	@Override
	@RequestMapping(value = "/admin/hostInfoDelete.do", method = RequestMethod.POST)
	public ModelAndView deleteHostInfo(@RequestParam String h_code, @ModelAttribute("cri") Criteria cri) throws Exception{
		ModelAndView mav = new ModelAndView();
		int update_del_yn = adminHostService.deleteHostInfo(h_code);
		if(update_del_yn == 2) {
			String message = "해지 처리가 완료 되었습니다.";
			mav.addObject("adminHostInfoVO", adminHostService.hostInfoDetail(h_code));
			mav.addObject("message", message);
		}else {
			String message = "해지 처리가 실패하였습니다.";
			mav.addObject("adminHostInfoVO", adminHostService.hostInfoDetail(h_code));
			mav.addObject("message", message);
		}
		mav.setViewName("/admin/hostInfoDetail");
		return mav;
	}
	
	
}
