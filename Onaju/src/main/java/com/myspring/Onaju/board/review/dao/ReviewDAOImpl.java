package com.myspring.Onaju.board.review.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.board.review.vo.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO{
	@Autowired
	private SqlSession sqlSession;	

	@Override
	public void insertNewReview(ReviewVO reviewVO) throws DataAccessException{
		sqlSession.insert("mapper.review.insertNewReview",reviewVO);
	}
	@Override
	public void updateReviewState(int order_code) throws DataAccessException{
		sqlSession.update("mapper.review.updateReviewState",order_code);
	}
	
	@Override
	public List<ReviewVO> selectReviewListById(Map condMap) throws DataAccessException{
		List<ReviewVO> MyReviewList = sqlSession.selectList("mapper.review.selectReviewListById",condMap);
		return MyReviewList;
	}
	@Override
	public List<ReviewVO> selectReviewListByRoom(Map condMap) throws DataAccessException{
		List<ReviewVO> MyReviewList = sqlSession.selectList("mapper.review.selectReviewListByRoom",condMap);
		return MyReviewList;
	}
	@Override
	public void modReview(ReviewVO reviewVO) throws DataAccessException{
		sqlSession.update("mapper.review.modReview",reviewVO);
	}
	@Override
	public void removeReview(String review_num) throws DataAccessException{
		sqlSession.delete("mapper.review.removeReview",review_num);
	}

	@Override
	public void deleteReviewState(int order_code) throws DataAccessException{
		sqlSession.update("mapper.review.deleteReviewState",order_code);
	}

}
