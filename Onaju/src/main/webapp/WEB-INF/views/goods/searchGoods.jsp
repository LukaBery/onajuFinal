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

<style>
* {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
}

#li {
	border: 0px solid #EFEFEF;
	width: 1100px;
	display: block;
	right: 25px;
	margin-bottom: 10px;
}

.hb_section_1 {
	display: inline-block;
	width: 1100px;
	height: 50px;
}

.hb_section_2 {
	display: inline-block;
	width: 1100px;
	height: 180px;
}

.hb_section_3 {
	display: inline-block;
	width: 1100px;
	height: 180px;
}

.hb_section_4 {
	display: inline-block;
	width: 1100px;
	height: 180px;
}

.hb_section_5 {
	display: inline-block;
	width: 1200px;
	height: 180px;
}

.hb_section_6 {
	display: inline-block;
	width: 1100px;
	height: 60px;
	margin-top: 10px;
}

.hb_section_7 {
	display: inline-block;
	width: 1100px;
	height: 180px;
}

.hb_section_10 {
	display: inline-block;
	width: 1100px;
	height: 280px;
}

.hb_rec_1 {
	float: left;
	display: inline-block;
	width: 250px;
	height: 100px;
}

.hb_rec_2 {
	float: left;
	display: inline-block;
	width: 750px;
	height: 100px;
}

.hb_rec_3 {
	float: left;
	display: inline-block;
	width: 100px;
	height: 100px;
}

.hb_rec_4 {
	float: left;
	display: inline-block;
	width: 215px;
	height: 190px;
}

.hb_rec_10 {
margin-right:20px;
	float: left;
	display: inline-block;
	width: 255px;
	height: 280px;
}

#menu {
	display: inline-block;
	width: 80px;
	height: 30px;
	border: 1px solid #FC4E82;
	outline: 0;
	border-radius: 5px;
	font-weight: bold;
	background-color: white
}

#menu:active {
	background-color: #FC4E82
}

/*요금,숙소유형 드롭다운1*/
select {
	/* Reset Select */
	appearance: none;
	outline: 0;
	border: 0;
	box-shadow: none;
	/* Personalize */
	flex: 1;
	color: black;
	border: 1px solid #CCCCCC;
	background-color: white;
	background-image: none;
	cursor: pointer;
	font-weight: bold;
	/*드롭버튼 높이*/
	height: 30px;
	width: 100px;
}
/* Remove IE arrow */
select::-ms-expend {
	display: none;
}
/* Custom Select wrapper */
.select {
	position: relative;
	display: inline-block;
	/*드롭버튼 메뉴 크기*/
	width: 100px;
	height: 30px;
	border-radius: 3px;
	overflow: hidden;
}
/* Arrow */
.select::after {
	content: "\25BC";
	position: absolute;
	top: 0;
	right: 0;
	padding: 0;
	width: 30px;
	height: 30px;
	background-color: #FC4E82;
	transition: 0.25s all ease;
	pointer-events: none;
}
/* Transition */
.select:hover::after {
	color: #f39c12;
}

#hb_img {
	width: 100%;
	height: 100%;
	display: inline-block;
	float: left;
	text-decoration-line: none;
}
/*a링크 효과*/
#img a:link {
	font-weight: bold;
	color: black;
}

#img a:hover {
	color: blue;
}

#img a:visited {
	color: purple;
}

.charge-info {
	cursor: pointer !important;
	text-align: center !important;
	border: 1px solid rgb(221, 221, 221) !important;
	background-color: rgb(255, 255, 255) !important;
	outline: none !important;
	margin: 0px !important;
	color: rgb(34, 34, 34) !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		"Helvetica Neue", sans-serif !important;
	position: relative !important;
	transition-property: -ms-transform, -webkit-transform, transform,
		background-color, border-color !important;
	transition-duration: 0.15s !important;
	transition-timing-function: ease-in-out !important;
	padding: 10px 16px !important;
	border-radius: 30px !important;
	font-size: 12px !important;
	line-height: 16px !important;
	width: 100% !important;
}

.charge-info:hover {
	cursor: pointer !important;
	text-align: center !important;
	border: 1px solid rgb(221, 221, 221) !important;
	background-color: rgb(254, 210, 223) !important;
	outline: none !important;
	margin: 0px !important;
	color: rgb(34, 34, 34) !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		"Helvetica Neue", sans-serif !important;
	position: relative !important;
	transition-property: -ms-transform, -webkit-transform, transform,
		background-color, border-color !important;
	transition-duration: 0.15s !important;
	transition-timing-function: ease-in-out !important;
	padding: 10px 16px !important;
	border-radius: 30px !important;
	font-size: 12px !important;
	line-height: 16px !important;
	width: 100% !important;
}

.charge-box {
	display: inline-block !important;
	white-space: nowrap !important;
	padding-right: 8px !important;
	padding-top: 4px !important;
	padding-bottom: 4px !important;
}

.charge-text {
	font-weight: 400 !important;
	font-size: 11px !important;
	line-height: 18px !important;
	display: inline-block !important;
}

.charge-img {
	align-self: center !important;
	margin-left: 9.5px !important;
	float: right;
}

.charge-textbox {
	display: flex !important;
	place-content: center !important;
}

.charge-boxline {
	-webkit-box-align: center !important;
	display: flex !important;
	align-items: center !important;
}

#hb_textbox_40 {
	float: left;
	padding: 0 0 0 0px;
	display: inline-block;
	width: 100%;
	height: 30px;
	margin-top: 4px;;
}

#hb_textbox_5 {
	float: left;
	padding: 0 0 0 0px;
	display: inline-block;
	width: 100%;
	height: 20px;
	margin-top: 5px;
}

#hb_a_main_profile {
	text-decoration: none;
	display: inline-block;
	width: 30px;
	height: 30px;
	font-size: 15px;
	font-weight: 600;
	color: black;
	margin: 0 auto;
	border-radius: 70%;
	float: left;
}

#hb_main_profile_image {
	width: 30px;
	height: 30px;
	border-radius: 70%;
	overflow: hidden;
}

#hb_main_profile_name {
	text-decoration: none;
	display: inline-block;
	margin-top: 5px;
	margin-left: 8px;
	height: 30px;
	font-size: 12px;
	font-weight: 580;
	color: black;
	float: left;
}

#hb_main_p1 {
	float: left;
	width: 150px;
	font-weight: 620;
	font-size: 14px;
	text-align: left;
	color: black;
}

#hb_main_p2 {
	font-weight: 520;
	font-size: 14px;
	text-align: right;
	color: black;
}

#hb_main_p3 {
	float: left;
	width: 150px;
	font-weight: 530;
	font-size: 14px;
	text-align: left;
	color: rgb(77, 79, 80);
	opacity: 80%;
}

#hb_main_p4 {
	font-weight: 530;
	font-size: 14px;
	text-align: right;
	color: rgb(77, 79, 80);
	opacity: 80%;
}
</style>




<meta charset="UTF-8">
<title>숙소 상세 검색 결과 페이지</title>
</head>
<body>
	<section class="hb_section_6">
		<div class="charge-boxline">
			<div class="charge-box">
				<button class="charge-info" aria-expanded="false" type="button">
					<div class="charge-textbox">
						<span class="charge-text">요금</span> <span class="charge-img">
							<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"
								aria-hidden="true" role="presentation" focusable="false"
								style="display: block; fill: none; height: 12px; width: 12px; stroke: currentcolor; stroke-width: 5.33333; overflow: visible;">
                  
                    <g fill="none">
                      <path
									d="m28 12-11.2928932 11.2928932c-.3905243.3905243-1.0236893.3905243-1.4142136 0l-11.2928932-11.2928932"></path>
                    </g>
                    
                  </svg>
						</span>
					</div>
				</button>
			</div>

			<div class="charge-boxline">
				<div class="charge-box">
					<button class="charge-info" aria-expanded="false" type="button">
						<div class="charge-textbox">
							<span class="charge-text">숙소유형</span> <span class="charge-img">
								<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"
									aria-hidden="true" role="presentation" focusable="false"
									style="display: block; fill: none; height: 12px; width: 12px; stroke: currentcolor; stroke-width: 5.33333; overflow: visible;">
                     <g fill="none">
                        <path
										d="m28 12-11.2928932 11.2928932c-.3905243.3905243-1.0236893.3905243-1.4142136 0l-11.2928932-11.2928932"></path>
                      </g>
                    </svg>
							</span>

						</div>
					</button>

				</div>

				<div class="charge-boxline">
					<div class="charge-box">
						<button class="charge-info" aria-expanded="false" type="button">
							<div class="charge-textbox">
								<span class="charge-text">무선인터넷</span>
							</div>
						</button>
					</div>
				</div>
				<div class="charge-boxline">
					<div class="charge-box">
						<button class="charge-info" aria-expanded="false" type="button">
							<div class="charge-textbox">
								<span class="charge-text">주방</span>
							</div>
						</button>
					</div>
				</div>
				<div class="charge-boxline">
					<div class="charge-box">
						<button class="charge-info" aria-expanded="false" type="button">
							<div class="charge-textbox">
								<span class="charge-text">에어컨</span>
							</div>
						</button>
					</div>
				</div>
				<div class="charge-boxline">
					<div class="charge-box">
						<button class="charge-info" aria-expanded="false" type="button">
							<div class="charge-textbox">
								<span class="charge-text">세탁기</span>
							</div>
						</button>
					</div>
				</div>
				<div class="charge-boxline">
					<div class="charge-box">
						<button class="charge-info" aria-expanded="false" type="button">
							<div class="charge-textbox">
								<span class="charge-text">다리미</span>
							</div>
						</button>
					</div>
				</div>
				<div class="charge-boxline">
					<div class="charge-box">
						<button class="charge-info" aria-expanded="false" type="button">
							<div class="charge-textbox">
								<span class="charge-text">주차공간</span>
							</div>
						</button>
					</div>
				</div>
				<div class="charge-boxline">
					<div class="charge-box">
						<button class="charge-info" aria-expanded="false" type="button">
							<div class="charge-textbox">
								<span class="charge-text">업무전용공간</span>
							</div>
						</button>
					</div>
				</div>
				<div class="charge-boxline">
					<div class="charge-box">
						<button class="charge-info" aria-expanded="false" type="button">
							<div class="charge-textbox">
								<span class="charge-text">건조기</span>
							</div>
						</button>
					</div>
				</div>
				<div class="charge-boxline">
					<div class="charge-box">
						<button class="charge-info" aria-expanded="false" type="button">
							<div class="charge-textbox">
								<span class="charge-text">셀프체크인</span>
							</div>
						</button>
					</div>
				</div>
				<div class="charge-boxline">
					<div class="charge-box">
						<button class="charge-info" aria-expanded="false" type="button">
							<div class="charge-textbox">
								<span class="charge-text">수영장</span>
							</div>
						</button>
					</div>
				</div>

				<div class="charge-boxline">
					<div class="charge-box">
						<button class="charge-info" aria-expanded="false" type="button">
							<div class="charge-textbox">
								<span class="charge-text">필터</span> <span class="charge-img">
									<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"
										aria-hidden="true" role="presentation" focusable="false"
										style="display: block; fill: none; height: 12px; width: 12px; stroke: currentcolor; stroke-width: 5.33333; overflow: visible;">
                        <g fill="none">
                          <path
											d="m28 12-11.2928932 11.2928932c-.3905243.3905243-1.0236893.3905243-1.4142136 0l-11.2928932-11.2928932"></path>
                        </g>
                      </svg>
								</span>
							</div>
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr id="li">
	
	
	
	
	<section class="hb_section_10">

		<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_1.jpg"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_2.png"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_3.jpg"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_3.png"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
	</section>
	
	
	
	<hr id="li">
	<section class="hb_section_10">

		<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_4.png"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_5.jpg"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_1.jpg"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_2.png"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
	</section>
	
	
	<hr id="li">
	
	
	
	<section class="hb_section_10">

		<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_1.jpg"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_2.png"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_3.jpg"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
<div class="hb_rec_10">
			<a id="hb_img" href="#"> <img
				src="${contextPath }/resources/image/house_3.png"
				style="width: 100%; height: 180px; border-radius: 10px;">
				<div id="hb_textbox_5">
					<p id="hb_main_p1">서귀포시, 제주도</p>
					<p id="hb_main_p2">W13,000원 / 박</p>
				</div>
				<div id="hb_textbox_5">
					<p id="hb_main_p3">12KM 거리</p>
					<p id="hb_main_p4">5월 12일~28일</p>
				</div>

				<div id="hb_textbox_40">
					<div id="hb_a_main_profile" href="#">
						<img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG">
					</div>
					<div id="hb_main_profile_name" href="#">사용자 이름</div>
				</div>
			</a>
		</div>
	</section>
	
	
	
	
</body>
</html>