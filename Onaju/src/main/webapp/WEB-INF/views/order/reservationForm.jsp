
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="order" value="${orderVO}" />
<c:set var="goods" value="${goodsVO}" />

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">


<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

   /*   결재 버튼 클릭시 아임포트 API 실행 */
	$(document).ready(function() {
		$('#btbt3').click(function() {
	
				var result = confirm('결제를 계속 진행하시겠습니까??');
				if (result) { //yes 
					iamport();
				} else { //no
				}
		});
	});
   /* 아임포트 결재API */
	function iamport() {
		//가맹점 식별코드
				var _order_name = document.getElementById("order_name");
				var _order_phone = document.getElementById("order_phone");
				var _order_email1 = document.getElementById("order_email1");
				var _order_email2 = document.getElementById("order_email2");

		
				if (_order_name.value == "") { 
					alert("주문자 성함을 적어주세요");
					_order_name.focus(); 
					return false;
				}
				;
				if (_order_phone.value == "") { 
					alert("전화번호를 입력해주세요");
					_order_phone.focus(); 
					return false;
				}
				;
				if (_order_email1.value == "") { 
					alert("이메일을 입력해주세요");
					_order_email1.focus(); 
					return false;
				}
				;
				if (_order_email2.value == "") { 
					alert("이메일 주소를 선택해주세요");
					_order_email2.focus(); 
					return false;
				}
				;
		
		
		IMP.init('imp97909068');
		IMP.request_pay({
			pg : 'html5_inicis',
			pay_method : 'kakaopay',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : $("#inputCode").val(), //결제창에서 보여질 이름
			amount : $("#total").val(), //실제 결제되는 가격
			buyer_email : $("#inputCode").val(),
			buyer_name : '구매자이름',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울 강남구 도곡동',
			buyer_postcode : '123-456'
		}, function(rsp) { //성공시 실행 메서드

			console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
			
				var _room_code = $("#room_code").val();
				var _checkIn_date = $("#checkIn_date").val().trim();
				var _checkOut_date = $("#checkOut_date").val().trim();
				
				var _order_name = $("#order_name").val().trim();
				var _order_phone = $("#order_phone").val().trim();
				var _people_count = $("#people_count").val().trim();
				var _room_fee = $("#room_fee").val().trim();
				var _total = $("#total").val().trim();
				var _h_code = $("#h_code").val().trim();
				var _order_email1 = $("#order_email1").val().trim();
				var _order_email2 = $("#order_email2").val().trim();
				var _cart_code = $("#cart_code").val().trim();
				var _title = $("#title").val().trim();
				var _room_imageName = $("#room_imageName").val().trim();
				var _content = $("#content").val().trim();
				
				var form = {
					"room_code" : _room_code,
					"checkIn_date" : _checkIn_date,
					"checkOut_date" : _checkOut_date,
					"people_count" : _people_count,
					"room_fee" : _room_fee,
					"pay_type" : rsp.pay_method,
					"total" : _total,
					"h_code" : _h_code,
					"order_name" : _order_name,
					"order_phone" : _order_phone,
					"order_email1" : _order_email1,
					"order_email2" : _order_email2,
					"cart_code" : _cart_code,
					"title" : _title,
					"room_imageName" : _room_imageName,
					"content" : _content

					
					}
				
				$.ajax({
					url : "${contextPath}/order/payToOrderGoods.do",
					data : JSON.stringify(form, ['room_code', 'checkIn_date', 'checkOut_date', 'people_count', 'room_fee', 'pay_type', 'total','h_code', 'order_name', 
						'order_phone','order_email1', 'order_email2', 'cart_code', 'title', 'room_imageName', 'content']),
					dataType : "JSON",
					type : "post",
					contentType : "application/json; charset=utf-8;",
					async : false,
					
					success : function(data) {
					
						alert("주문 완료.");
						location.href="${contextPath}/mypage/mypageMain.do";
						
					},
					error : function() {
						alert("네트워크가 불안정합니다. 다시 시도해 주세요.222");
					}
				})
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			

		});
	}
   
	function change_email() {
		var u_email2 = document.getElementById("order_email2");
		var email_sel = document.getElementById("email_sel");

		//지금 골라진 옵션의 순서와 값 구하기
		var idx = email_sel.options.selectedIndex;
		var val = email_sel.options[idx].value;

		u_email2.value = val;
	}
 
   
  /*  뒤로가기 버튼 */
	function goBack(){
		window.history.back();
	}
	
  
  
</script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>
<body>
	<section class="allbody">
		<section class="hb_section_1">
			<div class="hb_rec_1">
				<a class="order_back_btn" href="#" onClick="goBack();">&lt;</a> 
				<b id="te">확인 및 결제 </b>
			</div>
			<br>
		</section>

		<section class="hb_section_2">
			<div class="hb_rec_2">
				<div class="box1">할인정보</div>
				<br>
				<br>
				<div class="box2">
					<h3 class="order_title_middel">예약 정보</h3>
					<br>
					<div id="rr">날짜</div>
					<div id="rr" class="order_input_top" >
					<fmt:formatDate  value="${ order.checkIn_date}" pattern="yyyy.MM.dd" /> ~
					<input type="hidden" id="checkIn_date" value="${ order.checkIn_date}">
					<fmt:formatDate value="${ order.checkOut_date}" pattern="yyyy.MM.dd" />
					<input type="hidden" id="checkOut_date" value="${ order.checkOut_date}">
					<input type="hidden" id="people_count" value="${ order.people_count}">
					<input type="hidden" id="room_fee" value="${ order.room_fee}">
					<input type="hidden" id="h_code" value="${ goods.h_code}">
						<input type="hidden" id="cart_code"name="cart_code" value="${cart_code }">
					</div>
				
					<input type="text" value=""  style="width: 70%; display:none;	" disabled>
				
					<br>
					<br>
					<br>

					<div id="rr">게스트</div>
					<input type="text" value="${ order.people_count}"class="order_input_top" disabled>
				
					<br>
					<br>
					<br>


				</div>
			</div>
			<div class="hb_gray_line"></div>
			<c:choose>
				<c:when test="${isLogOn=='nonmember'}">
					<h3 class="order_title_middel">비회원 주문</h3>
					<br>
					<div id="rr" class="order_input_middel">주문자 성함</div>
					<input type="text" value="${ nonmemberInfo.u_name}"  id="order_name"name="order_name"class="order_input_0">
					<div id="rr" class="order_input_middel">전화번호</div>
					<input type="text" value="${ nonmemberInfo.u_phone}" id="order_phone"name="order_phone" class="order_input_0">
					<div id="rr" class="order_input_middel">이메일 주소</div>
					<input type="text" value="" class="order_input_0" id="order_email1"name="order_email1" style="width: 28%;">
					<p class="order_email_g">@</p>
					<input type="text" value="" id="order_email2" class="order_input_0" name="order_email2" style="width: 28%;">
					<select name="email_sel" class="email_sel" id="email_sel" onchange="change_email();">
						<option value="">직접입력</option>
						<option value="gmail.com">gmail</option>
						<option value="naver.com">naver</option>
						<option value="nate.com">nate</option>
					</select>
					<div class="hb_gray_line"></div>
				</c:when>
				
				<c:when test="${isLogOn== 'member'}">
					<h3 class="order_title_middel"> 회원 주문</h3>
					<br>
					<div id="rr" class="order_input_middel">주문자 성함</div>
					<input type="text" name="order_name" id="order_name" value="${ memberInfo.u_name}"  class="order_input_0">
					<div id="rr" class="order_input_middel">전화번호</div>
					<input type="text" value="${ memberInfo.u_phone}" id="order_phone"name="order_phone" class="order_input_0">
					<div id="rr" class="order_input_middel">이메일 주소</div>
					<input type="text" value="${ memberInfo.u_email1}"  id="order_email1"name="order_email1" class="order_input_0" style="width: 28%;">
					<p class="order_email_g">@</p>
					<input type="text" value="${ memberInfo.u_email2}" id="order_email2"name="order_email2"  class="order_input_0" style="width: 28%;">
					<select name="email_sel" class="email_sel" id="email_sel" onchange="change_email();">
						<option value="">직접입력</option>
						<option value="gmail.com">gmail</option>
						<option value="naver.com">naver</option>
						<option value="nate.com">nate</option>
					</select>
					<div class="hb_gray_line"></div>
				</c:when>
			</c:choose>

			<h3 class="order_title_middel_b" >환불 정책</h3>
			<p style="text-align: left; margin-bottom: 10px;">
				3월 28일 오후 3:00 전까지 무료로 예약을 취소할 수 있습니다. 그 후에는 3월 29일 오후 3:00전에 예약을
				취소하면 첫 1박 요금 및 서비스 수수료를 제외한 요금 전액이 환불됩니다. 
				<a id="cou" href="#">자세히 알아보기</a>
			</p>
			<p style="text-align: left;">
				코로나19로 인한 여행 문제에는 정상참작이 가능한 상황 정책이 적용되지 않습니다. 
				<a id="cou" href="#">자세히 알아보기</a>
			</p>

			<div class="hb_gray_line" style="margin: 10px 0;"></div>
			<p class="order_warning">아래 버튼을 선택함으로써, 호스트가
				설정한 숙소 이용규칙, 코로나19 방역 수칙 및 게스트 환불 정책에 동의합니다. 호스트가 예약 요청을 수락하면 표시된
				총액이 결제되는 데 동의합니다.</p>
			<button id="btbt3">확인 및 결제</button>
		</section>

		<section class="hb_section_3">
			<div class="hb_rec_4">
			<input type="hidden" id="room_code" name="room_code" value="${goods.room_code }">
				<img id="img2" src="${contextPath}/thumbnails.do?room_code=${goods.room_code}&fileName=${goods.room_imageName}" alt="숙박사진">
				<p id="te2"class="order_goods_title">${goods.title }</p>
				<input type="hidden" id="title"name="title" value="${goods.title }">
				<input type="hidden" id="room_imageName" name="room_imageName" value="${goods.room_imageName}">
				<input type="hidden" id="content" name="content" value="${goods.content}">
				<p id="te2"class="order_goods_content">${goods.content }</p>
				<hr class="order_goods_middle_line">
				<h3 class="order_title_middel_b" >요금 세부정보</h3>
				<div class="hb_text_order01">
					<div id="r2" >숙소</div>
					<div class="order_goods_price" ><fmt:formatNumber value="${(order.total+0.0)/(4/3+0.0) }" type="currency" currencySymbol="₩ " /></div>
				</div>
				<div class="hb_text_order01">
					<div id="r2" >서비스 수수료</div>
					<div class="order_goods_price"><fmt:formatNumber value="${(order.total+0.0)/(20+0.0) }" type="currency" currencySymbol="₩ " /></div>
				</div>
				<div class="hb_text_order01">
					<div id="r2">숙박세와 수수료</div>
					<div class="order_goods_price"><fmt:formatNumber value="${(order.total+0.0)/(10+0.0) }" type="currency" currencySymbol="₩ " /></div>
				</div>
				<div class="hb_text_order02" >
					<div id="r3">총합계</div>
					<input type="text" id="total_view"value="<fmt:formatNumber value="${order.total}" type="currency" currencySymbol="₩ " />"
						class="order_goods_price" style="font-weight:570;" disabled>
						<input type="hidden" id="total" value="${order.total}">
				</div>
			</div>
		</section>
	</section>
</body>

</html>
