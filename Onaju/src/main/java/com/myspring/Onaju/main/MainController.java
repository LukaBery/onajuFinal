package com.myspring.Onaju.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.host.community.service.HostCommunityService;
import com.myspring.Onaju.host.community.vo.HostCommunityVO;

@Controller("mainController")
@EnableAspectJAutoProxy
public class MainController extends BaseController {
	@Autowired
	private HostCommunityVO hostCommunityVO;
	@Autowired
	private HostCommunityService hostCommunityService;
	
	@RequestMapping(value = "/main/main.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView main(@RequestParam Map<String, String> communityMap, HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session;
		ModelAndView mav = new ModelAndView();
		String viewName = (String) request.getAttribute("viewName");
		String section = communityMap.get("section");
		String pageNum = communityMap.get("pageNum");
	
		Map<String, Object> communityMap_ = new HashMap();
		communityMap_.put("board_type", "best");

		List<HostCommunityVO> comunityList_best= hostCommunityService.comunityList_best(communityMap_);
		if(section== null) {
			section = "1";
		}
		if(pageNum== null) {
			pageNum = "1";
		}
		communityMap_.put("section",section);
		communityMap_.put("pageNum",pageNum);
	
		communityMap_.put("board_type", "newest");
		List<HostCommunityVO> comunityList_newest= hostCommunityService.comunityList_best(communityMap_);
		mav.addObject("pageNum",pageNum);
		mav.addObject("section",section);
		mav.addObject("comunityList_best", comunityList_best);
		mav.addObject("comunityList_newest", comunityList_newest);
		String cnt_ = hostCommunityService.getCnt();
		if(Math.floorMod(Integer.parseInt(cnt_),8) == 0) {
			int cnt_1 = (int) Math.ceil(Integer.parseInt(cnt_) / 8) ;
			
			int cnt = Math.floorMod(cnt_1,8);
			mav.addObject("cnt", cnt);
		}else {
int cnt_1 = (int) Math.ceil(Integer.parseInt(cnt_) / 8) + 1;
		
		int cnt = Math.floorMod(cnt_1,8);
		mav.addObject("cnt", cnt);
		}
	
		mav.setViewName(viewName);

		return mav;
	}

	@RequestMapping(value = "board/boardArticle.do", method = {RequestMethod.GET, RequestMethod.POST })
	public ModelAndView boardArticle(@RequestParam("cmnNum") int cmnNum, @RequestParam("room_code") int room_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session;
		

		hostCommunityVO = hostCommunityService.modCommunity(cmnNum);
		mav.addObject("hostCommunityVO", hostCommunityVO);
		Map goodsMap = hostCommunityService.selectCommunityView(room_code);
		mav.addObject("goodsMap", goodsMap);

		hostCommunityService.updateHit(cmnNum);

		return mav;
	}

	@RequestMapping(value = "/customerService/siteMap.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView siteMap(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session;
		ModelAndView mav = new ModelAndView();
		String viewName = (String) request.getAttribute("viewName");
		String isLogOn = request.getParameter("isLogOn");
		System.out.println("isLogon" + isLogOn);
		mav.addObject("isLogOn", isLogOn);
		mav.setViewName(viewName);

		return mav;
	}
}
