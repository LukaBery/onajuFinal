package com.myspring.Onaju.board.review.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
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

import com.myspring.Onaju.board.review.service.ReviewService;
import com.myspring.Onaju.board.review.vo.ReviewVO;
import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.mypage.service.MyPageService;

@Controller("reviewController")
@RequestMapping(value = "/board")
public class ReviewControllerImpl extends BaseController implements ReviewController{

	private static final String String = null;
	@Autowired
	private ReviewVO reviewVO;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private MyPageService myPageService;
	
	 
	

	@Override
	@RequestMapping(value = "/review/addReview.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ResponseEntity addNewReview(@ModelAttribute("memberVO") ReviewVO _reviewVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		String referer = (String)request.getHeader("REFERER");
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		session = request.getSession();
		try {
		MemberVO mem = (MemberVO)session.getAttribute("memberInfo");
		
		
		String u_id = mem.getU_id();
		_reviewVO.setU_id(u_id);
		reviewService.addReview(_reviewVO);
		message = "<script>";
		message += " alert('등록 완료.');";
		message += " location.href='"   + referer +"';";
	
		message += " </script>";

		}
		catch(Exception e) {

			message = "<script>";
			message += " alert('에러가 발생했습니다.');";
			message += " location.href='" + request.getContextPath() + referer;
			message += " </script>";
			e.printStackTrace();
			
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	@Override
	@RequestMapping(value = "/review/myReviewList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView myReviewList(@RequestParam Map<String, String> dateMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		session = request.getSession();
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> _dateMap = new HashMap();
		

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String checkIndate = dateMap.get("beginDate");
		String checkoutdate = dateMap.get("endDate");
		String period = dateMap.get("period");
		String period_color = dateMap.get("period_color");
		String section = dateMap.get("section");
		String pageNum = dateMap.get("pageNum");
	
		
		if(period_color != null && period_color != "") {
			mav.addObject("period_color", period_color);
		}
		if(checkIndate != null&& checkIndate != "") {
			
			Date checkIn = formatter.parse(checkIndate);
			_dateMap.put("checkIn_date", checkIn);
				
				mav.addObject("beginDate", checkIn);
		}
		if(checkoutdate != null  && checkoutdate != "") {
		String _checkOut = addDate(checkoutdate, 0,0,1);
			Date checkOut = formatter.parse(_checkOut);
			
			_dateMap.put("checkOut_date", checkOut); 
		
			
	Date checkOut_view = formatter.parse(checkoutdate);
			
			mav.addObject("endDate", checkOut_view);
			
		}
		if(period != null && period != "") {
			String [] tempDate = period.split(",");
			Date checkIn = formatter.parse(tempDate[0]);
			String _checkOut = addDate(tempDate[1], 0,0,1);
			Date checkOut = formatter.parse(_checkOut);
			_dateMap.put("checkIn_date",checkIn);
			_dateMap.put("checkOut_date", checkOut);
			mav.addObject("beginDate", checkIn);
			Date checkOut_view = formatter.parse(tempDate[1]);

			mav.addObject("endDate", checkOut_view);

			
		}
		if(section== null) {
			section = "1";
		}
	
		if(pageNum== null) {
			pageNum = "1";
		}
		_dateMap.put("section",section);
		_dateMap.put("pageNum",pageNum);
		
		
		
	
		
		

		MemberVO mem = (MemberVO)session.getAttribute("memberInfo");
		String u_id = mem.getU_id();
		_dateMap.put("u_id", u_id);
		List<ReviewVO> myReviewList = reviewService.selectReviewById(_dateMap);
		_dateMap.put("search_type", "myReview");
String cnt_ = myPageService.getCnt(_dateMap);
		
		if(Math.floorMod(Integer.parseInt(cnt_),10) == 0) {
			int cnt_1 = (int) Math.ceil(Integer.parseInt(cnt_) / 10) ;
			
			int cnt = Math.floorMod(cnt_1,10);
			mav.addObject("cnt", cnt);
		}else {
int cnt_1 = (int) Math.ceil(Integer.parseInt(cnt_) / 10) + 1;
		
		int cnt = Math.floorMod(cnt_1,10);
		mav.addObject("cnt", cnt);
		}
		 mav.addObject("section", section);
			mav.addObject("pageNum", pageNum);
	
		mav.addObject("myReviewList", myReviewList);
		
		mav.setViewName("/mypage/Mypage5");
		return mav;
	}
	
	

	@Override
	@RequestMapping(value = "/review/modReview.do", method = RequestMethod.POST)
	public ResponseEntity modReview(@ModelAttribute("reviewVO") ReviewVO reviewVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		String referer = (String)request.getHeader("REFERER");
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			reviewService.modReview(reviewVO);
			message = "<script>";
			message += " alert('수정했습니다.');";
			message += " location.href='"   + referer +"';";
		
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('에러가 발생했습니다.');";
			message += " location.href='" + request.getContextPath() + referer;
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	@Override
	@RequestMapping(value = "/review/delReview.do", method = RequestMethod.POST)
	public ResponseEntity delReview(@ModelAttribute("reviewVO") ReviewVO reviewVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		String referer = (String)request.getHeader("REFERER");
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			reviewService.delReview(reviewVO);
			message = "<script>";
			message += " alert('삭제했습니다.');";
			message += " location.href='"   + referer +"';";
		
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('에러가 발생했습니다.');";
			message += " location.href='" + request.getContextPath() + referer;
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	
}
