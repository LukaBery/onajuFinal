<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	width: 300px;
	height: 100%;
}
.ohnaju-sideber .ohnaju-text{
	display: flex;
	align-items: center;
	justify-content: center;
	color: #666666;
	font-size: 20px;
	font-weight: 600;
	line-height: 65px;
	text-align: center;
	letter-spacing: 1px;
	height: 75px;
}
.ohnaju-sideber ul{
	height: 100%;
	width: 100%;
	list-style: none;
}
.ohnaju-sideber ul li{
	line-height: 60px;
}
.ohnaju-sideber ul li div a{
	position: relative;
	color: #666666;
	text-decoration: none;
	font-size: 18px;
	padding-left: 40px;
	font-weight: 500;
	display: block;
	width: 100%;
	border-left: 3px solid transparent;
}
.ohnaju-sideber ul li div a:hover{
	color: #007FFF;
	background: #white;
	border-left-color: #007FFF;
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
	font-size: 17px;
	color: #666666;
	padding-left: 90px;
}
.ohnaju-sideber ul li div a i{
	position: absolute;
	top:50%;
	right:20px;
	transform: translateY(-50%); 
	font-size: 22px;
	transition: transform 0.4s;
}
.ohnaju-sideber ul li div a i.rotate{
	transform: translateY(-50%) rotate(-180deg);
}
</style>
</head>
<body>
<aside>
		
<nav class="ohnaju-sideber">
 	<div class="ohnaju-text"><div>사이드 메뉴</div></div>
 	<ul class="ohnaju-ul">
 		<li class="ohnaju-li"><div><a href="${contextPath }/admin/memberList.do"><i style="color:#007FFF" class="fa-solid fa-user"></i>&emsp;회원 관리</a></div></li>
 		<li class="ohnaju-li">
 			<div><a href="#" class="ohnaju-first-btn"><i style="color:#FFB366" class="fa-solid fa-building-user"></i>&emsp;사업주 관리</a></div>
 				<ul class="ohnaju-first-show">
 					<li class="ohnaju-li"><div><a href="${contextPath }/admin/hostList.do">사업주 관리</a></div></li>
 					<li class="ohnaju-li"><div><a href="${contextPath }/admin/hostInfoList.do">사업장 관리</a></div></li>
 			   </ul>
 		</li>
 		<li class="ohnaju-li"><div><a href="#" class="ohnaju-second-btn"><i style="color:#80FFCC" class="fa-solid fa-folder-closed"></i>&emsp;상품 관리</a></div>
 			<ul class="ohnaju-second-show">
 				<li class="ohnaju-li"><div><a href="${contextPath }/admin/goodsList.do">상품 등록 관리</a></div></li>
 			</ul>
 		</li>
 		<li class="ohnaju-li"><div><a href="#" class="ohnaju-third-btn"><i style="color:#FF550D" class="fa-solid fa-cart-shopping"></i>&emsp;주문 관리</a></div>
 			<ul class="ohnaju-third-show">
 				<li class="ohnaju-li"><div><a href="${contextPath }/admin/orderList.do">주문 상품 관리</a></div></li>
 			</ul>
 		</li>
 		<li class="ohnaju-li"><div><a href="#"  class="ohnaju-fourth-btn"><i style="color:#80EAFF"  class="fa-solid fa-chart-simple"></i>&emsp;정산/통계 관리</a></div>
 			<ul class="ohnaju-fourth-show">
 				<li class="ohnaju-li"><div><a href="${contextPath }/calculate.calculatePage.do">전체 매출</a></div></li>
 			</ul>
 		</li>
 		<li class="ohnaju-li"><div><a href="#" class="ohnaju-fifth-btn"><i style="color:#4D4D4D" class="fa-solid fa-paste"></i>&emsp;게시판 관리</a></div>
 			<ul class="ohnaju-fifth-show">
 				<li class="ohnaju-li"><div><a href="${contextPath }/admin/noticeList.do">게시판 관리</a></div></li>
 				<li class="ohnaju-li"><div><a href="${contextPath }/admin/enquireBoard.do">1:1 질문 관리</a></div></li>
 			</ul>
 		</li>
 		<li class="ohnaju-li"><div><a href="#" class="ohnaju-seventh-btn"><i style="color:#B266FF" class="fa-solid fa-people-roof"></i>&emsp;직원 관리</a></div>
 			<ul class="ohnaju-seventh-show">
 				<li class="ohnaju-li"><div><a href="${contextPath }/admin/adminList.do">직원 관리</a></div></li>
 			</ul>
 		</li>  		
 	</ul>
</nav>

</aside>
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