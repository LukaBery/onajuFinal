package com.myspring.Onaju.admin.adminGoods.controller;

import java.util.List;
import java.util.Map;

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
import com.myspring.Onaju.admin.adminGoods.service.AdminGoodsService;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

@Controller("adminGoodsController")
public class AdminGoodsControllerImpl implements AdminGoodsController {
	
	@Autowired
	private AdminGoodsService adminGoodsService;
	@Autowired
	private AdminHostRoomVO adminHostRoomVO;
	
	@Override
	@RequestMapping(value = "/admin/goodsList.do", method = { RequestMethod.GET, RequestMethod.POST})
	public ModelAndView roomsList(Criteria cri) {
		
		ModelAndView mav = new ModelAndView();
		
		List<Map<String, Object>> roomsList = adminGoodsService.roomsList(cri);
		
		int total = adminGoodsService.roomTotal(cri);
		
		mav.addObject("roomsList", roomsList);
		mav.addObject("pageMaker", new PageVO(cri, total));
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/goodsDetail.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView roomDetail(@RequestParam("room_code")String room_code, @ModelAttribute("cri") Criteria cri) throws Exception {
		adminHostRoomVO = adminGoodsService.roomDetail(room_code);
		ModelAndView mav = new ModelAndView();
		mav.addObject("roomDetail", adminHostRoomVO);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/goodsModify.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView roomModify(@RequestParam("room_code")String room_code, @ModelAttribute("cri") Criteria cri) throws Exception {
		adminHostRoomVO = adminGoodsService.roomDetail(room_code);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("roomDetail", adminHostRoomVO);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/goodsUpdate.do", method = RequestMethod.POST)
	public String roomUpdate(AdminHostRoomVO roomVO, @ModelAttribute Criteria cri, RedirectAttributes rttr) {
		int update_room = adminGoodsService.roomUpdate(roomVO);
		if(update_room == 3) {
			rttr.addAttribute("room_code", roomVO.getRoom_code());
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("join_startDate", cri.getJoin_startDate());
		rttr.addAttribute("join_endDate", cri.getJoin_endDate());
		rttr.addAttribute("h_id2", cri.getH_id2());
		rttr.addAttribute("h_name2", cri.getH_name2());
		rttr.addAttribute("h_sellerNum2", cri.getH_sellerNum2());
		rttr.addAttribute("roadAddress2", cri.getRoadAddress2());
		rttr.addAttribute("hostInfo_name2", cri.getHostInfo_name2());
		rttr.addAttribute("r_del_yn", cri.getR_del_yn());
		
		return "redirect:/admin/goodsDetail.do";
	}

	@Override
	@RequestMapping(value = "/admin/goodsDelete.do", method = RequestMethod.POST)
	public String roomDelete(String room_code, Criteria cri, RedirectAttributes rttr) {
		int delete_room = adminGoodsService.roomDelete(room_code);
		if(delete_room == 1) {
			
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("join_startDate", cri.getJoin_startDate());
		rttr.addAttribute("join_endDate", cri.getJoin_endDate());
		rttr.addAttribute("h_id2", cri.getH_id2());
		rttr.addAttribute("h_name2", cri.getH_name2());
		rttr.addAttribute("h_sellerNum2", cri.getH_sellerNum2());
		rttr.addAttribute("roadAddress2", cri.getRoadAddress2());
		rttr.addAttribute("hostInfo_name2", cri.getHostInfo_name2());
		rttr.addAttribute("r_del_yn", cri.getR_del_yn());
		
		return "redirect:/admin/goodsList.do";
	}
}
