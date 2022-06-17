package com.myspring.Onaju.order.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.cart.service.CartService;
import com.myspring.Onaju.cart.vo.CartVO;
import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.host.goods.service.HostGoodsService;
import com.myspring.Onaju.host.goods.vo.HostGoodsVO;
import com.myspring.Onaju.member.service.MemberService;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.order.service.OrderService;
import com.myspring.Onaju.order.vo.OrderVO;



@Controller("orderController")
@RequestMapping(value="/order")
public class OrderControllerImpl extends BaseController implements OrderController{
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderVO orderVO;
	@Autowired
	private HostGoodsService hostGoodsService;
	@Autowired
	private CartService cartService;
	@Autowired
	private MemberService memberService;
@Autowired
private CartVO cartVO;
	@RequestMapping(value="/orderEachGoods.do" ,method = RequestMethod.POST)
	public ModelAndView orderEachGoods(@RequestParam Map<String, String> receiverMap,
			                       HttpServletRequest request, HttpServletResponse response)  throws Exception{
		System.out.println("오더이치굿즈");

	
		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		String viewName=(String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);

		
		String isLogOn=(String)session.getAttribute("isLogOn");
		String action=(String)session.getAttribute("action");
		System.out.println(isLogOn);

		if(isLogOn==null){
		
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
			String checkIndate = receiverMap.get("checkIn_date");
			Date checkIn = formatter.parse(checkIndate);
			String checkoutdate = receiverMap.get("checkOut_date");
			Date checkout = formatter.parse(checkoutdate);
			
			String room_code = receiverMap.get("room_code");
			int people_count = Integer.parseInt(receiverMap.get("people_count").replaceAll("[^0-9]",""));
			int room_fee = Integer.parseInt(receiverMap.get("room_fee"));
			int checkDate = Integer.parseInt(receiverMap.get("checkDate"));
			int total = room_fee * checkDate;
			String h_code = receiverMap.get("h_code");
			cartVO.setH_code(h_code);
			cartVO.setTotal(total);
			cartVO.setPeople_count(people_count);
			cartVO.setRoom_fee(room_fee);
			cartVO.setRoom_code(room_code);	
			cartVO.setCheckIn_date(checkIn);
			cartVO.setCheckOut_date(checkout);
			session.setAttribute("orderVO", cartVO);
			session.setAttribute("action", "/order/orderEachGoods.do");
			return new ModelAndView("redirect:/member/loginForm.do");
		}else{
			 if(action!=null && action.equals("/order/orderEachGoods.do")){
				 CartVO _cart = (CartVO) session.getAttribute("orderVO");
				mav.addObject("orderVO", _cart);
				 
				session.removeAttribute("orderVO");
				session.removeAttribute("action");
			 }else {
					SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
					String checkIndate = receiverMap.get("checkIn_date");
					Date checkIn = formatter.parse(checkIndate);
					String checkoutdate = receiverMap.get("checkOut_date");
					Date checkout = formatter.parse(checkoutdate);
					System.out.println(checkIn);
					String room_code = receiverMap.get("room_code");
					int people_count = Integer.parseInt(receiverMap.get("people_count").replaceAll("[^0-9]",""));
					int room_fee = Integer.parseInt(receiverMap.get("room_fee"));
					int checkDate = Integer.parseInt(receiverMap.get("checkDate"));
					int total = room_fee * checkDate;
					String h_code = receiverMap.get("h_code");
					cartVO.setH_code(h_code);

					cartVO.setTotal(total);
					cartVO.setPeople_count(people_count);
					cartVO.setRoom_fee(room_fee);
					cartVO.setRoom_code(room_code);	
					cartVO.setCheckIn_date(checkIn);
					cartVO.setCheckOut_date(checkout);
					mav.addObject("orderVO", cartVO);
				System.out.println("액션 널");
			 }
		 }
		MemberVO memberInfo=(MemberVO)session.getAttribute("memberInfo");
		MemberVO nonmemberInfo=(MemberVO)session.getAttribute("nonmemberInfo");
		
		if(memberInfo != null) {
		cartVO.setU_id(memberInfo.getU_id());
		}else if(nonmemberInfo != null) {
			System.out.println("비회원 주문 성공");

		}else {
			System.out.println("안들어가짐; 주문 성공");

		}
		
		
		
		String room_code = receiverMap.get("room_code");
		
		
		Map goodsMap = hostGoodsService.goodsDetail(room_code);
		HostGoodsVO hostGoodsVo = (HostGoodsVO) goodsMap.get("goodsVO");
		mav.addObject("goodsVO", hostGoodsVo);
		System.out.println("어레이리스트 전");
		
		
System.out.println("리스트 추가완료");	
	
		System.out.println("멤버 인포 완료");

		
		session.setAttribute("orderer", memberInfo);
		mav.setViewName("forward:/order/reservationForm.do");

		return mav;
	}
	@RequestMapping(value="/orderCartGoods.do" ,method = RequestMethod.POST)
	public ModelAndView orderCartGoods(@RequestParam Map<String, String> receiverMap,
			                       HttpServletRequest request, HttpServletResponse response)  throws Exception{
		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		String viewName=(String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		MemberVO memberInfo=(MemberVO)session.getAttribute("memberInfo");
		SimpleDateFormat formatter = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);
		String checkIndate = receiverMap.get("checkIn_date");
		 Date checkIn = formatter.parse(checkIndate); 
		String checkoutdate = receiverMap.get("checkOut_date");
		 Date checkout = formatter.parse(checkoutdate); 
			String cart_code = receiverMap.get("cart_code");
		String room_code = receiverMap.get("room_code");
		int people_count = Integer.parseInt(receiverMap.get("people_count").replaceAll("[^0-9]",""));
		int room_fee = Integer.parseInt(receiverMap.get("room_fee"));
		long diff = checkout.getTime() - checkIn.getTime();
        TimeUnit time = TimeUnit.DAYS; 
        int checkDate = (int)time.convert(diff, TimeUnit.MILLISECONDS);
        String h_code = receiverMap.get("h_code");
        int total = room_fee * checkDate;
		cartVO.setH_code(h_code);

		cartVO.setTotal(total);
		cartVO.setPeople_count(people_count);
		cartVO.setRoom_fee(room_fee);
		cartVO.setRoom_code(room_code);	
		cartVO.setCheckIn_date(checkIn);
		cartVO.setCheckOut_date(checkout);
		if(memberInfo != null) {
			cartVO.setU_id(memberInfo.getU_id());
		}
		
		mav.addObject("orderVO", cartVO);
		mav.addObject("cart_code", cart_code);
		Map goodsMap = hostGoodsService.goodsDetail(room_code);
		HostGoodsVO hostGoodsVo = (HostGoodsVO) goodsMap.get("goodsVO");
		mav.addObject("goodsVO", hostGoodsVo);
		mav.setViewName("forward:/order/reservationForm.do");

		return mav;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/payToOrderGoods.do" ,method = RequestMethod.POST)
	public Map<String, String> payToOrderGoods(@RequestBody Map<String, String> receiverMap,
			                       HttpServletRequest request, HttpServletResponse response)  throws Exception{
		String viewName=(String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session=request.getSession();
		String isLogOn = (String)session.getAttribute("isLogOn");
		String action = (String)session.getAttribute("action");
		MemberVO memberVO=(MemberVO)session.getAttribute("memberInfo");
		MemberVO nonmemberVO=(MemberVO)session.getAttribute("nonmemberInfo");
	
		if(isLogOn == "" || isLogOn == null) {
			mav.setViewName("redirect:/member/loginForm.do");
			
		}
		else if(memberVO != null){
			
			String u_id=memberVO.getU_id();
			orderVO.setU_id(u_id);
			receiverMap.put("u_id", u_id);
		
		
		}
	
			SimpleDateFormat dt = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.ENGLISH); 
			
			orderVO.setOrder_name(receiverMap.get("order_name"));
			orderVO.setOrder_phone(receiverMap.get("order_phone"));
			orderVO.setOrder_email1(receiverMap.get("order_email1"));
			orderVO.setOrder_email2(receiverMap.get("order_email2"));
			System.out.println("오더리스트 이프문 진입");
			orderVO.setRoom_code(receiverMap.get("room_code"));
			orderVO.setH_code(receiverMap.get("h_code"));
			String cart_code = (String)receiverMap.get("cart_code");
			System.out.println("카트코드@@@@@@@@@@@@@@@@@"+ cart_code);
			String checkin = receiverMap.get("checkIn_date");
			System.out.println(checkin);
			  orderVO.setCheckIn_date(dt.parse(receiverMap.get("checkIn_date")));

			  orderVO.setCheckOut_date(dt.parse(receiverMap.get("checkOut_date")));
			 
			String room_code = orderVO.getRoom_code();
			System.out.println(room_code);
			orderVO.setPeople_count(Integer.parseInt(receiverMap.get("people_count").replaceAll("[^0-9]","")));
			int people_count = orderVO.getPeople_count();
			System.out.println(people_count);
			orderVO.setRoom_fee(Integer.parseInt(receiverMap.get("room_fee")));	
			int room_fee = orderVO.getRoom_fee();
			System.out.println(room_fee);
			orderVO.setPay_type(receiverMap.get("pay_type"));	
			/* orderVO.setDiscount(Float.parseFloat(receiverMap.get("discount"))); */
			orderVO.setTotal(Integer.parseInt(receiverMap.get("total")));	
			orderVO.setPay_state("결재 완료");
	
		
			System.out.println("애드 멤버 메서드 진입");
	    orderService.addNewOrder(orderVO);
		System.out.println("애드 메서드 끝 ");
		
		cartService.removeCartGoods(cart_code);
		MemberVO _memberVO = memberService.login(receiverMap);
		session.removeAttribute("memberInfo");
		session.setAttribute("memberInfo", _memberVO);
		mav.addObject("myOrderInfo",receiverMap);
		mav.addObject("orderVO", orderVO);
	
		return receiverMap;
	}

	@Override
	@RequestMapping(value="/requestRefund.do", method = RequestMethod.GET)
	public ModelAndView requestRefund(@RequestParam("order_code") String order_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		orderService.requestRefund(order_code);
		String viewName=(String)request.getAttribute("viewName");

		ModelAndView mav = new ModelAndView(viewName);
		mav.setViewName("redirect:/mypage/mypageMain.do");

		return mav;
		
		
	}
}
