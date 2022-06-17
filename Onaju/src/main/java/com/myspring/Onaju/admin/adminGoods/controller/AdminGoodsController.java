package com.myspring.Onaju.admin.adminGoods.controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminGoods.vo.AdminHostRoomVO;

public interface AdminGoodsController {
	public ModelAndView roomsList(Criteria cri);
	public ModelAndView roomDetail(@RequestParam("room_code")String room_code, @ModelAttribute("cri") Criteria cri) throws Exception;
	public ModelAndView roomModify(@RequestParam("room_code")String room_code, @ModelAttribute("cri") Criteria cri) throws Exception;
	public String roomUpdate(AdminHostRoomVO roomVO, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr);
	public String roomDelete(String room_code, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr);
}
