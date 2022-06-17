package com.myspring.Onaju.admin.adminMember.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.member.vo.MemberVO;

public interface AdminMemberDAO {
	public List<Map<String, Object>> selectAllMemberList(Criteria cri) throws DataAccessException;
	public int selectAllMemberListTotal(Criteria cri);
	public int selectAllMemberListTotal(Map<String, Object> searchMap);
	public MemberVO selectMemberDetail(String u_id) throws DataAccessException;
	public int memberUpdate(MemberVO vo) throws DataAccessException;
	public List<Map<String, Object>> selectSearchMember(Map<String,Object> searchMap);
	public int selectMemberDelete(String u_id);
}
