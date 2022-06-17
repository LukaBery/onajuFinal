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

.conte {
	width: 800px;
}
/*이미지*/
.conte .list {
	position: relative;
	width: 80px;
	height: 80px;
}

/*이미지 글*/
.conte .list_a {
	position: absolute;
	font-size: 18px;
	font-weight: bold;
	margin-top: -50px;
	margin-left: 90px;
}

/*표 내용1*/
.con_tg {
	width: 800px;
	border-collapse: collapse;
	border-spacing: 0;
	position: absolute;
	top: 200px;
    left: 30px;
}

.conte .con_tg td {
	border-color: #cbdea6;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 20px 20px;
	word-break: normal;
}

.conte .con_tg th {
	border-color: #cbdea6;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 20px 20px;
	word-break: normal;
}

.conte .con_tg .con_1 {
	width: 20%;
	background-color: #cbdea6;
	border-color: #cbdea6;
	font-weight: bold;
	text-align: center;
	vertical-align: top
}

.conte .con_tg .con_2 {
	width: 80%;
	border-color: #cbdea6;
	font-weight: bold;
	text-align: right;
	vertical-align: top
}

/*표 내용2*/
.con_tg2 {
	width: 800px;
	border-collapse: collapse;
	border-spacing: 0;
	position: absolute;
	top: 450px;
    left: 30px;
}

.conte .con_tg2 td {
	border-color: #cbdea6;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 20px 20px;
	word-break: normal;
}

.conte .con_tg2 th {
	border-color: #cbdea6;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 20px 20px;
	word-break: normal;
}

.conte .con_tg2 .con_3 {
	width: 20%;
	background-color: #cbdea6;
	border-color: #cbdea6;
	font-weight: bold;
	text-align: center;
	vertical-align: top
}

.conte .con_tg2 .con_4 {
	width: 80%;
	border-color: #cbdea6;
	font-weight: bold;
	text-align: right;
	vertical-align: top
}

.conte .con_tg2 .con_4 .calendar {
	font-size: 16px;
	font-family: Consolas, sans-serif;
}

/*수정완료 버튼*/
.conte #lastbtn {
	position: absolute;
	right: 20px;
    top: 1010px;
	width: 110px;
	height: 35px;
	border-style: none;
	border-radius: 3px;
	cursor: pointer;
	background: #7f9b75;
	font-weight: bold;
	font-size: 18px;
}

.conte #lastbtn:hover {
	background:#cbdea6; ;
}

/*버튼안에 있는 a링크 효과*/
.conte #lastbtn>a:link {
	color: blue;
	text-decoration-line: none;
}

.conte #lastbtn>a:hover {
	color: black;
	text-decoration-line: none;
}

.conte #lastbtn>a:visited {
	color: purple;
	text-decoration-line: none;
}

/*드롭다운 창*/
/*드롭다운1*/
select {
	/* Reset Select */
	appearance: none;
	outline: 0;
	border: 0;
	box-shadow: none;
	/* Personalize */
	flex: 1;
	padding: 0 1em;
	color: black;
	background-color: #EFEFEF;
	background-image: none;
	cursor: pointer;
	font-weight: bold;
}
/* Remove IE arrow */
select::-ms-expand {
	display: none;
}
/* Custom Select wrapper */
.conte .con_tg .con_2 .select {
	position: relative;
	display: flex;
	width: 120px;
	height: 3em;
	border-radius: 0.25em;
	overflow: hidden;
	left: 80%;
}
/* Arrow */
.conte .con_tg .con_2 .select::after {
	content: "\25BC";
	position: absolute;
	top: 0;
	right: 0;
	padding: 1em;
	background-color: #7f9b75;
	transition: 0.25s all ease;
	pointer-events: none;
}
/* Transition */
.conte .con_tg .con_2 .select:hover::after {
	color: #f39c12;
}

/*드롭다운2*/

/* Custom Select wrapper */
.conte .con_tg2 .con_4 .select {
	position: relative;
	display: flex;
	width: 120px;
	height: 3em;
	border-radius: 0.25em;
	overflow: hidden;
	left: 80%;
}
/* Arrow */
.conte .con_tg2 .con_4 .select::after {
	content: "\25BC";
	position: absolute;
	top: 0;
	right: 0;
	padding: 1em;
	background-color: #7f9b75;
	transition: 0.25s all ease;
	pointer-events: none;
}
/* Transition */
.conte .con_tg2 .con_4 .select:hover::after {
	color: #f39c12;
}

#reimg {
	width: 800px;
	height: 100px;
	margin: 10px 0px 0px 40px;
}
#calbt{
    background-color: #7f9b75;
    color: white;
    height: 30px;
    width: 60px;
    border: none;
    border-radius: 3px;
    position: absolute;
    left: 665px;
    top: 254px;
    cursor: pointer;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<section class="bigbox">
		<div class="box1">예약정보 수정</div>
		<br>
		
		<div class="conte">

			<div id="reimg">
				<div>
					<img class="list" src="${contextPath}/resources/image/mod.PNG"
						alt="리스트 이미지">
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
						<td class="con_2">
							<div class="select">
								<select>
									<option value="1">장미방</option>
									<option value="2">튤립방</option>
									<option value="3">제비꽃방</option>
									<option value="3">은방울꽃방</option>
									<option value="3">히아신스방</option>
								</select>
							</div>
						</td>
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
						<td class="con_4">
							<form>
								<p>
									<input type="date" class="calendar"><input id="calbt" type="submit" value="검색">
								</p>
							</form>
						</td>
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
						<td class="con_4">
							<div class="select">
								<select>
									<option value="1">예약완료</option>
									<option value="2">예약취소완료</option>
									<option value="3">환불완료</option>
								</select>
							</div>

						</td>
					</tr>
				</tbody>
			</table>
			<button id="lastbtn">
				<a href="${contextPath}/host/reservation/reSearchDetail.do">수정완료</a>
			</button>
		</div>
	</section>
</body>
</html>