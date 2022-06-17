package com.myspring.Onaju.admin.adminMember.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.member.vo.MemberVO;

public interface AdminMemberService {
	public List<Map<String, Object>> listMembers(Criteria cri);
	public int memberListTotal(Criteria cri) throws Exception;
	public int memberListTotal(Map<String, Object> searchMap);
	public MemberVO memberDetail(String u_id) throws Exception;
	public int memberUpdate(MemberVO vo) throws Exception;
	public List<Map<String, Object>> searchMember(Map<String, Object> searchMap);
}
