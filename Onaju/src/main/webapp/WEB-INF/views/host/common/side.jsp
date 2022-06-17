
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');
*{
	margin: 0;
	padding: 0;
	user-select: none;
	box-sizing: border-box;
	font-family: 'roboto', sans-serif;
}
.ohnaju-sideber{
	width: 100%;
 	margin-top: 20px;
 	border-top:2px solid #7f9b75;
}
.ohnaju-sideber .ohnaju-text{
	color: #666666;
	font-size: 25px;
	font-weight: 600;
	line-height: 65px;
	text-align: center;
	letter-spacing: 1px;
}
.ohnaju-sideber ul{
	width: 100%;
	list-style: none;
	background: #fcfcfc;
}
.ohnaju-sideber ul li{
	line-height: 60px;
	border-bottom:1px solid #ddd;
}
.ohnaju-sideber ul li a{
	position: relative;
	color: #666666;
	text-decoration: none;
	font-size: 15px;
	padding:0px 15px;
	box-sizing:border-box;
	font-weight: 500;
	display: block;
	width: 100%;
	border-left: 3px solid transparent;
}
.ohnaju-sideber ul li a:hover{
	color: #7f9b75;
	background: #white;
	border-left-color: #7f9b75;
}
.ohnaju-sideber ul ul {
	position: static;
	display: none;
}
.ohnaju-sideber ul .ohnaju-first-show.show{
	display: block;
}
.ohnaju-sideber ul .ohnaju-second-show.show1{
	display: block;
}
.ohnaju-sideber ul .ohnaju-third-show.show2{
	display: block;
}
.ohnaju-sideber ul .ohnaju-fourth-show.show3{
	display: block;
}
.ohnaju-sideber ul .ohnaju-fifth-show.show4{
	display: block;
}
.ohnaju-sideber ul .ohnaju-sixth-show.show5{
	display: block;
}
.ohnaju-sideber ul .ohnaju-seventh-show.show6{
	display: block;
}
.ohnaju-sideber ul ul li{
	line-height: 42px;
	border-bottom: none;
}
.ohnaju-sideber ul ul li a{
	font-size: 13px;
	color: #666666;
	padding-left: 50px;
}
.ohnaju-sideber ul li a i{
	position: absolute;
	top:50%;
	right:20px;
	transform: translateY(-50%); 
	font-size: 22px;
	transition: transform 0.4s;
}
.ohnaju-sideber ul li a i.rotate{
	transform: translateY(-50%) rotate(-180deg);
}
</style>
</head>
<body>
	
<nav class="ohnaju-sideber">
 	<!-- <div class="ohnaju-text">사이드 메뉴</div> -->
 	<ul class="ohnaju-ul">
 		<li class="ohnaju-li">
 			<a href="#" class="ohnaju-first-btn"><i style="color:#edbc40" class="fa-solid fa-solid fa-users"></i>&emsp;마이 페이지</a>
 				<ul class="ohnaju-first-show">
 					<li class="ohnaju-li"><a href="${contextPath }/host/mypage/hostMypageDetail.do">호스트 정보 수정</a></li>
 					<li class="ohnaju-li"><a href="${contextPath }/host/goods/hostInfoList.do">사업장 목록</a></li>
 					<li class="ohnaju-li"><a href="${contextPath }/host/goods/hostInfoForm.do">사업장 등록</a></li>
 					<li class="ohnaju-li"><a href="${contextPath }/host/mypage/dropOut.do">호스트 탈퇴</a></li>
 			   </ul>
 		</li>
 		<li class="ohnaju-li">
 			<a href="#" class="ohnaju-second-btn"><i style="color:#edbc40" class="fa-solid fa-cart-shopping"></i>&emsp;상품 관리</a>
 				<ul class="ohnaju-second-show">
 					<li class="ohnaju-li"><a href="${contextPath }/host/goods/hostGoodsList.do">상품 목록</a></li>
 					<li class="ohnaju-li"><a href="${contextPath }/host/goods/addNewGoodsForm.do">상품 등록</a></li>	
 			   </ul>
 		</li>
 		<li class="ohnaju-li"><a href="#"  class="ohnaju-third-btn"><i style="color:#edbc40"  class="fa-solid fa-hotel"></i>&emsp;커뮤니티 관리</a>
 			<ul class="ohnaju-third-show">
 				<li class="ohnaju-li"><a href="${contextPath }/host/community/hostAllCommunityList.do">Life Style 목록</a></li>
 				<li class="ohnaju-li"><a href="${contextPath }/host/community/cmnAticleForm1.do">Life Style 글 등록</a></li>
 			</ul>
 		</li>
 		<li class="ohnaju-li"><a href="#" class="ohnaju-fourth-btn"><i style="color:#edbc40" class="fa-solid fa-credit-card"></i>&emsp;주문 관리</a>
 			<ul class="ohnaju-fourth-show">
 				<li class="ohnaju-li"><a href="${contextPath }/host/reservation/hostReservationList.do">예약 정보 목록</a></li>
 				<li class="ohnaju-li"><a href="${contextPath }/host/reservation/approveReservationList.do">승인 목록</a></li>
 				<li class="ohnaju-li"><a href="${contextPath }/host/reservation/cancelReservationList.do">취소 및 환불 목록</a></li>
 			</ul>
 		</li> 		
 		<li class="ohnaju-li"><a href="#" class="ohnaju-fifth-btn"><i style="color:#edbc40"  class="fa-solid fa-children"></i>&emsp;매출 관리</a>
 			<ul class="ohnaju-fifth-show">
 				<li class="ohnaju-li"><a href="${contextPath }/host/money/hostSalesAllList.do">매출 내역</a></li>
 				
 			</ul>
 		</li> 	
 		<%-- <li class="ohnaju-li"><a href="#" class="ohnaju-sixth-btn"><i style="color:#edbc40" class="fa-solid fa-building-user"></i>&emsp;고객 관리</a>
 			<ul class="ohnaju-sixth-show">
 				<li class="ohnaju-li"><a href="${contextPath }/host/management/reviewList.do">리뷰 관리</a></li>

 			</ul>
 		</li>
 		
 		<li class="ohnaju-li"><a href="#" class="ohnaju-seventh-btn"><i style="color:#edbc40" class="fa-solid fa-paste"></i>&emsp;고객 센터</a>
 			<ul class="ohnaju-seventh-show">
 				<li class="ohnaju-li"><a href="${contextPath }/host/center/noticeBoard.do">공지사항</a></li>
 				<li class="ohnaju-li"><a href="${contextPath }/host/center/markRequest.do">인증마크 신청</a></li>
 				<li class="ohnaju-li"><a href="${contextPath }/host/center/qnaList.do">관리자 문의</a></li>
 				<li class="ohnaju-li"><a href="${contextPath }/host/center/dropOut.do">호스트 탈퇴</a></li>
 			</ul>
 		</li> 		 --%>
 	</ul>
</nav>
<script>
 $('.ohnaju-first-btn').click(function(){
	$('nav ul .ohnaju-first-show').toggleClass("show");
	$('nav ul .first').toggleClass("rotate");
 });
 $('.ohnaju-second-btn').click(function(){
		$('nav ul .ohnaju-second-show').toggleClass("show1");
		$('nav ul .second').toggleClass("rotate");
 });
 $('.ohnaju-third-btn').click(function(){
		$('nav ul .ohnaju-third-show').toggleClass("show2");
		$('nav ul .second').toggleClass("rotate");
});
 $('.ohnaju-fourth-btn').click(function(){
		$('nav ul .ohnaju-fourth-show').toggleClass("show3");
		$('nav ul .second').toggleClass("rotate");
});
 $('.ohnaju-fifth-btn').click(function(){
		$('nav ul .ohnaju-fifth-show').toggleClass("show4");
		$('nav ul .second').toggleClass("rotate");
});
 $('.ohnaju-sixth-btn').click(function(){
		$('nav ul .ohnaju-sixth-show').toggleClass("show5");
		$('nav ul .second').toggleClass("rotate");
});
 $('.ohnaju-seventh-btn').click(function(){
		$('nav ul .ohnaju-seventh-show').toggleClass("show6");
		$('nav ul .second').toggleClass("rotate");
});
</script>

</body>
</html>