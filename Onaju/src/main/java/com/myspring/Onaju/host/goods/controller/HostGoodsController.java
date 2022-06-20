package com.myspring.Onaju.host.goods.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.adminCommon.paging.Criteria;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;



public interface HostGoodsController {
	public ModelAndView goodsDetail(@RequestParam Map<String, String> _goodsMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	public ModelAndView searchGoodsMap(@RequestParam Map<String, String> searchMap, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	/* 이정아 작성 */
	
	

	/* 사업장 관련 */
	public ResponseEntity  addHostInfo(@ModelAttribute("hostInfoVO") HostInfoVO h_hostInfoVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView hostInfoList(@ModelAttribute("cri") Criteria cri, HttpServletRequest request, HttpServletResponse response) throws Exception ;
	public ModelAndView modifyHostDetail(@RequestParam("h_code") int h_code, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity modifyHostInfo( @RequestParam("h_code") String h_code, 
            HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ResponseEntity deleteHostInfo( @RequestParam("h_code") int h_code, 
            HttpServletRequest request, HttpServletResponse response)  throws Exception;
	/* 상품 관련 */
	public ModelAndView addNewGoodsForm (HttpServletRequest request, HttpServletResponse response) throws Exception;
	public @ResponseBody Map<String, String>  hostInfoChange(@RequestParam("h_code") int h_code, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	public ModelAndView addNewGoods(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception;
	public void addNewGoodsImage(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception;
	
	public ModelAndView hostGoodsList( HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView modiHostGoodsForm(@RequestParam("room_code") int room_code, HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ResponseEntity modiHostGoodsInfo( @RequestParam("room_code") String room_code, 
			HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public void modiHostGoodsImageInfo(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)  throws Exception;
	public void addNewHostGoodsImage(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception;
	public void  removeHostGoodsImage(@RequestParam("room_code") int room_code,@RequestParam("roomImage_NO") int roomImage_NO, @RequestParam("room_imageName") String room_imageName,
			HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ResponseEntity deleteHostGoods( @RequestParam("room_code") int room_code, 
            HttpServletRequest request, HttpServletResponse response)  throws Exception;

}
