package com.myspring.Onaju.board.review.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.board.review.vo.ReviewVO;

public interface ReviewService {
	public void addReview(ReviewVO reviewVO) throws Exception;
	public List<ReviewVO> selectReviewById(Map condMap) throws Exception;
	public void modReview(ReviewVO reviewVO) throws Exception;
	public List<ReviewVO> selectReviewByRoom(Map condMap) throws Exception;

	public void delReview(ReviewVO reviewVO) throws Exception;
}
