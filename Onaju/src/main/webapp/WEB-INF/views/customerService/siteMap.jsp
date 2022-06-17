
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<style>
.hb_rec_1 {
	float: left;
	display: inline-block;
	width: 800px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.hb_rec_2 {
	display: inline-block;
	float: right;
	width: 250px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.hb_rec_3 {
	align-items: center;
	text-align: center;
	display: inline-block;
	width: 122px;
	height: 60px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
	padding: 0px 0px 0px 0px;
	margin: 0px 21px 0px 21px;
}

.hb_rec_4 {
	display: inline-block;
	width: 240px;
	height: 180px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px;
	margin: 5px 10px 5px 10px;
}

.hb_rec_order_1 {
	display: inline-block;
	width: 450px;
	height: 400px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px 20px 0px 20px;
	margin: 5px 10px 5px 10px;
}
/* <섹션 종류> */
.hb_section_total {
	width: 1100px;
	height: 100%
}

.hb_section_half {
	float: left;
	display: inline-block;
	width: 550px;
	height: auto;
	min-height: 700px;
}

.hb_section_siteMap_title {
	padding: 0px 0px 0px 0px;
	display: inline-block;
	width: 1100px;
	height: 90px;
}

.hb_section_1 {
	padding: 5px 0px 5px 0px;
	display: inline-block;
	width: 800px;
	height: 70px;
}

.hb_section_2 {
	display: inline-block;
	width: 1100px;
	height: 400px;
}

.hb_section_3 {
	display: inline-block;
	width: 300px;
	height: 70px;
}

.hb_section_4 {
	display: inline-block;
	width: 1100px;
	height: 300px;
}

.hb_section_5 {
	padding: 8px 4px;
	display: inline-block;
	width: 1100px;
	height: 50px;
}

.hb_section_title_1 {
	padding: 0px 4px 10px 0px;
	display: inline-block;
	width: 1100px;
	height: 60px;
	margin-top: 20px;
	margin-bottom:0px;
}

.hb_label_order {
	
}
/* <인라인블럭 왼쪽 고정> */
.margin_left_0 {
	float: left;
	margin-left: 0px;
}
/* <인라인블럭 왼쪽 고정> */
.margin_right_0 {
	float: right;
	margin-right: 0px;
}

.hb_table_1 {
	float: left;
	display: inline-block;
	width: 266.6px;
	height: 300px;
}

.order_divider {
	margin-bottom: 15px;
	display: block;
	width: 100%;
	height: 0px;
	border-top: 0.5px solid #CCCCCC;
	display: block;
}

.hb_textbox_1 {
	display: inline-block;
	width: 238px;
	height: 120px;
}

#form_width_center {
	text-align: center;
}

#h1_left {
	text-align: left;
	font-size: 25px;
}

#h1_order_title {
	margin: 10px 0px 10px 0px;
	color: rgb(252, 78, 130);
	opacity: 90%;
	font-weight: 550;
	text-align: center;
	font-size: 25px;
}
/* <a 태그 부모 태그 전체 확장> */
#hb_a_main {
	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 auto;
	border-radius: 20px;
}

.inputWrap_order {
	margin-top: 10px;
	position: relative;
	display: block;
	width: 100%;
	height: 50px;
	border: 1px solid #eee;
	border-radius: 20px;
	background: #FBFCFC;
}

.inputWrap_order input {
	display: block;
	padding: 0 20px;
	width: 100%;
	height: 100%;
	background: #FBFCFC;
	font-size: 16px;
	color: #000;
	border: none;
	border-radius: 20px;
	outline: none;
}

.hb_order_a {
	display: block;
	margin-top: 10px;
	position: relative;
	width: 100%;
	height: 30px;
}

#hb_strong {
	display: block;
	position: Absolute;
	left: 15px;
	top: 15px;
	color: #b4b4b4;
	font-size: 16px;
	vertical-align: middle;
	font-weight: normal;
}

#order_checkbox {
	margin-top: 2.5px;
	width: 25px;
	float: left;
	vertical-align: middle;
	width: 25px;
}

#h1_left_title {
	color: rgb(252, 78, 130);
	font-weight: 600;
	text-align: left;
	font-size: 35px;
}

.hb_order_p {
	float: left;
	font-weight: 600;
	text-align: left;
	font-weight: 600;
}

.hb_order_a_1 {
	float: right;
	text-align: right;
	color: black;
	display: inline-block;
}

.hb_order_submit {
	font-weight: 550;
	font-size: 16px;
	line-height: 40px;
	border: 1px solid rgb(252, 96, 143);
	width: 100%;
	height: 40px;
	vertical-align: middle;
	margin: 0px 0px 10px 0px;
}

.hb_section_site_1 {
	display: inline-block;
	width: 275px;
	height: 100%;
}

.hb_section_host_2 {
	display: inline-block;
	width: 550px;
	height: 400px;
}

.hb_section_host_3 {
	display: inline-block;
	width: 1100px;
	height: 400px;
}

.hb_order_sns {
	font-weight: 550;
	font-size: 16px;
	line-height: 40px;
	width: 49%;
	height: 40px;
	vertical-align: middle;
	margin: 10px 0px 10px 0px;
}

.hb_order_textbox {
	margin-top: 25px;
	display: block;
	padding: 0 20px;
	width: 100%;
	height: 70px;
	padding: 15px 0px 15px 0px;
	font-size: 16px;
	border: none;
	border-radius: 20px;
	outline: none;
}

#hb_a_host {
	text-decoration: none;
	display: block;
	height: 100%;
	width: 100%;
	margin: 0;
	border-radius: 20px;
}

#p_host_02 {
	font-weight: 400;
	text-align: center;
	font-size: 14px;
}

#p_host_01 {
	font-weight: 600;
	text-align: center;
	font-size: 18px;
}

#btn_host_group button {
	font-weight: 500;
}

#btn_host_group button:hover {
	color: white;
	background-color: rgb(252, 78, 130);
	opacity: 50%;
	font-weight: 600;
}

.hb_rec_host_2 {
	border-radius: 20px;
	border: 2px solid #CCCCCC;
	display: inline-block;
	width: 150px;
	height: 40px;
	margin: 5px auto;
	padding: 0px;
}

.hb_rec_host_3 {
	border-radius: 20px;
	border: 2px solid #CCCCCC;
	display: inline-block;
	width: 500px;
	height: 350px;
	margin: 5px auto;
	padding: 8px;
}
</style>

<script>
	
</script>
</head>
<body>

	<section class="hb_section_total">

		<section class="hb_section_siteMap_title">
			<a href="${contextPath}/main/main.do"> <img
				src="${contextPath}/resources/image/onajulogo.png" width="150px"
				height="100px"></a>
		</section>


		<section class="hb_section_title_1">
			<h1 id="h1_left_title">마이페이지</h1>
		</section>

		<section class="hb_section_site_1 margin_left_0" id="btn_host_group">
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/mypage/mypageMain.do'">이용내역조회</button>
			</div>
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/mypage/Mypage2.do'">즐겨찾기</button>
			</div>

		</section>
		<section class="hb_section_site_1 margin_left_0" id="btn_host_group">
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/mypage/Mypage3.do'">회원정보 수정</button>
			</div>
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/mypage/Mypage4.do'">적립금 내역</button>
			</div>

		</section>
		<section class="hb_section_site_1 margin_left_0" id="btn_host_group">
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/mypage/Mypage5.do'">내 리뷰 내역</button>
			</div>
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/mypage/Mypage6.do'">호스트 신청</button>
			</div>

		</section>
		<section class="hb_section_site_1 margin_left_0" id="btn_host_group">
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/mypage/Mypage7.do'">회원 탈퇴</button>
			</div>

		</section>

		<section class="hb_section_title_1">
			<h1 id="h1_left_title">숙소 예약</h1>
		</section>
		<section class="hb_section_site_1 margin_left_0" id="btn_host_group">
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/main/main.do'">LifeStyle</button>
			</div>
		
		</section>
		<section class="hb_section_site_1 margin_left_0" id="btn_host_group">
		<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/goods/searchGoods.do'">숙소 예약</button>
			</div>
			

		</section>
		<section class="hb_section_site_1 margin_left_0" id="btn_host_group">
		
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/goods/searchGoodsMap.do'">내 주변</button>
			</div>

		</section>


		<section class="hb_section_title_1">
			<h1 id="h1_left_title">고객센터</h1>
		</section>
		<section class="hb_section_site_1 margin_left_0" id="btn_host_group">
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/customerService/noticeBoard.do'">공지사항</button>
			</div>
			
		</section>
		<section class="hb_section_site_1 margin_left_0" id="btn_host_group">
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/customerService/Question.do'">자주 묻는 질문</button>
			</div>
			
		</section>
		<section class="hb_section_site_1 margin_left_0" id="btn_host_group">
			<div class="hb_rec_host_2">
			
				<button id="hb_a_host" onclick="location.href='${contextPath}/customerService/noticeBoard.do'">1대1 문의 하기</button>
			</div>
			
		</section>
			<section class="hb_section_site_1 margin_left_0" id="btn_host_group">
			
			<div class="hb_rec_host_2">
				<button id="hb_a_host" onclick="location.href='${contextPath}/customerService/qnaList.do'">내 문의 내역</button>
			</div>

		</section>










	</section>
</body>

</html>
