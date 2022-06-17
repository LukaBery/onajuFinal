package com.myspring.Onaju.admin.adminOrder.dao;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

public interface AdminOrderDAO {
	public List<Map<String, Object>> selectAllOrderList(Criteria cri);
	public List<Map<String, Object>> selectAllOrderList(String u_id);
	public int selectOrderListTotal(Criteria cri);
	public AdminOrderVO selectOrderDetail(String order_code);
	public int selectOrderCancel(String order_code);

}
