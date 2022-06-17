package com.myspring.Onaju.host.community.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.host.community.vo.HostCommunityVO;
@Repository("hostCommunityDAO")
public class HostCommunityDAOImpl implements HostCommunityDAO {
	@Autowired
	private SqlSession sqlSession;
	
	/* 커뮤니티 글 등록시 첫번째 사업장 정보 나오는 페이지 */ 
	@Override
	public List<HostCommunityVO> selectCommunityList(int h_code) throws DataAccessException {
			
		List<HostCommunityVO> hostCommunityList = (ArrayList)sqlSession.selectList("mapper.hostCommunity.selectCommunityList",h_code); 
		   System.out.println(hostCommunityList);
		return hostCommunityList;
	}
	
	/* 커뮤니티 글 등록시 두번째 객실번호에 대한 정보 나오는 페이지 */ 
	@Override
	public HostCommunityVO selectCommunityView(int room_code) throws DataAccessException{
		HostCommunityVO goodsBean = new HostCommunityVO();
		goodsBean=(HostCommunityVO)sqlSession.selectOne("mapper.hostCommunity.selectCommunityView",room_code);
	
		return goodsBean;
	}
	@Override
	public List slideView(int room_code) throws DataAccessException {
		List imageList=new ArrayList();
		imageList=(List)sqlSession.selectList("mapper.hostCommunity.slideView",room_code);
		return imageList;
	}
	
	@Override
	public void insertNewCommunity(HostCommunityVO hostCommunityVO) throws DataAccessException{
		System.out.println("hostCommunityVO DAO부분#####: " + hostCommunityVO);
		sqlSession.insert("mapper.hostCommunity.insertNewCommunity",hostCommunityVO);
	}
	

	@Override
	public List<HostCommunityVO> hostAllCommunityList(String h_id) throws DataAccessException {
		List<HostCommunityVO> hostAllCommunityList = (ArrayList) sqlSession.selectList("mapper.hostCommunity.hostAllCommunityList", h_id);
		System.out.println("hostAllCommunityList#########"+hostAllCommunityList);
		return hostAllCommunityList;
	}
	
	@Override
	public HostCommunityVO modCommunity(int cmnNum)throws DataAccessException{
		HostCommunityVO hostCommunityVO= new HostCommunityVO();
		hostCommunityVO = (HostCommunityVO) sqlSession.selectOne("mapper.hostCommunity.modCommunity", cmnNum);
		System.out.println("modCommunity#########"+hostCommunityVO);
		return hostCommunityVO;
		
	}
	
	@Override
	public void updateHostCommunity(HostCommunityVO hostCommunityVO) throws DataAccessException{
		sqlSession.update("mapper.hostCommunity.updateHostCommunity",hostCommunityVO);
	}
	
	@Override
	public void deleteHostCommunity(int cmnNum) throws DataAccessException{
		sqlSession.delete("mapper.hostCommunity.deleteHostCommunity",cmnNum);
	}

	@Override
	public void addLike(Map likeMap) throws DataAccessException{
		sqlSession.insert("mapper.hostCommunity.addLike",likeMap);
	}

	@Override
	public void delLike(Map likeMap) throws DataAccessException{
		sqlSession.delete("mapper.hostCommunity.delLike",likeMap);
	}

	@Override
	public String get_likeId(Map likeMap) throws DataAccessException{
		return sqlSession.selectOne("mapper.hostCommunity.get_likeId",likeMap);
	}

	@Override
	public List<HostCommunityVO> comunityList_best(Map searchMap) throws DataAccessException {
		List<HostCommunityVO> hostAllCommunityList = (ArrayList) sqlSession.selectList("mapper.hostCommunity.comunityList_best", searchMap);
		System.out.println("hostAllCommunityList#########"+hostAllCommunityList);
		return hostAllCommunityList;
	}
	@Override
	public void updateHit(int cmnNum) throws DataAccessException{
		sqlSession.update("mapper.hostCommunity.updateHit",cmnNum);
	}
	@Override
	public String getCnt() throws DataAccessException{
		return sqlSession.selectOne("mapper.hostCommunity.getCnt_newest");
	}
	
	
}
