package com.myspring.Onaju.host.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.common.aes256.AES256Util;
import com.myspring.Onaju.common.aes256.SHA256Util;
import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.host.goods.service.HostGoodsService;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;
import com.myspring.Onaju.host.reservation.service.ReservationService;
import com.myspring.Onaju.host.reservation.vo.ReservationVO;
import com.myspring.Onaju.host.service.HostService;
import com.myspring.Onaju.host.vo.HostVO;


@Controller("hostController")
@RequestMapping(value = "/host")
public class HostControllerImpl extends BaseController implements HostController {
	@Autowired
	private HostService hostService;
	@Autowired
	private HostVO hostVO;
	@Autowired 
	private HostGoodsService hostGoodsService; // �씠�젙�븘 異붽�
	@Autowired
	AES256Util aes;
	@Autowired
	private ReservationService reservationService;
	
	
	@RequestMapping(value = "/main/main.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView();
		String viewName = (String) request.getAttribute("viewName");
		String isLogOn = request.getParameter("isLogOn");
		System.out.println("isLogon" + isLogOn);
		
		
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		session.setAttribute("hostInfo", hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("hostVO의 h_id : " + h_id);

		List<ReservationVO> hostReservationList = reservationService.hostReservationList(h_id);
		
		mav.addObject("hostReservationList", hostReservationList);
		System.out.println("hostReservationList####### " + hostReservationList);		
		mav.addObject("isLogOn", isLogOn);
		mav.setViewName(viewName);

		return mav;
	}

	/*
	 * @RequestMapping(value = "/host/main.do", method = { RequestMethod.POST,
	 * RequestMethod.GET }) public ModelAndView main(HttpServletRequest request,
	 * HttpServletResponse response) throws Exception { HttpSession session;
	 * ModelAndView mav = new ModelAndView(); String viewName = (String)
	 * request.getAttribute("viewName"); String isLogOn =
	 * request.getParameter("isLogOn"); System.out.println("isLogon" + isLogOn);
	 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
	 * 
	 * return mav; }
	 */
	
	@Override
	@RequestMapping(value = "/h_login.do", method = RequestMethod.POST)
	public ModelAndView h_login(@RequestParam Map<String, String> loginMap, HttpServletRequest request,HttpServletResponse response) throws Exception {

		String _pw = loginMap.get("h_pw");

		ModelAndView mav = new ModelAndView();
		hostVO = hostService.h_login(loginMap);
		/* 占쎈릊占쎌깈占쎌넅占쎈쭆 DB �뜮袁⑨옙甕곕뜇�깈 */

		if (hostVO != null && hostVO.getH_id() != null) {
			/* DB�뿉 ���옣�맂 �븫�샇�솕 鍮꾨�踰덊샇 */
			String h_pw_com = hostVO.getH_pw();
			/* DB�뿉 ���옣�맂 SALT媛� */
			String salt = hostVO.getSalt();
			/* salt媛믪쓣 媛�吏�怨� �궗�슜�옄媛� �엯�젰�븳 鍮꾨�踰덊샇 �븫�샇�솕 */
			String h_pw_enc = SHA256Util.getEncrypt(_pw, salt);
	
			if (h_pw_com.equals(h_pw_enc)) {
				
				HttpSession session = request.getSession();
				session = request.getSession();
				session.setAttribute("isLogOn", true);
				session.setAttribute("hostInfo", hostVO);
				
				String h_id = hostVO.getH_id();
				System.out.println("h_id: "+h_id);
				 
				
				List<HostInfoVO> hostInfoVO =  hostGoodsService.h_login(h_id); // �씠�젙�븘 異붽�
				 System.out.println("loginMap : " + loginMap);
				 session.setAttribute("h_hostInfo",hostInfoVO); // �씠�젙�븘 異붽�
				 System.out.println("h_hostInfo : " + hostInfoVO);
				 
				String action = (String) session.getAttribute("action");
				System.out.println("action:" + action);
				if (action != null && action.equals("#")) {
					System.out.println("액션 진입");
					mav.setViewName("forward:" + action);
				} else if (action != null && action.equals("#")) {
					mav.setViewName("forward:" + action);
				} else {
					mav.setViewName("redirect:/host/main/main.do");
				}
			} else {
				String message = "일치하는 회원 정보가 없습니다.";

				mav.addObject("message", message);
				mav.setViewName("/member/loginForm");
			}
		}
		return mav;
	}

	@RequestMapping(value = "/h_logout.do", method = RequestMethod.GET)
	public ModelAndView h_logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		session.removeAttribute("isLogOn");
		session.removeAttribute("hostInfo");
		session.removeAttribute("h_hostInfo");
		mav.setViewName("redirect:/main/main.do");
		return mav;
	}

	@Override
	@RequestMapping(value = "/addHost.do", method = RequestMethod.POST)
	public ResponseEntity addHost(@ModelAttribute("hostVO") HostVO _hostVO, HttpServletRequest request,HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			String salt = SHA256Util.generateSalt();
			_hostVO.setSalt(salt);
			String h_pw = _hostVO.getH_pw();
			h_pw = SHA256Util.getEncrypt(h_pw, salt);
			_hostVO.setH_pw(h_pw);
			hostService.addHost(_hostVO);
			message = "<script>";
			message += " alert('회원가입을 축하드립니다.');";
			message += " location.href='" + request.getContextPath() + "/host/h_joinResult.do';";
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('에러가 발생했습니다.');";
			message += " location.href='" + request.getContextPath() + "/host/h_joinForm.do';";
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}

	@Override
	@RequestMapping(value = "/overlappedH_id.do", method = RequestMethod.POST)
	public ResponseEntity overlappedH_id(@RequestParam("id") String id, HttpServletRequest request,HttpServletResponse response) throws Exception {
		ResponseEntity resEntity = null;
		String result = hostService.overlappedH_id(id);
		resEntity = new ResponseEntity(result, HttpStatus.OK);
		return resEntity;
	}

	@Override
	@RequestMapping(value = "/h_idFind.do", method = RequestMethod.POST)
	public ModelAndView h_idFind(@RequestParam Map<String, String> loginMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		hostVO = hostService.h_idFind(loginMap);

		ModelAndView mav = new ModelAndView();

		try {
			if (hostVO != null && hostVO.getH_id() != null) {

				HttpSession session = request.getSession();
				session = request.getSession();

				session.setAttribute("hostInfo", hostVO);

				String action = (String) session.getAttribute("action");

				if (action != null && action.equals("#")) {
					mav.setViewName("forward:" + action);
				} else if (action != null && action.equals("#")) {
					mav.setViewName("forward:" + action);
				} else {
					session.setAttribute("isLogOn", false);

					mav.setViewName("redirect:/host/h_idFindResult.do");
				}

			} else {
				String message = "디비랑 일치하지 읺습니다..";
				mav.addObject("message", message);
				System.out.println(message);
				mav.setViewName("/host/h_idFindForm");
			}
		} catch (Exception e) {
			String message = "트라이캐치";
			System.out.println(message);
			HttpSession session = request.getSession();
			session = request.getSession();
			session.setAttribute("isLogOn", false);
			session.removeAttribute("hostInfo");
			mav.setViewName("redirect:/host/h_idFindForm.do");
		}
		return mav;

	}

	@Override
	@RequestMapping(value = "/h_pwdFind.do", method = RequestMethod.POST)
	public ModelAndView h_pwdFind(@RequestParam Map<String, String> loginMap, HttpServletRequest request,HttpServletResponse response) throws Exception {

		hostVO = hostService.h_pwdFind(loginMap);

		ModelAndView mav = new ModelAndView();

		try {
			if (hostVO != null && hostVO.getH_id() != null) {

				HttpSession session = request.getSession();
				session = request.getSession();

				session.setAttribute("hostInfo", hostVO);

				String action = (String) session.getAttribute("action");

				session.setAttribute("isLogOn", false);

				mav.setViewName("redirect:/host/h_pwdFind2Form.do");

			} else {
				String message = "회원 정보가 일치하지 읺습니다..";
				mav.addObject("message", message);
				System.out.println(message);
				mav.setViewName("/host/h_pwdFindForm");
			}
		} catch (Exception e) {
			String message = "트라이캐치";
			System.out.println(message);
			HttpSession session = request.getSession();
			session = request.getSession();
			session.setAttribute("isLogOn", false);
			session.removeAttribute("hostInfo");
			mav.setViewName("redirect:/host/h_idFindForm.do");
		}
		return mav;

	}
	@Override
	@RequestMapping(value = "/h_pwdChange.do", method = RequestMethod.POST)
	public ModelAndView h_pwdChange(@RequestParam Map<String, String> loginMap, HttpServletRequest request,HttpServletResponse response) throws Exception {
		String h_pw = loginMap.get("h_pw");
		loginMap.replace("h_pw", aes.encrypt(h_pw));
		hostVO = hostService.h_pwdChange(loginMap);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/host/h_pwdFindResult.do");

		return mav;

	}


}