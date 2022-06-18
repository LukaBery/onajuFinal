package com.myspring.Onaju.admin.adminOrder.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

@Repository("adminOrderDAO")
public class AdminOrderDAOImpl implements AdminOrderDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Map<String, Object>> selectAllOrderList(Criteria cri) {
		return sqlSession.selectList("mapper.admin.order.selectAllOrderList", cri);
	}
	@Override
	public List<Map<String, Object>> selectAllOrderList(String u_id) {
		return sqlSession.selectList("mapper.admin.order.selectOneOrderList", u_id);
	}
	
	@Override
	public AdminOrderVO selectOrderDetail(String order_code) {
		return sqlSession.selectOne("mapper.admin.order.selectOrderDetail", order_code);
	}

	@Override
	public int selectOrderCancel(String order_code) {
		return sqlSession.update("mapper.admin.order.selectOrderCancel", order_code);	
	}
	
	@Override
	public int selectOrderListTotal(Criteria cri) {
		return sqlSession.selectOne("mapper.admin.order.selectOrderListTotal", cri);
	}
	@Override
	public int selectOrderUpdate(AdminOrderVO orderVO) {
		return sqlSession.update("mapper.admin.order.selectOrderUpdate", orderVO);
	}

	

}
