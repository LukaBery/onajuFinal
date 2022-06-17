package com.myspring.Onaju.member.controller;


import java.io.File;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.common.aes256.AES256Util;
import com.myspring.Onaju.common.aes256.SHA256Util;
import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.member.service.MemberService;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.s_member.S_memberVO;

@Controller("memberController")
@RequestMapping(value = "/member")
public class MemberControllerImpl extends BaseController implements MemberController {
	private static final String CURR_IMAGE_REPO_PATH = "C:\\onaju\\host_room_image";
	private static final String CURR_IMAGE_REPO_PATH_MEMBER = "C:\\onaju\\member_profile";

	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberVO memberVO;

	@Autowired
	AES256Util aes;

	@Override
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> loginMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String _pw = loginMap.get("u_pw");

		ModelAndView mav = new ModelAndView();
		memberVO = memberService.login(loginMap);
		

		if (memberVO != null && memberVO.getU_id() != null) {
			/* DB에 저장된 암호화 비밀번호 */
			String u_pw_com = memberVO.getU_pw();
			/* DB에 저장된 SALT값 */
			String salt = memberVO.getSalt();
			/* salt값을 가지고 사용자가 입력한 비밀번호 암호화 */
			String u_pw_enc = SHA256Util.getEncrypt(_pw, salt);
			
			if (u_pw_com.equals(u_pw_enc)) {
				
				HttpSession session = request.getSession();
				session = request.getSession();
				session.setAttribute("isLogOn", "member");
				session.setAttribute("memberInfo", memberVO);

				String action = (String) session.getAttribute("action");
				System.out.println("action:" + action);
				if (action != null && action.equals("/order/orderEachGoods.do")) {
					System.out.println("액션 진입");
					mav.setViewName("forward:" + action);
				} else if (action != null && action.equals("/cart/addCart.do")) {
					mav.setViewName("forward:" + action);
				} else {
					mav.setViewName("redirect:/main/main.do");
				}
			} else {
				String message = "일치하는 회원 정보가 없습니다.";

				mav.addObject("message", message);
				mav.setViewName("/member/loginForm");
			}

		} else {
			String message = "일치하는 회원 정보가 없습니다.";
			mav.addObject("message", message);
			System.out.println(message);
			mav.setViewName("/member/loginForm");
		}
		return mav;
	}
	@Override
	@RequestMapping(value = "/uploadProfile.do", method = { RequestMethod.POST })
	public ModelAndView uploadProfile( MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception{

		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String imageFileName = null;
		String viewName = (String) multipartRequest.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		

		Map newGoodsMap = new HashMap();
		
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			newGoodsMap.put(name, value);
		}
		
		String u_id = (String) newGoodsMap.get("u_id");
		HttpSession session = multipartRequest.getSession();
		MemberVO memberInfo = (MemberVO) session.getAttribute("memberInfo");
		String u_imageName = memberInfo.getU_imageName();
		
		if(u_imageName != "" || u_imageName != null) { // 이미지가 있을시 삭제 하는 구문
			deleteFileproFile(u_imageName, u_id);
			
		}
		
		
		List<MemberVO> imageFileList = profileupload(multipartRequest);
		if (imageFileList != null && imageFileList.size() != 0) {
			for (MemberVO imageFileVO : imageFileList) {
				imageFileVO.setU_id(u_id);
				
				
			}
			newGoodsMap.put("imageFileList", imageFileList);
		}

		String message = null;

		try {
			
			
			 memberService.addNewUserProfile(newGoodsMap);

			if (imageFileList != null && imageFileList.size() != 0) {
				for (MemberVO imageFileVO : imageFileList) {
					imageFileName = imageFileVO.getU_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH_MEMBER + "\\" + "temp" + "\\" + imageFileName);
					File destDir = new File(CURR_IMAGE_REPO_PATH_MEMBER + "\\" + u_id);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
				}
			}

			message = "프로필 등록 완료";

		} catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (MemberVO imageFileVO : imageFileList) {
					imageFileName = imageFileVO.getU_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH_MEMBER + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			}
			message = "알 수 없는 이유로 실패하였습니다.";

			e.printStackTrace();
		}
	  MemberVO mem = (MemberVO) memberService.login(newGoodsMap);
	  
	    session.removeAttribute("memberInfo");
	    session.setAttribute("memberInfo", mem);
		mav.addObject("message", message);
		mav.setViewName("forward:/mypage/Mypage3.do");
		return mav;
	}
			
	
	
	
	
	
	
	@Override
	@RequestMapping(value = "/nonmemberLogin.do", method = RequestMethod.POST)
	public ModelAndView nonLogin(@RequestParam Map<String, String> loginMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String non_name = loginMap.get("non_name");
		String non_phone = loginMap.get("non_phone");

		ModelAndView mav = new ModelAndView();
	
		memberVO.setU_name(non_name);
		memberVO.setU_phone(non_phone);

	
				HttpSession session = request.getSession();
				session = request.getSession();
				session.setAttribute("isLogOn", "nonmember");
				session.setAttribute("nonmemberInfo", memberVO);

				String action = (String) session.getAttribute("action");
				System.out.println("action:" + action);
				if (action != null && action.equals("/order/orderEachGoods.do")) {
					System.out.println("액션 진입");
					mav.setViewName("forward:" + action);
				} else if (action != null && action.equals("/cart/addCart.do")) {
					mav.setViewName("forward:" + action);
				} else {
					mav.setViewName("redirect:/main/main.do");
				}
			 
		return mav;
	}

	@Override
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		session.removeAttribute("isLogOn");
		session.removeAttribute("memberInfo");
		session.invalidate();
		mav.setViewName("redirect:/main/main.do");
		return mav;
	}

	@Override
	@RequestMapping(value = "/addMember.do", method = RequestMethod.POST)
	public ResponseEntity addMember(@ModelAttribute("memberVO") MemberVO _memberVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			String salt = SHA256Util.generateSalt();
			_memberVO.setSalt(salt);
			String u_pw = _memberVO.getU_pw();
			u_pw = SHA256Util.getEncrypt(u_pw, salt);
			_memberVO.setU_pw(u_pw);
			memberService.addMember(_memberVO);
			message = "<script>";
			message += " alert('회원가입을 축하드립니다.');";
			message += " location.href='" + request.getContextPath() + "/member/joinResult.do';";
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('에러가 발생했습니다.');";
			message += " location.href='" + request.getContextPath() + "/member/joinForm.do';";
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}

	@Override
	@RequestMapping(value = "/overlapped.do", method = RequestMethod.POST)
	public ResponseEntity overlapped(@RequestParam("id") String id) throws Exception {
		ResponseEntity resEntity = null;
		String result = memberService.overlapped(id);
		resEntity = new ResponseEntity(result, HttpStatus.OK);
		return resEntity;
	}

	@Override
	@RequestMapping(value = "/idFind.do", method = RequestMethod.POST)
	public ModelAndView idFind(@RequestParam Map<String, String> loginMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		memberVO = memberService.idFind(loginMap);

		ModelAndView mav = new ModelAndView();

		try {
			if (memberVO != null && memberVO.getU_id() != null) {

				HttpSession session = request.getSession();
				session = request.getSession();
				String u_id = memberVO.getU_id();
				mav.addObject("u_id", u_id);
				System.out.println(u_id);

				String action = (String) session.getAttribute("action");

				if (action != null && action.equals("/order/reservationForm.do")) {
					mav.setViewName("forward:" + action);
				} else if (action != null && action.equals("/customerService/qnaForm.do")) {
					mav.setViewName("forward:" + action);
				} else {
					session.setAttribute("isLogOn", false);

					mav.setViewName("forward:/member/idFindResult.do");
				}

			} else {
				String message = "디비랑 일치하지 읺습니다..";
				mav.addObject("message", message);
				System.out.println(message);
				mav.setViewName("/member/idFindForm");
			}
		} catch (Exception e) {
			String message = "트라이캐치";
			System.out.println(message);
			HttpSession session = request.getSession();
			session = request.getSession();
			session.setAttribute("isLogOn", false);
			session.removeAttribute("memberInfo");
			mav.setViewName("redirect:/member/idFindForm.do");
		}
		return mav;

	}

	@Override
	@RequestMapping(value = "/pwdFind.do", method = RequestMethod.POST)
	public ModelAndView pwdFind(@RequestParam Map<String, String> loginMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		memberVO = memberService.pwdFind(loginMap);

		ModelAndView mav = new ModelAndView();

		try {
			if (memberVO != null && memberVO.getU_id() != null) {

				HttpSession session = request.getSession();
				session = request.getSession();

				session.setAttribute("memberInfo", memberVO);

				String action = (String) session.getAttribute("action");

				session.setAttribute("isLogOn", false);

				mav.setViewName("redirect:/member/pwdFind2Form.do");

			} else {
				String message = "회원 정보가 일치하지 읺습니다..";
				mav.addObject("message", message);
				System.out.println(message);
				mav.setViewName("/member/pwdFindForm");
			}
		} catch (Exception e) {
			String message = "트라이캐치";
			System.out.println(message);
			HttpSession session = request.getSession();
			session = request.getSession();
			session.setAttribute("isLogOn", false);
			session.removeAttribute("memberInfo");
			mav.setViewName("redirect:/member/idFindForm.do");
		}
		return mav;

	}
	@Override
	@RequestMapping(value = "/pwdChange.do", method = RequestMethod.POST)
	public ModelAndView pwdChange(@RequestParam Map<String, String> loginMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String u_pw = loginMap.get("u_pw");
loginMap.replace("u_pw", aes.encrypt(u_pw));
		memberVO = memberService.pwdChange(loginMap);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/member/pwdFindResult.do");

		return mav;

	}
	@Override
	@RequestMapping(value="/kakaoLogin", method=RequestMethod.GET)
	public ModelAndView kakaoLogin(@RequestParam(value = "code", required = false) String auth_code, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		System.out.println("#########" + auth_code);
		
		
		String access_Token = memberService.getAccessToken(auth_code);
		System.out.println("###access_Token#### : " + access_Token);
		
		ModelAndView mav = new ModelAndView();
		
		S_memberVO smember = memberService.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + smember.getS_name());
		System.out.println("###email#### : " + smember.getS_email1()+ smember.getS_email2());
		
	
		HttpSession session = request.getSession();
		session = request.getSession();
		session.setAttribute("isLogOn", "member");
		session.setAttribute("userInfo", smember);
		session.setAttribute("kakaotoken", access_Token);
		/*
		 * session.setAttribute("nickName", userInfo.getS_name());
		 * session.setAttribute("email1", userInfo.getS_email1());
		 * session.setAttribute("email2", userInfo.getS_email2());
		 */
		// jsp에서 ${sessionScope.kakaoN} 이런 형식으로 사용할 수 있다.
		System.out.println("session mail1 : "+smember.getS_email1());
	    System.out.println("session mail2 : "+smember.getS_email2());
		
	    String action = (String) session.getAttribute("action");
		
		if (action != null && action.equals("/order/orderEachGoods.do")) {
			System.out.println("액션 진입");
			mav.setViewName("forward:" + action);
		} else if (action != null && action.equals("/customerService/qnaForm.do")) {
			mav.setViewName("forward:" + action);
		} else {
			mav.setViewName("redirect:/main/main.do");
		}
		System.out.println("action:" + action);
		return mav;
    	}


	@Override
	@RequestMapping(value = "/kakaoLogout")
	public String kakaoLogout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();

		String access_Token = (String) session.getAttribute("kakaotoken");

		if (access_Token != null && !"".equals(access_Token)) {
			memberService.kakaoLogout(access_Token);
			session.removeAttribute("kakaotoken");
			session.removeAttribute("userInfo");
		} else {
			System.out.println("access_Token is null");
			// return "redirect:/";
		}
		System.out.println("kakaotoken:"+access_Token);
		// return "index";
		return "redirect:/main/main.do";
	}		
	
	
	/*네이버 로그인*/
	@Override
	@RequestMapping(value="callBack", method=RequestMethod.GET)
	public String callBack(){
		System.out.println();
		return "member/callBack";
	}
	
	@Override
	@RequestMapping(value="naverSave", method=RequestMethod.POST)
	public @ResponseBody String naverSave(@RequestParam("s_email1") String s_email1,@RequestParam("s_email2") String s_email2,
			@RequestParam("s_name") String s_name,HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session = request.getSession();
	ModelAndView mav = new ModelAndView();
	
	System.out.println(s_email1);
	System.out.println(s_email2);
	System.out.println(s_name);
	System.out.println("#############################################");

	S_memberVO naver = new S_memberVO();
	naver.setS_email1(s_email1);
	naver.setS_email2(s_email2);
	naver.setS_name(s_name);
    
	S_memberVO smember= memberService.naverLogin(naver);
	
	session.setAttribute("isLogOn", "member");
	session.setAttribute("userInfo", smember);
	
	// ajax에서 성공 결과에서 ok인지 no인지에 따라 다른 페이지에 갈 수 있게끔 result의 기본값을 "no"로 선언
		String result = "no";
	    
		if(smember!=null) {
			// naver가 비어있지 않는다는건 데이터를 잘 받아왔다는 뜻이므로 result를 "ok"로 설정
			result = "ok";
		}

		return result;
	    
		}
	
	@Override
	@RequestMapping(value = "/naverLogout", method=RequestMethod.GET)
	public String naverLogout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		
		session.removeAttribute("access_token");
		session.removeAttribute("userInfo");
		
		return "redirect:/main/main.do";
	}
}
