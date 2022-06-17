package com.myspring.Onaju.host.goods.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.myspring.Onaju.board.review.service.ReviewService;
import com.myspring.Onaju.board.review.vo.ReviewVO;
import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.host.goods.service.HostGoodsService;
import com.myspring.Onaju.host.goods.vo.HostGoodsVO;
import com.myspring.Onaju.host.goods.vo.HostImageFileVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;
import com.myspring.Onaju.host.vo.HostVO;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.order.service.OrderService;
import com.myspring.Onaju.order.vo.OrderVO;

@Controller("hostGoodsController")
@RequestMapping(value = "/host/goods")
public class HostGoodsControllerImpl extends BaseController implements HostGoodsController {

	private static final String CURR_IMAGE_REPO_PATH = "C:\\onaju\\host_room_image";

	@Autowired
	private HostGoodsService hostGoodsService;
	@Autowired
	private HostInfoVO hostInfoVO;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private OrderService orderService;

	@Autowired
	private ReviewVO reviewVO;
	
	@RequestMapping(value = "/goodsDetail.do", method = RequestMethod.GET)
	public ModelAndView goodsDetail(@RequestParam Map<String, String> _goodsMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String room_code = _goodsMap.get("room_code");
		System.out.println("룸코드"+room_code);
		String viewName = (String) request.getAttribute("viewName");
		HttpSession session = request.getSession();
		Map goodsMap = hostGoodsService.goodsDetail(room_code);
		ModelAndView mav = new ModelAndView(viewName);
		String pageNum = _goodsMap.get("pageNum");
		if(pageNum== null) {
			pageNum = "1";
		}
		HashMap<String,Object> condMap=new HashMap<String,Object>();
		condMap.put("pageNum", pageNum);
		condMap.put("room_code", Integer.parseInt(room_code));
	
		
		List<ReviewVO> reviewList = reviewService.selectReviewByRoom(condMap);
		if(reviewList != null) {
			float total_star = 0;
			int star_count= 0;
			for(int i = 0; i < reviewList.size(); i++) {
				ReviewVO reviewVO = (ReviewVO) reviewList.get(i);		
				if(reviewVO.getReview_star() !=null ) {
					total_star += Float.parseFloat(reviewVO.getReview_star());
					star_count +=1;
					}
			}
			float star_avg = total_star / star_count;
			if(Float.isNaN(star_avg)) {
				mav.addObject("star_avg", 0);

			}else {
			mav.addObject("star_avg", star_avg);
			}
		}
		List<OrderVO> reservationList = orderService.reservationList(room_code);
		mav.addObject("reservationList", reservationList);
		mav.addObject("reviewList", reviewList);
		mav.addObject("pageNum", pageNum);

		mav.addObject("goodsMap", goodsMap);
	
		return mav;
	}
	
	
	@Override
	@RequestMapping(value= "/searchGoodsMap.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView searchGoodsMap(@RequestParam Map<String, String> searchMap, HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("메서드 진입");

		HttpSession session = request.getSession();
		ModelAndView mav=new ModelAndView();
		String viewName=(String)request.getAttribute("viewName");
		// hotel_check, motel_check, pension_check > 체크박스 체크시 on으로 반환 미 체크시 null 값 
		String checkin = searchMap.get("checkin");
		String checkout = searchMap.get("checkout");
		if(checkin != null && checkout != null &&checkin != "" &&checkout != "") {
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		Date checkIn_ = formatter.parse(checkin);
		Date checkOut_ = formatter.parse(checkout);
		String checkIn = format.format(checkIn_);
		String checkOut = format.format(checkOut_);
		searchMap.put("checkin", checkIn);

		searchMap.put("checkout", checkOut);
		}

		MemberVO mem = (MemberVO) session.getAttribute("memberInfo");
		if(mem != null ) {
			searchMap.put("u_id", mem.getU_id());
		}

		Map<String, List<HostGoodsVO>> hostgoodsMap = hostGoodsService.listGoods(searchMap);
		System.out.println("서비스 끝");
		session.removeAttribute("searchKeyword");
		searchMap.put("checkin", checkin);
		searchMap.put("checkout", checkout);
		session.setAttribute("searchKeyword", searchMap);
		mav.addObject("hostgoodsMap", hostgoodsMap);
		System.out.println(hostgoodsMap);
		mav.setViewName(viewName);

		return mav;
	}

	/* 이정아 작성 */
	
	
	
	
	
	
	
	
	
	@Override
	@RequestMapping(value = "/addHostInfo.do", method = RequestMethod.POST)
	public ResponseEntity addHostInfo(@ModelAttribute("hostInfoVO") HostInfoVO hostInfoVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		String h_id = hostVO.getH_id();
		
		
		hostInfoVO.setH_id(h_id);
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		try {
			hostGoodsService.addHostInfo(hostInfoVO);
			message = "<script>";
			message += " alert('사업자 등록 완료');";
			message += " location.href='" + request.getContextPath() + "/host/goods/hostInfoList.do';";
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('사업자 등록 실패');";
			message += " location.href='" + request.getContextPath() + "/host/main.do';";
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	
	/* 사업장 목록 */
	
	@Override
	@RequestMapping(value="/hostInfoList.do" , method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView hostInfoList(HostInfoVO hostInfo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		String viewName = (String) request.getAttribute("viewName");
		System.out.println("컨트롤러 viewName : " + viewName);
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView(viewName);
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String _h_id = hostVO.getH_id();
		hostInfo.setH_id(_h_id);
		
		int total = hostGoodsService.hostInfoListTotal(hostInfo);
		System.out.println("리스트 total : " + total);
		int totalPage = (int) Math.ceil((double)total/10);
		int viewPage = hostInfoVO.getViewPage();
		int startNO = (viewPage - 1) * 10 + 1;
		int endNO = startNO + (10 - 1);
		
		hostInfo.setStartNO(startNO);
		hostInfo.setEndNO(endNO);
		
		List<HostInfoVO> hostInfoList=hostGoodsService.hostInfoFormlist(hostInfo);
		mav.addObject("total", total);
		mav.addObject("totalPage", totalPage);
		mav.addObject("hostInfoList", hostInfoList);

		return mav;
	}
	
	
	
	@Override
	@RequestMapping(value="/modifyHostDetail.do" ,method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView modifyHostDetail(@RequestParam("h_code") int h_code, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session = request.getSession();	
		hostInfoVO = hostGoodsService.hostInfoDetail(h_code);
		System.out.println("첫번째 hostInfoVO :" + hostInfoVO);
		mav.addObject("hostInfoVO",hostInfoVO);
					
		return mav;
		}
	
		/* 사업장 수정 */ 
	@RequestMapping(value="/modifyHostInfo.do" ,method={RequestMethod.POST, RequestMethod.GET})
	public ResponseEntity modifyHostInfo( @RequestParam("h_code") String h_code, 
			                     HttpServletRequest request, HttpServletResponse response)  throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");	
		Map hostInfoMap = new HashMap();
		Enumeration enu = request.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = request.getParameter(name);
			hostInfoMap.put(name, value);		
		}
		
		int _h_code = Integer.parseInt((String) hostInfoMap.get("h_code"));
		System.out.println("컨트롤러의 h_code : " + _h_code);
		System.out.println("컨트롤러의 hostInfoMap : " + hostInfoMap);
		
		String message = null;
		ResponseEntity resEntity = null;
	    HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");

	    try {
	    	hostGoodsService.modifyHostInfo(hostInfoMap);
	    	message = "<script>";
	    	message += " alert('사업자 수정 완료');";
	    	message += " location.href='" + request.getContextPath() + "/host/goods/hostInfoList.do';";
	    	message += " </script>";

	    } catch (Exception e) {
	    	message = "<script>";
	    	message += " alert('사업자 수정 실패');";
	    	message += " location.href='" + request.getContextPath() + "/host/goods/hostInfoList.do';";
	    	message += " </script>";
	    	e.printStackTrace();
	    }
	    resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
	    return resEntity;			
	}
	
	
	@RequestMapping(value="/deleteHostInfo.do" ,method={RequestMethod.POST, RequestMethod.GET})
	public ResponseEntity deleteHostInfo( @RequestParam("h_code") int h_code, 
			                     HttpServletRequest request, HttpServletResponse response)  throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		String message = null;
		ResponseEntity resEntity = null;
	    HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");

	    try {
	    	hostGoodsService.deleteHostInfo(h_code);
	    	message = "<script>";
	    	message += " alert('사업자 삭제 완료');";
	    	message += " location.href='" + request.getContextPath() + "/host/goods/hostInfoList.do';";
	    	message += " </script>";

	    } catch (Exception e) {
	    	message = "<script>";
	    	message += " alert('사업자 삭제 실패');";
	    	message += " location.href='" + request.getContextPath() + "/host/goods/hostInfoList.do';";
	    	message += " </script>";
	    	e.printStackTrace();
	    }
	    resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
	    return resEntity;			
	}

	/* 상품 관련 */ 
	/* 등록시 화면 */
	@RequestMapping(value = "/addNewGoodsForm.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView addNewGoodsForm (HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView(viewName);
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String _h_id = hostVO.getH_id();
		System.out.println("_h_id : " + _h_id);
		hostInfoVO.setH_id(_h_id);
		
		
		List<HostInfoVO> hostInfoFormList = hostGoodsService.hostInfoFormlist(hostInfoVO);			
		mav.addObject("hostInfoFormList", hostInfoFormList); 
		return mav;			
	}
	
	@RequestMapping(value = "/hostInfoChange.do", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody Map<String, String>  hostInfoChange(@RequestParam("h_code") int h_code, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String _h_code = request.getParameter("h_code");
		System.out.println("선택 컨트롤러의  h_code : " + _h_code);
		System.out.println("대답바람");
		Map hostinfoMap = new HashMap();
		hostinfoMap = hostGoodsService.hostInfoChange(h_code);
		System.out.println("최종 hostinfoMap : " + hostinfoMap);
		return hostinfoMap;
	}
	
	/* 등록 */
	@RequestMapping(value = "/addNewGoods.do", method = { RequestMethod.POST })
	public ModelAndView addNewGoods(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception {
		
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String imageFileName = null;
		String viewName=(String)multipartRequest.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		
		Map newGoodsMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			newGoodsMap.put(name, value);
		}
		System.out.println("newGoodsMap : " + newGoodsMap);

		HttpSession session = multipartRequest.getSession();
		int h_code = Integer.parseInt((String) newGoodsMap.get("h_code"));
		
		List<HostImageFileVO> imageFileList = upload(multipartRequest);
		if (imageFileList != null && imageFileList.size() != 0) {
			for (HostImageFileVO imageFileVO : imageFileList) {
				imageFileVO.setH_code(h_code);
			}
			newGoodsMap.put("imageFileList", imageFileList);
		}
		
		String message = null;
	
		try {
			int room_code = hostGoodsService.addNewGoods(newGoodsMap);
			
			  if (imageFileList != null && imageFileList.size() != 0) { 
				  for(HostImageFileVO imageFileVO : imageFileList) { 
					  imageFileName = imageFileVO.getRoom_imageName();
			  File srcFile = new File(CURR_IMAGE_REPO_PATH + "\\" + "temp" + "\\" + imageFileName); 
			  File destDir = new File(CURR_IMAGE_REPO_PATH + "\\" + room_code);
			  FileUtils.moveFileToDirectory(srcFile, destDir, true); }}
			 
			message = "객실 등록 완료";
			
		} catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (HostImageFileVO imageFileVO : imageFileList) {
					imageFileName = imageFileVO.getRoom_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			}
			message= "실패";
		
			e.printStackTrace();
		}
		mav.addObject("message", message);
		System.out.println(message);
		mav.setViewName("forward:/host/goods/addNewGoodsForm.do");
		return mav;
	}
	/* 등록 */
	@Override
	@RequestMapping(value = "/addNewGoodsImage.do", method = { RequestMethod.POST })
	public void addNewGoodsImage(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)throws Exception {
		System.out.println("addNewGoodsImage");
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String imageFileName = null;

		Map goodsMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			goodsMap.put(name, value);
		}

		HttpSession session = multipartRequest.getSession();
		HostInfoVO hostVO = (HostInfoVO) session.getAttribute("h_hostInfo");
		int h_code = hostVO.getH_code();

		List<HostImageFileVO> imageFileList = null;
		int room_code = 0;
		try {
			imageFileList = upload(multipartRequest);
			if (imageFileList != null && imageFileList.size() != 0) {
				for (HostImageFileVO imageFileVO : imageFileList) {
					room_code = Integer.parseInt((String) goodsMap.get("room_code"));
					imageFileVO.setRoom_code(room_code);
					imageFileVO.setH_code(h_code);
				}

				hostGoodsService.addNewGoodsImage(imageFileList);
				for (HostImageFileVO imageFileVO : imageFileList) {
					imageFileName = imageFileVO.getRoom_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH + "\\" + "temp" + "\\" + imageFileName);
					File destDir = new File(CURR_IMAGE_REPO_PATH + "\\" + room_code);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
				}
			}
		} catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (HostImageFileVO imageFileVO : imageFileList) {
					imageFileName = imageFileVO.getRoom_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			}
			e.printStackTrace();
		}
	}
	/* 목록 */
	@Override
	@RequestMapping(value="/hostGoodsList.do" , method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView hostGoodsList(HttpServletRequest request, HttpServletResponse response)  throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
		System.out.println("컨트롤러 viewName : " + viewName);
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView(viewName);
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String _h_id = hostVO.getH_id();
		
		List<HostGoodsVO> hostGoodsList=hostGoodsService.selectGoodsList(_h_id);
		mav.addObject("hostGoodsList", hostGoodsList);

		return mav;
	}
	
	/* 수정시 화면 */
	@Override
	@RequestMapping(value="/modiHostGoodsForm.do" ,method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView modiHostGoodsForm(@RequestParam("room_code") int room_code, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String _h_id = hostVO.getH_id();
		System.out.println("_h_id : " + _h_id);
		hostInfoVO.setH_id(_h_id);
		
		Map goodsMap = new HashMap();
		goodsMap = hostGoodsService.hostGoodsDetail(room_code);
		System.out.println("첫번째 goodsMap :" + goodsMap);
		List<HostInfoVO> hostInfoFormList = hostGoodsService.hostInfoFormlist(hostInfoVO);
		goodsMap.put("hostInfoFormList", hostInfoFormList);
		mav.addObject("goodsMap",goodsMap);
		System.out.println("두번째 goodsMap :" + goodsMap);
			
		return mav;
		}
	/* 수정 상세 */
	@RequestMapping(value="/modiHostGoodsInfo.do" ,method={RequestMethod.POST, RequestMethod.GET})
	public ResponseEntity modiHostGoodsInfo( @RequestParam("room_code") String room_code, 
			                     HttpServletRequest request, HttpServletResponse response)  throws Exception {
		
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		Map goodsMap = new HashMap();
		Enumeration enu = request.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = request.getParameter(name);
			goodsMap.put(name, value);	
		}
		
		int room_code1 = Integer.parseInt((String) goodsMap.get("room_code"));
		System.out.println("컨트롤러의 room_code : " + room_code1);
		System.out.println("컨트롤러의 goodsMap : " + goodsMap);

		String message = null;
		ResponseEntity resEntity = null;
	    HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");

	    try {
	    	hostGoodsService.modiHostGoodsInfo(goodsMap);
	    	message = "<script>";
	    	message += " alert('객실 수정 완료');";
	    	message += " location.href='" + request.getContextPath() + "/host/goods/hostGoodsList.do';";
	    	message += " </script>";

	    } catch (Exception e) {
	    	message = "<script>";
	    	message += " alert('객실 수정 실패');";
	    	message += " location.href='" + request.getContextPath() + "/host/goods/hostGoodsList.do';";
	    	message += " </script>";
	    	e.printStackTrace();
	    }
	    resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
	    return resEntity;	
		
	}
		
		
	@RequestMapping(value="/modiHostGoodsImageInfo.do" ,method={RequestMethod.POST})
	public void modiHostGoodsImageInfo(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)  throws Exception {
		System.out.println("modiHostGoodsImageInfo");
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String room_imageName = null;
		
		Map goodsMap = new HashMap();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			goodsMap.put(name,value);
		}
		
		HttpSession session = multipartRequest.getSession();
		int h_code = Integer.parseInt((String) goodsMap.get("h_code"));
		
		List<HostImageFileVO> imageFileList=null;
		int room_code=0;
		int roomImage_NO=0;
		try {
			imageFileList =upload(multipartRequest);
			if(imageFileList!= null && imageFileList.size()!=0) {
				for(HostImageFileVO hostImageFileVO : imageFileList) {
					room_code = Integer.parseInt((String)goodsMap.get("room_code"));
					roomImage_NO = Integer.parseInt((String)goodsMap.get("roomImage_NO"));
					hostImageFileVO.setRoom_code(room_code);
					hostImageFileVO.setRoomImage_NO(roomImage_NO);
					hostImageFileVO.setH_code(h_code);
				}
				
				hostGoodsService.modiHostGoodsImage(imageFileList);
				for(HostImageFileVO  hostImageFileVO:imageFileList) {
					room_imageName = hostImageFileVO.getRoom_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+room_imageName);
					File destDir = new File(CURR_IMAGE_REPO_PATH+"\\"+ room_code);
					FileUtils.moveFileToDirectory(srcFile, destDir,true);
				}
			}
		}catch(Exception e) {
			if(imageFileList!=null && imageFileList.size()!=0) {
				for(HostImageFileVO  hostImageFileVO:imageFileList) {
					room_imageName = hostImageFileVO.getRoom_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+room_imageName);
					srcFile.delete();
				}
			}
			e.printStackTrace();
		}
		
	}
	
	/* 이미지 수정 반영 안됨 다시 볼 것 */ 
	
	@Override
	@RequestMapping(value="/addNewHostGoodsImage.do" ,method={RequestMethod.POST})
	public void addNewHostGoodsImage(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception {
		System.out.println("addNewGoodsImage");
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String room_imageName=null;
		
		Map goodsMap = new HashMap();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			goodsMap.put(name,value);
		}
		
		HttpSession session = multipartRequest.getSession();
		int h_code = Integer.parseInt((String) goodsMap.get("h_code"));
		
		List<HostImageFileVO> imageFileList=null;
		int room_code=0;
		try {
			imageFileList =upload(multipartRequest);
			if(imageFileList!= null && imageFileList.size()!=0) {
				for(HostImageFileVO hostImageFileVO : imageFileList) {
					room_code = Integer.parseInt((String)goodsMap.get("room_code"));
					hostImageFileVO.setRoom_code(room_code);
					hostImageFileVO.setH_code(h_code);
				}
				
				hostGoodsService.addNewHostGoodsImage(imageFileList);
				for(HostImageFileVO  hostImageFileVO:imageFileList) {
					room_imageName = hostImageFileVO.getRoom_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\" + "temp"+"\\" + room_imageName);
					File destDir = new File(CURR_IMAGE_REPO_PATH+"\\" + room_code);
					FileUtils.moveFileToDirectory(srcFile, destDir,true);
				}
			}
		}catch(Exception e) {
			if(imageFileList != null && imageFileList.size()!=0) {
				for(HostImageFileVO  hostImageFileVO:imageFileList) {
					room_imageName = hostImageFileVO.getRoom_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\" + "temp" + "\\" + room_imageName);
					srcFile.delete();
				}
			}
			e.printStackTrace();
		}
	}
	
	@Override
	@RequestMapping(value="/removeHostGoodsImage.do" ,method={RequestMethod.POST})
	public void  removeHostGoodsImage(@RequestParam("room_code") int room_code,
			                      @RequestParam("roomImage_NO") int roomImage_NO,
			                      @RequestParam("room_imageName") String room_imageName,
			                      HttpServletRequest request, HttpServletResponse response)  throws Exception {
		
		hostGoodsService.removeHostGoodsImage(roomImage_NO);
		try{
			File srcFile = new File(CURR_IMAGE_REPO_PATH+"\\"+room_code+"\\"+room_imageName);
			srcFile.delete();
		}catch(Exception e) {
			e.printStackTrace();
		}		
	}

	@RequestMapping(value="/deleteHostGoods.do" ,method={RequestMethod.POST, RequestMethod.GET})
	public ResponseEntity deleteHostGoods( @RequestParam("room_code") int room_code, 
			                     HttpServletRequest request, HttpServletResponse response)  throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
	
		System.out.println("삭제 컨트롤러 들어왔음 응답");
		System.out.println("삭제 컨트롤러의 room_code : " + room_code);
		
		String message = null;
		ResponseEntity resEntity = null;
	    HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");

	    try {
	    	hostGoodsService.deleteHostGoodsAllImage(room_code);
	    	
	    	
	    	File folder = new File(CURR_IMAGE_REPO_PATH+"\\"+room_code);
	    	if (folder.exists()) {
			  	  FileUtils.cleanDirectory(folder);//하위 폴더와 파일 모두 삭제
			  	  //isDirectory()경로에 있는 객체가 folder이면 true아니면 false
			    if (folder.isDirectory()) {
			      folder.delete(); // 대상폴더 삭제
			      System.out.println(folder + "폴더가 삭제되었습니다.");
			    }
			    }else {
			    	System.out.println("대실패");
			    }
	    	
	    	hostGoodsService.deleteHostGoods(room_code);
	    	message = "<script>";
	    	message += " alert('객실 삭제 완료');";
	    	message += " location.href='" + request.getContextPath() + "/host/goods/hostGoodsList.do';";
	    	message += " </script>";

	    } catch (Exception e) {
	    	message = "<script>";
	    	message += " alert('객실 삭제 실패');";
	    	message += " location.href='" + request.getContextPath() + "/host/goods/modiHostGoodForm.do';";
	    	message += " </script>";
	    	e.printStackTrace();
	    }
	    resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
	    return resEntity;	
		
	}
	

}