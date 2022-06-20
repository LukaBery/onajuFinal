package com.myspring.Onaju.admin.adminMember.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.admin.adminMember.dao.AdminMemberDAO;
import com.myspring.Onaju.member.vo.MemberVO;

@Service("adminMemberService")
public class AdminMemberServiceImpl implements AdminMemberService{
	@Autowired
	private AdminMemberDAO adminMemberDAO;
	
	@Override
	public List<Map<String, Object>> listMembers(Criteria cri) {
		return adminMemberDAO.selectAllMemberList(cri);
	}

	@Override
	public int memberListTotal(Criteria cri) throws Exception {
		return adminMemberDAO.selectAllMemberListTotal(cri);
	}
	
	@Override
	public int memberListTotal(Map<String, Object> searchMap) {
		return adminMemberDAO.selectAllMemberListTotal(searchMap);
	}
	
	@Override
	public MemberVO memberDetail(String u_id) throws Exception {
		return adminMemberDAO.selectMemberDetail(u_id);
		 
	}

	@Override
	public int memberUpdate(MemberVO vo) throws Exception {
		return adminMemberDAO.memberUpdate(vo);
	}

	@Override
	public List<Map<String, Object>> searchMember(Map<String, Object> searchMap) {
		return adminMemberDAO.selectSearchMember(searchMap);
	}

	@Override
	public int deleteMember(String u_id) {
		return adminMemberDAO.selectMemberDelete(u_id);
	}

	
}
