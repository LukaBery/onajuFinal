package com.myspring.Onaju.host.goods.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.host.goods.vo.HostGoodsVO;
import com.myspring.Onaju.host.goods.vo.HostImageFileVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;

@Repository("goodsDAO")
public class HostGoodsDAOImpl implements HostGoodsDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<HostGoodsVO> selectGoodsList(Map searchMap) throws DataAccessException {
		System.out.println("다오 진입 후 매퍼");

		List<HostGoodsVO> goodsList = (ArrayList) sqlSession.selectList("mapper.hostGoods.hostGoodsList", searchMap);
		return goodsList;

	}

	@Override
	public HostGoodsVO selectGoodsDetail(String room_code) throws DataAccessException {
		System.out.println(room_code);
		HostGoodsVO hostgoodsVO = (HostGoodsVO) sqlSession.selectOne("mapper.hostGoods.hostGoodsDetail", room_code);
		System.out.println(hostgoodsVO);

		return hostgoodsVO;
	}

	@Override
	public List<HostImageFileVO> selectGoodsDetailImage(String room_code) throws DataAccessException {
		List<HostImageFileVO> imageList = (ArrayList) sqlSession.selectList("mapper.hostGoods.selectHostGoodsDetailImage",room_code);
		return imageList;
	}
	
	
	
	
	/* 이정아 작성 */
	/* 사업자 관련 */ 


	@Override
	public List<HostInfoVO> hostLogin(String h_id) throws DataAccessException{
		
		System.out.println("호스트인포 서비스");
		List<HostInfoVO> hostInfoList = (ArrayList)sqlSession.selectList("mapper.hostGoods.hostLogin",h_id); 
		   System.out.println(hostInfoList);
		return hostInfoList;
	}
	
	@Override
	public void insertNewHostInfo(HostInfoVO hostInfoVO) throws DataAccessException{
		
		sqlSession.insert("mapper.hostGoods.insertNewHostInfo",hostInfoVO);
	}
	
	@Override
	public int selectAllhostInfoListTotal(Criteria cri) throws DataAccessException {
		return sqlSession.selectOne("mapper.hostGoods.selectAllHostInfoListTotal", cri);
	}
	
	@Override
	public List<Map<String, Object>> hostInfoFormlist(Criteria cri) throws DataAccessException {
		List<Map<String, Object>>  hostInfoFormlist = sqlSession.selectList("mapper.hostGoods.selectHostInfoList",cri);
		return hostInfoFormlist;
	}
	@Override
	public List<HostInfoVO> hostInfoFormlist(HostInfoVO hostInfoVO) throws DataAccessException {
		List<HostInfoVO>  hostInfoFormlist = sqlSession.selectList("mapper.hostGoods.selectHostInfoListVO",hostInfoVO);
		return hostInfoFormlist;
	}
	@Override
	public HostInfoVO hostInfoDetail(int h_code) throws DataAccessException {
		HostInfoVO hostInfoVO = new HostInfoVO();
		hostInfoVO = (HostInfoVO)sqlSession.selectOne("mapper.hostGoods.hostInfoDetail",h_code);
		return hostInfoVO;
	}
	@Override
	public void updateHostInfo(Map hostInfoMap) throws DataAccessException {
		System.out.println("DAO의 hostInfoMap : " + hostInfoMap);
		sqlSession.update("mapper.hostGoods.updateHostInfo",hostInfoMap);
	}
	
	@Override
	public void deleteHostInfo(int h_code) throws DataAccessException{
		sqlSession.delete("mapper.hostGoods.deleteHostInfo",h_code);
	}

	@Override
	public HostInfoVO hostInfoChange(int h_code) throws DataAccessException {
		HostInfoVO hostInfoVO = new HostInfoVO();
		hostInfoVO = (HostInfoVO)sqlSession.selectOne("mapper.hostGoods.hostInfoChange", h_code);
		return hostInfoVO;
	}
	@Override
	 public int insertNewGoods(Map newGoodsMap) throws DataAccessException {
		  sqlSession.insert("mapper.hostGoods.insertNewGoods",newGoodsMap);
		  return Integer.parseInt(String.valueOf(newGoodsMap.get("room_code")));
		 }
	
	@Override
	public void insertGoodsImageFile(List fileList) throws DataAccessException {
		for (int i = 0; i < fileList.size(); i++) {
			HostImageFileVO HostImageFileVO = (HostImageFileVO) fileList.get(i);
			sqlSession.insert("mapper.hostGoods.insertGoodsImageFile", HostImageFileVO);
		}
	}
	@Override
	public List<HostGoodsVO> selectGoodsList(String h_id) throws DataAccessException {
		List<HostGoodsVO> hostGoodsList = (List) sqlSession.selectList("mapper.hostGoods.selectGoodsList", h_id);return hostGoodsList;
	}
	
	@Override
	public HostGoodsVO selectHostGoodsDetail(int room_code) throws DataAccessException{
		HostGoodsVO hostgoodsBean = new HostGoodsVO();
		hostgoodsBean = (HostGoodsVO)sqlSession.selectOne("mapper.hostGoods.selectHostGoodsDetail", room_code);
		return hostgoodsBean;
	}
	
	@Override
	public List selectHostGoodsImageFileList(int room_code) throws DataAccessException {
		List imageList=new ArrayList();
		imageList = (List)sqlSession.selectList("mapper.hostGoods.selectHostGoodsImageFileList",room_code);
		return imageList;
	}
	
	@Override
	public void updateHostGoodsInfo(Map goodsMap) throws DataAccessException {
		System.out.println("DAO의 goodsMap : " + goodsMap);
		sqlSession.update("mapper.hostGoods.updateHostGoodsInfo",goodsMap);
	}
	
	@Override
	public void updateHostGoodsImage(List<HostImageFileVO> imageFileList) throws DataAccessException {
		
		for(int i=0; i<imageFileList.size();i++){
			HostImageFileVO HostImageFileVO = imageFileList.get(i);
			sqlSession.update("mapper.hostGoods.updateHostGoodsImage",HostImageFileVO);	
		}
		
	}
	@Override
	public void insertHostGoodsImageFile(List fileList)  throws DataAccessException {
		for(int i=0; i<fileList.size();i++){
			HostImageFileVO HostImageFileVO=(HostImageFileVO)fileList.get(i);
			sqlSession.insert("mapper.hostGoods.insertHostGoodsImageFile",HostImageFileVO);
		}
	}
	
	@Override
	public void deleteHostGoodsImage(int roomImage_NO) throws DataAccessException{
		sqlSession.delete("mapper.hostGoods.deleteHostGoodsImage",roomImage_NO);
	}
	@Override
	public void deleteHostGoodsAllImage(int room_code) throws DataAccessException {
		sqlSession.delete("mapper.hostGoods.deleteHostGoodsAllImage",room_code);
	}

	@Override
	public void deleteHostGoods(int room_code) throws DataAccessException {
		sqlSession.delete("mapper.hostGoods.deleteHostGoods",room_code);
	}

	
	
}
