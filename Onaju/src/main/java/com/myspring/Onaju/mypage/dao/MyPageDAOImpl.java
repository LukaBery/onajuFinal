package com.myspring.Onaju.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.board.review.vo.ReviewVO;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.order.vo.OrderVO;

@Repository("myPageDAO")
public class MyPageDAOImpl implements MyPageDAO {
	@Autowired
	private SqlSession sqlSession;


	@Override
	public List<OrderVO> selectMyOrderGoodsList(Map _dateMap) throws DataAccessException {
		List<OrderVO> orderGoodsList = (List) sqlSession.selectList("mapper.mypage.selectMyOrderGoodsList", _dateMap);
		if (orderGoodsList != null) {
			for (int i = 0; i < orderGoodsList.size(); i++) {
				OrderVO orderVO = (OrderVO) orderGoodsList.get(i);				
					if (orderVO.getReview_state() != null && orderVO.getReview_state().equals("y")) {
						String order = orderVO.getOrder_code();
						ReviewVO reviewVO = sqlSession.selectOne("mapper.review.selectReview", order);
						if(reviewVO != null) {
						int review_num = reviewVO.getReview_num();
						String review_star = reviewVO.getReview_star();
						String review_content = reviewVO.getReview_content();
						orderVO.setReview_num(review_num);
						orderVO.setReview_star(review_star);
						orderVO.setReview_content(review_content);
						orderGoodsList.set(i, orderVO);	
						}
				}
			}
		}
		return orderGoodsList;
	}
	@Override
	public List<OrderVO> listMyOrderGoods_fu(Map _dateMap) throws DataAccessException {
		
		
			
		
		return (List) sqlSession.selectList("mapper.mypage.listMyOrderGoods_fu", _dateMap);
	}
	@Override
	public String getCnt(Map _dateMap) throws DataAccessException{
		String cnt = "";
		String search_type = (String) _dateMap.get("search_type");
		if(search_type.equals("cart")) {
			cnt = (String) sqlSession.selectOne("mapper.cart.selectMyCartGoodsList_cnt", _dateMap);
		}else if(search_type.equals("order")) {
			cnt = (String) sqlSession.selectOne("mapper.mypage.selectMyOrderGoodsList_cnt", _dateMap);
		}else if(search_type.equals("myReview")) {
			cnt = (String) sqlSession.selectOne("mapper.review.selectMyReviewList_cnt", _dateMap);
		}
		
		return cnt;
	}
	@Override
	public void updateMyInfo(Map memberMap) throws DataAccessException {
		sqlSession.update("mapper.mypage.updateMyInfo", memberMap);
	}
	@Override
	public MemberVO selectMyDetailInfo(String u_id) throws DataAccessException {
		MemberVO memberVO = (MemberVO) sqlSession.selectOne("mapper.mypage.selectMyDetailInfo", u_id);
		return memberVO;

	}

	@Override
	public void deleteMember(String u_id) throws DataAccessException {
		sqlSession.delete("mapper.mypage.deleteMember", u_id);
	}
	@Override
	public MemberVO selectdeleteMemberInfo(String u_id) throws DataAccessException{
		MemberVO memberVO=(MemberVO)sqlSession.selectOne("mapper.mypage.selectdeleteMemberInfo",u_id);
		return memberVO;
		
	}
	
}
