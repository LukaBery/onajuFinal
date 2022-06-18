package com.myspring.Onaju.admin.adminOrder.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminOrder.vo.AdminOrderVO;

public interface AdminOrderService {
	public List<Map<String, Object>> ordersList(Criteria cri);
	public List<Map<String, Object>> ordersList(String u_id);
	public int orderListTotal(Criteria cri);
	public AdminOrderVO orderDetail(String order_code);
	public int orderCancel(String order_code);
	public int orderUpdate(AdminOrderVO orderVO);
}
