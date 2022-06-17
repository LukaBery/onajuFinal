package com.myspring.Onaju.host.goods.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.host.goods.vo.HostGoodsVO;
import com.myspring.Onaju.host.goods.vo.HostImageFileVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;



public interface HostGoodsDAO {
	public List<HostGoodsVO> selectGoodsList(Map searchMap) throws DataAccessException;
	public HostGoodsVO selectGoodsDetail(String room_code) throws DataAccessException;
	public List<HostImageFileVO> selectGoodsDetailImage(String room_code) throws DataAccessException;
	
	
	/* 이정아 작성 */ 
	/* 사업자등록 */

	/* 이정아 작성 */ 
	/* 사업자등록 */
	public List<HostInfoVO> hostLogin(String h_id) throws DataAccessException;
	public void insertNewHostInfo(HostInfoVO hostInfoVO) throws DataAccessException;
	public int selectAllhostInfoListTotal(HostInfoVO hostInfo) throws DataAccessException;
	public List<HostInfoVO> hostInfoFormlist(HostInfoVO hostInfoVO) throws DataAccessException;
	public HostInfoVO hostInfoDetail(int h_code) throws DataAccessException;
	public void updateHostInfo(Map hostInfoMap) throws DataAccessException;
	public void deleteHostInfo(int h_code) throws DataAccessException;
	
	/* 상품관련 */
	public HostInfoVO hostInfoChange(int h_code) throws DataAccessException;
	public int insertNewGoods(Map newGoodsMap) throws DataAccessException;
	public void insertGoodsImageFile(List fileList)  throws DataAccessException;
	public List<HostGoodsVO> selectGoodsList(String h_id) throws DataAccessException;
	public HostGoodsVO selectHostGoodsDetail(int room_code) throws DataAccessException;
	public List selectHostGoodsImageFileList(int room_code) throws DataAccessException;
	public void updateHostGoodsInfo(Map goodsMap) throws DataAccessException;
	public void updateHostGoodsImage(List<HostImageFileVO> imageFileList) throws DataAccessException;
	public void insertHostGoodsImageFile(List fileList)  throws DataAccessException;
	public void deleteHostGoodsImage(int roomImage_NO) throws DataAccessException;
	public void deleteHostGoodsAllImage(int room_code) throws DataAccessException;
	public void deleteHostGoods(int room_code) throws DataAccessException;
		
}
