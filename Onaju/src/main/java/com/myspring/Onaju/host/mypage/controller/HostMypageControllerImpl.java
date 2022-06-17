package com.myspring.Onaju.host.mypage.controller;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.host.mypage.service.HostMypageService;
import com.myspring.Onaju.host.service.HostService;
import com.myspring.Onaju.host.vo.HostVO;

@Controller("hostMypageController")
@RequestMapping(value="/host/mypage")
public class HostMypageControllerImpl extends BaseController implements HostMypageController {
	private static final String CURR_IMAGE_REPO_PATH_HOST = "C:\\onaju\\host_profile";
	@Autowired 
	private HostMypageService hostMypageServie;
	@Autowired 
	private HostService hostServie;
	@Autowired
	private HostVO hostVO;
	

	@Override
	@RequestMapping(value="/modifyHostMyInfo.do" ,method={RequestMethod.POST, RequestMethod.GET})
	public ResponseEntity modifyHostMyInfo(@RequestParam("h_id") String h_id, 
            HttpServletRequest request, HttpServletResponse response) throws Exception { 
		
		System.out.println("컨트롤러 진입 확인");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		Map hostMap = new HashMap();
		Enumeration enu = request.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = request.getParameter(name);
			hostMap.put(name, value);	
		}
	
		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		String _h_id = hostVO.getH_id();
		System.out.println("hostVO의 _h_id: " + _h_id); 
		hostMap.put("h_id", _h_id);
		
		String message = null;
		ResponseEntity resEntity = null;
	    HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");

	    try {
	    	hostVO=(HostVO)hostMypageServie.modifyHostMyInfo(hostMap);
			session.removeAttribute("hostInfo");
			session.setAttribute("hostInfo", hostVO);
			System.out.println("업데이트 후의 hostVO : " + hostVO);
	    	message = "<script>";
	    	message += " alert('회원정보 수정 완료');";
	    	message += " location.href='" + request.getContextPath() + "/host/mypage/hostMypageDetail.do';";
	    	message += " </script>";

	    } catch (Exception e) {
	    	message = "<script>";
	    	message += " alert('회원정보 수정 실패');";
	    	message += " location.href='" + request.getContextPath() + "/host/mypage/hostMypageDetail.do';";
	    	message += " </script>";
	    	e.printStackTrace();
	    }
	    resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
	    return resEntity;	
	}
	
	@Override
	@RequestMapping(value = "/uploadHostProfile.do", method = { RequestMethod.POST })
	public ModelAndView uploadHostProfile( MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception{

		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String imageFileName = null;
		String viewName = (String) multipartRequest.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		

		Map newHostMap = new HashMap();
		
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			newHostMap.put(name, value);
		}
		
		String h_id = (String) newHostMap.get("h_id");
		HttpSession session = multipartRequest.getSession();
		HostVO hostInfo = (HostVO) session.getAttribute("hostInfo");
		String h_imageName = hostInfo.getH_imageName();
		System.out.println("갖고오긴 하나 h_imageName : " + h_imageName);
		
		
		if(h_imageName != "" || h_imageName != null) { // 이미지가 있을시 삭제 하는 구문
			deleteFileHostProFile(h_imageName, h_id);
			
		}
		
		
		List<HostVO> imageFileList = hostProfileupload(multipartRequest);
		if (imageFileList != null && imageFileList.size() != 0) {
			for (HostVO imageFileVO : imageFileList) {
				imageFileVO.setH_id(h_id);
							
			}
			newHostMap.put("imageFileList", imageFileList);
		}

		String message = null;

		try {
			hostMypageServie.addNewHostProfile(newHostMap);

			if (imageFileList != null && imageFileList.size() != 0) {
				for (HostVO imageFileVO : imageFileList) {
					imageFileName = imageFileVO.getH_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH_HOST + "\\" + "temp" + "\\" + imageFileName);
					File destDir = new File(CURR_IMAGE_REPO_PATH_HOST + "\\" + h_id);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
				}
			}

			message = "프로필 등록 완료";

		} catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (HostVO imageFileVO : imageFileList) {
					imageFileName = imageFileVO.getH_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH_HOST + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			}
			message = "프로필 등록 실패.";

			e.printStackTrace();
		}
	    HostVO mem = (HostVO) hostServie.h_login(newHostMap);
	  
	    session.removeAttribute("hostInfo");
	    session.setAttribute("hostInfo", mem);
	    System.out.println("hostInfo :  "  + hostInfo);
		mav.addObject("message", message);
		mav.setViewName("forward:/host/mypage/hostMypageDetail.do");
		return mav;
	}
	
	@Override
	@ResponseBody
	@RequestMapping(value="/deleteMember.do", method = RequestMethod.POST)
	public  ModelAndView deleteMember(@RequestParam Map<String, String> loginMap,
			                          HttpServletRequest request, HttpServletResponse response)  throws Exception{
	
	
		String h_id = loginMap.get("h_id");
		String _pw = loginMap.get("h_pw");
		System.out.println("h_id: " + h_id);
		System.out.println("_pw: " + _pw);
		HttpSession session = request.getSession(); 
		ModelAndView mav = new ModelAndView();
		String message = null;
		
		hostVO = hostServie.h_login(loginMap); 
		/* DB에 저장된 암호화 비밀번호 */
		String h_pw_com = hostVO.getH_pw(); 
		/* DB에 저장된 SALT값 */
		//String salt = hostVO.getSalt();
		
		/* salt값을 가지고 사용자가 입력한 비밀번호 암호화 */
		//String h_pw_enc = SHA256Util.getEncrypt(_pw, salt);
		System.out.println("h_pw_com : " + h_pw_com);
		System.out.println("_pw : " + _pw);
		//System.out.println("h_pw_enc : " + h_pw_enc);
		
		
		 Map data = new HashMap(); 
		 System.out.println("data : " + data);
		
		
		if(h_pw_com.equals(_pw)) {
			hostMypageServie.removeHost(h_id);
			mav.addObject("message","회원 탈퇴에 성공하였습니다.");
			mav.setViewName("forward:/main/main.do");
			session.invalidate();
		}else {
			mav.addObject("message","비밀번호가 일치하지 않습니다.");
			mav.setViewName("/host/mypage/dropOut.do");
		}
		return mav;
	}
	
	/*
	 * @Override public ModelAndView deleteMemberInfo(HttpServletRequest request,
	 * HttpServletResponse response) throws Exception { // TODO Auto-generated
	 * method stub return null; }
	 * 
	 */	
	
				
}
