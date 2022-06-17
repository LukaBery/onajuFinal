<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.bigbox {
	width: 850px;
	height: 100%;
	top: 30px;
	left: 25px;
	position: relative;
}

.box1 {
	width: 800px;
	border: 2px solid #cbdea6;
	border-radius: 15px;
	padding: 10px;
	margin: auto;
	font-size: 20px;
	font-weight: bolder;
	text-align: center;
}

/*표1 검색*/
.tg {
	position: relative;
	margin: auto;
	width: 800px;
	border-collapse: collapse;
	border-spacing: 0;
	color: #403e3f;
}

.tg td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 20px 20px;
	word-break: normal;
}

.tg th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 20px 20px;
	word-break: normal;
}

.tg .tgall {
	background-color: #cbdea6;
	border-color: #cbdea6;
	font-weight: bold;
	text-align: center;
	vertical-align: bottom
}

.tg .tgalltop {
	background-color: #cbdea6;
	border-color: #cbdea6;
	font-family: Arial, Helvetica, sans-serif !important;
	font-weight: bold;
}

.tg .tgallbottom {
	background-color: #cbdea6;
	border-color: #cbdea6;
	font-weight: bold;
	text-align: center;
	vertical-align: top;
}

.tg .tg-01_1 {
	border-color: #cbdea6;
	text-align: left;
	vertical-align: top
}

.tg .tg-02_1 {
	border-color: #cbdea6;
	text-align: left;
	vertical-align: top
}

.tg .tg-03_1 {
	border-color: #cbdea6;
	text-align: left;
	vertical-align: top
}

.tg .tg-04_1 {
	border-color: #cbdea6;
	text-align: left;
	vertical-align: top
}

.tg .tg-01_1 .calendar {
	font-size: 16px;
	font-family: Consolas, sans-serif;
}

.tg .tg-02_1 .check1 {
	width:600px;
	
}
#la1{
	display: inline-block;
    width: 120px;
}

.tg .tg-03_1 .check2 {
	
}
/*달력조회버튼*/
#calbt {
	background-color: #7f9b75;
	color: white;
	height: 30px;
	width: 60px;
	border: none;
	border-radius: 3px;
	position: absolute;
	right: 50px;
	top: 18px;
	cursor: pointer;
}
/*토글버튼*/
.tg .tg-04_1 {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	outline: none;
	list-style: none;
	font-family: 'Montserrat', sans-serif;
}

.search_box {
	position: relative;
    top: 10px;
    width: 490px;
    border: 1px solid;
    border-color: #cfd0d4;
    background: #fff;
    border-radius: 5px;
    height: 40px;
    display: flex;
    padding: 10px;
    left: 20px;
}
}

#se {
	/* Reset Select */
	position: relative;
	height: 40px;
	appearance: none;
	outline: 0;
	box-shadow: none;
	/* Personalize */
	flex: 1;
	padding: 0 1em;
	color: black;
	border-radius:5px;
	border: 1px solid #CCCCCC;
	background-color: white;
	background-image: none;
	cursor: pointer;
	font-weight: bold;
	right:5px;
}
/* Remove IE arrow */
select::-ms-expand {
	display: none;
}

.select2 {
	position: relative;
	display: flex;
	width: 100px;
	height: 39px;
	border-radius: 0.25em;
	overflow: hidden;
	right: 10px;
	bottom: 11px;
}
/* Arrow */
/* .select2::after {
	content: "\25BC";
	position: absolute;
	top: 15%;
	right: 10%;
	padding: auto;
	transition: 0.25s all ease;
	pointer-events: none;
} */
/* Transition */
.select2:hover::after {
	color: #f39c12;
}

.search_field {
	/*검색창부분*/
	width: 300px;
	height: 100%;
	position: relative;
	border-style: none;
}

.search_field .input {
	width: 100%;
	height: 100%;
	border: 0px;
	font-size: 14px;
	text-align: center;
	padding: auto;
	color: #6f768d;
	border-style: none;
}

.search_field .input2 {
	position: relative;
	width: 100px;
	height: 40px;
	border: 0px;
	font-size: 14px;
	text-align: center;
	color: white;
	border-style: none;
	border-radius: 0.25em;
	font-weight: bold;
	bottom: 29px;
	left: 300px;
	padding: auto;
	background-color: #7f9b75;
	cursor: pointer;
}

::-webkit-input-placeholder { /* Chrome/Opera/Safari */
	color: #9fa3b1;
}

::-moz-placeholder { /* Firefox 19+ */
	color: #9fa3b1;
}

:-ms-input-placeholder { /* IE 10+ */
	color: #9fa3b1;
}

/*검색버튼*/
.submit {
	background-color: #7f9b75;
	position: absolute;
	height: 30px;
	width: 60px;
	border: none;
	border-radius: 3px;
	position: relative;
	left: 767px;
    top: 10px;
    cursor: pointer;
}

/*표2*/
.tg2 {
	position: relative;
	margin: auto;
	width: 800px;
	border-collapse: collapse;
	border-spacing: 0;
}

.tg2 td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 20px 20px;
	word-break: normal;
}

.tg2 th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 20px 20px;
	word-break: normal;
}

.tg2 .tg-06_1 {
	border-color: #cbdea6;
	text-align: left;
	vertical-align: top
}

.tg2 .tg-05_1 {
	border-color: #cbdea6;
	text-align: left;
	vertical-align: top
}

.tg2 .tgalltop2 {
	background-color: #cbdea6;
	border-color: #cbdea6;
	font-family: Arial, Helvetica, sans-serif !important;
	font-weight: bold;
	text-align: center;
	vertical-align: bottom
}

.tg2 .tgall2 {
	background-color: #cbdea6;
	border-color: #cbdea6;
	font-weight: bold;
	text-align: center;
	vertical-align: bottom
}

.tg2 .tgallbottom2 {
	background-color: #cbdea6;
	border-color: #cbdea6;
	font-weight: bold;
	text-align: center;
	vertical-align: top
}

.tg2 .butt {
	border: none;
	border-radius: 3px;
	position: absolute;
	margin: 40px 0px 0px -170px;
}

/*모달팝업창*/
.tg2 .butt #popup01 {
	border-radius: 5px;
	overflow: hidden;
	display: none;
	box-shadow: 5px 10px 10px 1px rgba(0, 0, 0, .3);
}

.tg2 .butt #popup01 {
	width: 700px;
	height: 700px;
	position: fixed;
	top: 40%;
	left: 45%;
	margin: -250px 0 0 -250px;
	background-color: #fff;
	z-index: 2;
}

.backon {
	content: "";
	width: 100%;
	height: 100%;
	background: #00000054;
	position: fixed;
	top: 0;
	left: 0;
	z-index: 1;
}

.tg2 .butt #popup01 .close {
	position: absolute;
	top: -25px;
	right: 0;
	cursor: pointer;
}

.tg2 .butt .openPopup {
	cursor: pointer;
}

.tg2 .butt #popup01 .conte {
	height: 700px;
}

/*팝업 안에 있는 헤더*/
.tg2 .butt #popup01 .conte .con_head {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	height: 50px;
	top: 0px;
}

.tg2 .butt #popup01 .conte .con_head td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 22px;
	overflow: hidden;
	padding: 10px 20px;
	word-break: normal;
}

.tg2 .butt #popup01 .conte .con_head .con_h1 {
	background-color: #d5d3d3;
	border-color: #ffffff;
	font-weight: bolder;
	text-align: center;
	vertical-align: top
}

/*팝업 안에 있는 이미지*/
.tg2 .butt #popup01 .conte .list {
	width: 30px;
	height: 30px;
	margin-left: 20px;
	margin-top: 10px;
	float: left;
}

.tg2 .butt #popup01 .conte .list_a {
	font-size: 18px;
	font-weight: bold;
	text-align: left;
	top: 65px;
	left: 50px;
	position: absolute;
}

/*팝업 안에 있는 표 내용1*/
.tg2 .butt #popup01 .conte .con_tg {
	position: relative;
	margin: auto;
	border-collapse: collapse;
	border-spacing: 0;
	width: 650px;
	height: 100px;
	top: 10%;
	right: 4%;
}

.tg2 .butt #popup01 .conte .con_tg td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 10px 20px;
	word-break: normal;
}

.tg2 .butt #popup01 .conte .con_tg th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 20px;
	word-break: normal;
}

.tg2 .butt #popup01 .conte .con_tg .con_2 {
	width: 80%;
	background-color: #ffffff;
	border-color: #c0c0c0;
	font-weight: bold;
	text-align: right;
	vertical-align: top
}

.tg2 .butt #popup01 .conte .con_tg .con_1 {
	width: 20%;
	border-color: #c0c0c0;
	font-weight: bold;
	text-align: center;
	vertical-align: top
}

/*팝업 안에 있는 표 내용2*/
.tg2 .butt #popup01 .conte .con_tg2 {
	position: relative;
	margin: auto;
	border-collapse: collapse;
	border-spacing: 0;
	width: 650px;
	height: 100px;
	top: 18%;
}

.tg2 .butt #popup01 .conte .con_tg2 td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 10px 20px;
	word-break: normal;
}

.tg2 .butt #popup01 .conte .con_tg2 th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 20px;
	word-break: normal;
}

.tg2 .butt #popup01 .conte .con_tg2 .con_3 {
	width: 20%;
	border-color: #c0c0c0;
	font-weight: bold;
	text-align: center;
	vertical-align: top
}

.tg2 .butt #popup01 .conte .con_tg2 .con_4 {
	width: 80%;
	background-color: #ffffff;
	border-color: #c0c0c0;
	font-weight: bold;
	text-align: right;
	vertical-align: top
}

/*예약정보수정 마지막 버튼*/
.tg2 .butt #popup01 .conte #lastbtn {
	position: absolute;
	right: 25px;
	bottom: 30px;
	width: 100px;
	height: 30px;
	border-style: none;
	border-radius: 3px;
	cursor: pointer;
	background: #d5d3d3;
	font-weight: bold;
}

.tg2 .butt #popup01 .conte #lastbtn:hover {
	background: #989699;
}

/*버튼안에 있는 a링크 효과*/
.tg2 .butt #popup01 .conte #lastbtn>a:link {
	color: black;
	text-decoration: none;
}

.tg2 .butt #popup01 .conte #lastbtn>a:hover {
	color: white;
	text-decoration: underline;
}

.tg2 .butt #popup01 .conte #lastbtn>a:visited {
	color: purple;
	text-decoration: none;
}
#detailbt{
	font-size:15px;
	font-weight:bold;
	background-color:#7f9b75;  
	border-radius: 5px;
	color:white;
	border: none;
	width:120px;
	height:35px;
	cursor: pointer;
}
</style>

<!--드롭다운꺼  -->
<link rel="stylesheet" href="styles.css">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	//모달팝업창 부분
	$(document).ready(
			function($) {
				$(".tg2 .butt .openPopup").on("click", function(event) { //팝업오픈 버튼 누르면
					$(".tg2 .butt #popup01").show(); //팝업 오픈
					$("body").append('<div class="backon"></div>'); //뒷배경 생성
				});

				$("body").on(
						"click",
						function(event) {
							if (event.target.className == 'close'
									|| event.target.className == 'backon') {
								$(".tg2 .butt #popup01").hide(); //close버튼 이거나 뒷배경 클릭시 팝업 삭제
								$(".backon").hide();
							}
						});

			});
</script>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 팝업 제이쿼리 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"
	integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
	crossorigin="anonymous"></script>
<title>Insert title here</title>

</head>
<body>
	<section class="bigbox">
		<div class="box1">예약 정보 검색</div>
		<br>
		<br>
		<br>

		<table class="tg">
			<thead>
				<tr>
					<th class="tgalltop">기간</th>
					<th class="tg-01_1">
						<form>
							<p>
								<input type="date" class="calendar"><input id="calbt"
									type="submit" value="검색">
							</p>

						</form>
					</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="tgall">결제방법</td>
					<td class="tg-02_1">
						<form method="get" class="check1" action="form-action1.html">
							<label id="la1"><input type="checkbox" name="buy" value="all"checked>전체</label>
						    <label id="la1"><input type="checkbox" name="buy" value="card">신용카드</label>
							<label id="la1"><input type="checkbox" name="buy" value="account">무통장입금</label>
						</form>
					</td>
				</tr>
				<tr>
					<td class="tgall">예약상태</td>
					<td class="tg-03_1">
						<form method="get" class="check2" action="form-action2.html">
							<label id="la1"><input type="checkbox" name="state" value="all" checked>전체</label> 
							<label id="la1"><input type="checkbox" name="state" value="wait">입금대기</label>
							<label id="la1"><input type="checkbox" name="state"value="account">예약완료</label>
							<label id="la1"><input type="checkbox" name="state" value="cancel">예약취소</label>
							<label id="la1"><input type="checkbox" name="state" value="refund">환불요청</label>

						</form>
					</td>
				</tr>
				<tr>
					<td class="tgallbottom">통합검색</td>
					<td class="tg-04_1">
						<div class="search_box">
							<div class="select2">
								<select id="se">
									<option value="1">전체</option>
									<option value="2">이름</option>
									<option value="3">전화번호</option>
								</select>
							</div>

							<div class="search_field">
								<input type="text" class="input" placeholder="이름 / 전화번호">
								<input type="submit" class="input2" value="조회">
							</div>
						</div>


					</td>
				</tr>
			</tbody>
		</table>
		<p>
			<input class="submit" type="submit" style="color: white;" value="조회">
		</p>

		<br>
		<br>
		<br>
		<br>
		



		<table class="tg2">
			<thead>
				<tr>
					<th class="tgalltop2">기간<br>
					<br>결제방법<br>
					<br>예약상태<br>
					<br>예약자 명
					</th>
					<th class="tg-05_1">2022.03.30(수) ~ 2022.03.31(목)<br>
					<br>신용카드<br>
					<br>
					<span style="color: #FE0000">입금대기</span><br>
					<br>홍길동
					</th>
					<th class="butt">
						<!-- 한 표에 대한 팝업창 -->
						<div class="openPopup">
							<input id="detailbt" type="button" name=btn1 value="상세조회하기">
						</div>
						<div id="popup01">
							<div class="close" style="font-size: 25px;">
								<b>X</b>
							</div>
							<div class="conte">
								<table class="con_head">
									<thead>
										<tr>
											<td class="con_h1">예약정보 상세조회</td>
										</tr>
									</thead>
								</table>
								<div>
									<div>
										<img class="list"
											src="${contextPath}/resources/image/list.PNG" alt="리스트 이미지">
									</div>
									<div class="list_a">예약정보</div>
								</div>
								<table class="con_tg">
									<thead>
										<tr>
											<td class="con_1">예약번호</td>
											<td class="con_2">SB00001</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="con_1">예약접수
											<td class="con_2">PC</td>
										</tr>
										<tr>
											<td class="con_1">객실이름
											<td class="con_2">은방울꽃방</td>
										</tr>
									</tbody>
								</table>

								<table class="con_tg2">
									<thead>
										<tr>
											<td class="con_3">예약자 명</td>
											<td class="con_4">김철수</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="con_3">전화번호</td>
											<td class="con_4">010-1234-5678</td>
										</tr>
										<tr>
											<td class="con_3">생년월일</td>
											<td class="con_4">1992-03-30</td>
										</tr>
										<tr>
											<td class="con_3">요청사항</td>
											<td class="con_4">조식은 꼭 먹을게요~</td>
										</tr>
										<tr>
											<td class="con_3">숙박기간</td>
											<td class="con_4">2022.03.30(수) ~ 2022.03.31(목)</td>
										</tr>
										<tr>
											<td class="con_3">결제방법</td>
											<td class="con_4">무통장 입금</td>
										</tr>
										<tr>
											<td class="con_3">결제금액</td>
											<td class="con_4">130,000 원</td>
										</tr>
										<tr>
											<td class="con_3">예약상태</td>
											<td class="con_4">예약완료</td>
										</tr>
									</tbody>
								</table>
								<button id="lastbtn">
									<a href="${contextPath}/host/reservation/reUpdate.do">예약정보수정</a>
								</button>
							</div>
						</div> <!-- 여기까지 -->

					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="tgall2">기간<br>
					<br>결제방법<br>
					<br>예약상태<br>
					<br>예약자 명
					</td>
					<td class="tg-05_1">2022.03.30(수) ~ 2022.03.31(목)<br>
					<br>무통장 입금<br>
					<br>
					<span style="color: #3531FF">입금완료</span><br>
					<br>임꺽정
					</td>
					<th class="butt"><input id="detailbt" type="button" name=btn1 value="상세조회하기"></th>
				</tr>
				<tr>
					<td class="tgall2">기간<br>
					<br>결제방법<br>
					<br>예약상태<br>
					<br>예약자 명
					</td>
					<td class="tg-05_1">2022.03.30(수) ~ 2022.03.31(목)<br>
					<br>무통장 입금<br>
					<br>
					<span style="color: #3531FF">예약완료</span><br>
					<br>
					<span style="color: #000">김철수</span></td>
					<th class="butt"><input id="detailbt" type="button" name=btn1 value="상세조회하기"></th>
				</tr>
				<tr>
					<td class="tgall2">기간<br>
					<br>결제방법<br>
					<br>예약상태<br>
					<br>예약자 명
					</td>
					<td class="tg-05_1">2022.03.30(수) ~ 2022.03.31(목)<br>
					<br>카드<br>
					<br>
					<span style="color: #FE0000">예약취소</span><br>
					<br>김영희
					</td>
					<th class="butt"><input id="detailbt" type="button" name=btn1 value="상세조회하기"></th>
				</tr>
				<tr>
					<td class="tgallbottom2">기간<br>
					<br>결제방법<br>
					<br>예약상태<br>
					<br>예약자 명
					</td>
					<td class="tg-06_1">2022.03.30(수) ~ 2022.03.31(목)<br>
					<br>무통장 입금<br>
					<br>
					<span style="color: #FE0000">환불요청</span><br>
					<br>이다민
					</td>
					<th class="butt"><input id="detailbt" type="button" name=btn1 value="상세조회하기"></th>
				</tr>


			</tbody>
		</table>
	</section>
</body>
</html>