package com.myspring.Onaju.board.review.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.board.review.vo.ReviewVO;

public interface ReviewController {
	public ResponseEntity addNewReview(@ModelAttribute("memberVO") ReviewVO _reviewVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	public ModelAndView myReviewList(@RequestParam Map<String, String> _pageNum,HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	public ResponseEntity modReview(@ModelAttribute("reviewVO") ReviewVO reviewVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	public ResponseEntity delReview(@ModelAttribute("reviewVO") ReviewVO reviewVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
}
