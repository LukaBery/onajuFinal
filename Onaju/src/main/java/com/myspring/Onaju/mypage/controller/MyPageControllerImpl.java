package com.myspring.Onaju.mypage.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.cart.service.CartService;
import com.myspring.Onaju.cart.vo.CartVO;
import com.myspring.Onaju.common.aes256.SHA256Util;
import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.member.service.MemberService;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.mypage.service.MyPageService;
import com.myspring.Onaju.order.vo.OrderVO;

@Controller("myPageController")
@RequestMapping(value="/mypage")
public class MyPageControllerImpl extends BaseController  implements MyPageController{
	@Autowired
	private MyPageService myPageService;
	
	@Autowired
	private MemberVO memberVO;	
	@Autowired
	private CartService cartService;
	@Autowired
	private MemberService memberService;



	@Override
	@ResponseBody
	@RequestMapping(value="/mypageMain.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView mypageMain(@RequestParam Map<String, String> dateMap,
			   HttpServletRequest request, HttpServletResponse response)  throws Exception {
		HttpSession session=request.getSession();
		session=request.getSession();
		String viewName=(String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		String isLogOn=(String)session.getAttribute("isLogOn");
		memberVO=(MemberVO)session.getAttribute("memberInfo");
		List<CartVO> nonmemberOrder = (ArrayList<CartVO>) session.getAttribute("nonMemberCart");
		

		if(isLogOn == null) {
			String message = "로그인이 필요합니다.";
			mav.addObject("message", message);
		}
		else if(memberVO != null){
		String u_id=memberVO.getU_id();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String checkIndate = dateMap.get("beginDate");
		String checkoutdate = dateMap.get("endDate");
		String period = dateMap.get("period");
		String period_color = dateMap.get("period_color");
		String section = dateMap.get("section");
		String pageNum = dateMap.get("pageNum");
		Map<String, Object> _dateMap = new HashMap();
		_dateMap.put("u_id", u_id);
		
		if(period_color != null && period_color != "") {
			mav.addObject("period_color", period_color);
		}
		if(checkIndate != null&& checkIndate != "") {
			
			Date checkIn = formatter.parse(checkIndate);
			_dateMap.put("checkIn_date", checkIn);
				
				mav.addObject("beginDate", checkIn);
		}
		if(checkoutdate != null  && checkoutdate != "") {
			String _checkOut = addDate(checkoutdate, 0,0,1);
			Date checkOut = formatter.parse(_checkOut);
			_dateMap.put("checkOut_date", checkOut);
			Date checkOut_view = formatter.parse(checkoutdate);
			
			mav.addObject("endDate", checkOut_view);
			
		}
		if(period != null && period != "") {
			String [] tempDate = period.split(",");
			Date checkIn = formatter.parse(tempDate[0]);
			String _checkOut = addDate(tempDate[1], 0,0,1);
			Date checkOut = formatter.parse(_checkOut);
			_dateMap.put("checkIn_date", checkIn);
			_dateMap.put("checkOut_date", checkOut);
			mav.addObject("beginDate", checkIn);
			Date checkOut_view = formatter.parse(tempDate[1]);

			mav.addObject("endDate", checkOut_view);

			
		}
		if(section== null) {
			section = "1";
		}
	
		if(pageNum== null) {
			pageNum = "1";
		}
		_dateMap.put("section",section);
		_dateMap.put("pageNum",pageNum);
		System.out.println(viewName);
		_dateMap.put("search_type", "order");
		List<OrderVO> myOrderList_fu=myPageService.listMyOrderGoods_fu(_dateMap);
		List<OrderVO> myOrderList=myPageService.listMyOrderGoods(_dateMap);
		String cnt_ = myPageService.getCnt(_dateMap);
		if(Math.floorMod(Integer.parseInt(cnt_),10) == 0) {
			int cnt_1 = (int) Math.ceil(Integer.parseInt(cnt_) / 10) ;
			
			int cnt = Math.floorMod(cnt_1,10);
			mav.addObject("cnt", cnt);
		}else {
int cnt_1 = (int) Math.ceil(Integer.parseInt(cnt_) / 10) + 1;
		
		int cnt = Math.floorMod(cnt_1,10);
		mav.addObject("cnt", cnt);
		}
		mav.addObject("myOrderList", myOrderList);
		mav.addObject("myOrderList_fu", myOrderList_fu);
		System.out.println("myOrderList:"+ myOrderList);
		mav.addObject("section", section);
		mav.addObject("pageNum", pageNum);
		}
		if(nonmemberOrder != null) {
			mav.addObject("nonmemberOrder", nonmemberOrder);
		}
		
		mav.setViewName("forward:/mypage/mypageMain");
		

		return mav;
	}

	@Override
	@RequestMapping(value="/myCart.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView myCart(@RequestParam Map<String, String> dateMap,
			   HttpServletRequest request, HttpServletResponse response)  throws Exception {
		HttpSession session=request.getSession();
		session=request.getSession();
		
		String viewName=(String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		memberVO = (MemberVO) session.getAttribute("memberInfo");
		MemberVO nonmemberVO = (MemberVO) session.getAttribute("nonmemberInfo");
		String sMember = (String) session.getAttribute("sMember");
		Map<String, Object> _dateMap = new HashMap();

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String checkIndate = dateMap.get("beginDate");
		String checkoutdate = dateMap.get("endDate");
		String period = dateMap.get("period");
		String period_color = dateMap.get("period_color");
		String section = dateMap.get("section");
		String pageNum = dateMap.get("pageNum");
	
		
		if(period_color != null && period_color != "") {
			mav.addObject("period_color", period_color);
		}
		if(checkIndate != null&& checkIndate != "") {
			
			Date checkIn = formatter.parse(checkIndate);
			_dateMap.put("checkIn_date", checkIn);
				
				mav.addObject("beginDate", checkIn);
		}
		if(checkoutdate != null  && checkoutdate != "") {
			String _checkOut = addDate(checkoutdate, 0,0,1);
			Date checkOut = formatter.parse(_checkOut);
			_dateMap.put("checkOut_date", checkOut);
			
	Date checkOut_view = formatter.parse(checkoutdate);
			
			mav.addObject("endDate", checkOut_view);
			
		}
		if(period != null && period != "") {
			String [] tempDate = period.split(",");
			Date checkIn = formatter.parse(tempDate[0]);
			String _checkOut = addDate(tempDate[1], 0,0,1);
			Date checkOut = formatter.parse(_checkOut);
			_dateMap.put("checkIn_date",checkIn);
			_dateMap.put("checkOut_date", checkOut);
			mav.addObject("beginDate", checkIn);
			Date checkOut_view = formatter.parse(tempDate[1]);

			mav.addObject("endDate", checkOut_view);

			
		}
		if(section== null) {
			section = "1";
		}
	
		if(pageNum== null) {
			pageNum = "1";
		}
		_dateMap.put("section",section);
		_dateMap.put("pageNum",pageNum);
		
		
		
		
		
		if(memberVO != null) 
		{String u_id=memberVO.getU_id();
	
		_dateMap.put("u_id", u_id);
		
		
		
			 List<CartVO> myCartList=cartService.listMyCartGoods(_dateMap); 
			
			 mav.addObject("myCartList", myCartList);
		
			
		}else if(nonmemberVO != null || sMember != null) {
			
			 List<CartVO> myCartList= (ArrayList<CartVO>) session.getAttribute("nonMemberCart");
			 mav.addObject("myCartList", myCartList); 
		}else {
			mav.setViewName("redirect:/main/main.do");

		}
		_dateMap.put("search_type", "cart");
		List<OrderVO> myOrderList=myPageService.listMyOrderGoods(_dateMap);
		String cnt_ = myPageService.getCnt(_dateMap);
		
		if(Math.floorMod(Integer.parseInt(cnt_),10) == 0) {
			int cnt_1 = (int) Math.ceil(Integer.parseInt(cnt_) / 10) ;
			
			int cnt = Math.floorMod(cnt_1,10);
			mav.addObject("cnt", cnt);
		}else {
int cnt_1 = (int) Math.ceil(Integer.parseInt(cnt_) / 10) + 1;
		
		int cnt = Math.floorMod(cnt_1,10);
		mav.addObject("cnt", cnt);
		}
		 mav.addObject("section", section);
			mav.addObject("pageNum", pageNum);
	
	
		mav.setViewName("forward:/mypage/Mypage2.do");
		

		return mav;
	}
	
	@Override
	@RequestMapping(value="/modifyMyInfo.do" ,method = RequestMethod.POST)
	public ResponseEntity modifyMyInfo(@RequestParam("attribute")  String attribute,
			                 @RequestParam("value")  String value,
			               HttpServletRequest request, HttpServletResponse response)  throws Exception {
		Map<String,String> memberMap=new HashMap<String,String>();
		String val[]=null;
		HttpSession session=request.getSession();
		memberVO=(MemberVO)session.getAttribute("memberInfo");
		String  u_id=memberVO.getU_id();
		
		
		
		System.out.println("if문 진입");
		if(attribute.equals("u_birth")){
			val=value.split(",");
			memberMap.put("u_birth_y",val[0]);
			memberMap.put("u_birth_m",val[1]);
			memberMap.put("u_birth_d",val[2]);
			
			System.out.println("생일 진입");

		}else if(attribute.equals("u_email")){
			val=value.split(",");
			memberMap.put("u_email1",val[0]);
			memberMap.put("u_email2",val[1]);
			System.out.println("이메일 진입");

		}else if(attribute.equals("address")){
			System.out.println(value);
			val=value.split(",", -1);
			System.out.println(val[0]);
			System.out.println(val[1]);
			System.out.println(val[2]);
			System.out.println(val[3]);

			memberMap.put("zipcode",val[0]);
			memberMap.put("roadAddress",val[1]);
			memberMap.put("numberAddress", val[2]);
			memberMap.put("restAddress", val[3]);
			System.out.println("주소 진입");

		}else {
			memberMap.put(attribute,value);	
		}
		
		memberMap.put("u_id", u_id);
		
		System.out.println("메서드 직전 진입");

		memberVO=(MemberVO)myPageService.modifyMyInfo(memberMap);
		System.out.println("메서드 끝 진입");

		session.removeAttribute("memberInfo");
		session.setAttribute("memberInfo", memberVO);
		System.out.println("메서드 끝 진입");

		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		message  = "mod_success";
		resEntity =new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	@Override
	@ResponseBody
	@RequestMapping(value="/deleteMember.do", method = RequestMethod.POST)
	public  ModelAndView deleteMember(@RequestParam Map<String, String> loginMap,
			                          HttpServletRequest request, HttpServletResponse response)  throws Exception{
	
	
		String u_id = loginMap.get("u_id");
		String _pw = loginMap.get("u_pw");
		HttpSession session = request.getSession(); 
		ModelAndView mav = new ModelAndView();
		String message = null;
		memberVO = memberService.login(loginMap);
		/* DB에 저장된 암호화 비밀번호 */
		String u_pw_com = memberVO.getU_pw();
		/* DB에 저장된 SALT값 */
		String salt = memberVO.getSalt();
		/* salt값을 가지고 사용자가 입력한 비밀번호 암호화 */
		String u_pw_enc = SHA256Util.getEncrypt(_pw, salt);
		Map data = new HashMap();
		if(u_pw_com.equals(u_pw_enc)) {
			myPageService.removeMember(u_id);
			mav.addObject("message","회원 탈퇴에 성공하였습니다.");
			mav.setViewName("forward:/main/main.do");
			session.invalidate();
		}else {
			mav.addObject("message","비밀번호가 일치하지 않습니다.");
			
			mav.setViewName("/mypage/delMember");
		}
	
		
	
		


		
		return mav;
	}


	@Override
	public ModelAndView deleteMemberInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
