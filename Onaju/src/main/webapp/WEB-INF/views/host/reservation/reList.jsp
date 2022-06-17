<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.tg {
	position: relative;
	margin: auto;
	width: 800px;
	margin: auto;
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

.tg .tg-4twm {
	background-color: #cbdea6;
	border-color: #cbdea6;
	font-family: Arial, Helvetica, sans-serif !important;
	font-weight: bold;
	text-align: center;
	vertical-align: middle
}

.tg .tg-5hxx {
	border-color: #cbdea6;
	text-align: center;
	vertical-align: middle
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="bigbox">
		<div class="box1">예약 정보 목록</div>
		<br>
		<br>
		<br>
		<table class="tg">
			<thead>
				<tr>
					<th class="tg-4twm">예약자 명</th>
					<th class="tg-4twm">기간</th>
					<th class="tg-4twm">객실이름</th>
					<th class="tg-4twm">결제방법</th>
					<th class="tg-4twm">결제금액</th>
					<th class="tg-4twm">예약상태</th>
					<th class="tg-4twm">요청사항</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="tg-5hxx">홍길동</td>
					<td class="tg-5hxx">2022.03.30(수)<br>~2022.03.31(목)
					</td>
					<td class="tg-5hxx">장미방</td>
					<td class="tg-5hxx">카드</td>
					<td class="tg-5hxx">70,000 원</td>
					<td class="tg-5hxx">예약완료</td>
					<td class="tg-5hxx">조식주세요.</td>
				</tr>
				<tr>
					<td class="tg-5hxx">임꺽정</td>
					<td class="tg-5hxx">2022.03.30(수)<br>~2022.03.31(목)
					</td>
					<td class="tg-5hxx">튤립방</td>
					<td class="tg-5hxx">카드</td>
					<td class="tg-5hxx">120,000 원</td>
					<td class="tg-5hxx">예약완료</td>
					<td class="tg-5hxx">조식 안줘도 되요.</td>
				</tr>
				<tr>
					<td class="tg-5hxx">김철수</td>
					<td class="tg-5hxx">2022.03.30(수)<br>~2022.03.31(목)
					</td>
					<td class="tg-5hxx">은방울꽃방</td>
					<td class="tg-5hxx">무통장입금</td>
					<td class="tg-5hxx">110,000 원</td>
					<td class="tg-5hxx">예약완료</td>
					<td class="tg-5hxx">픽업해주세요.</td>
				</tr>
				<tr>
					<td class="tg-5hxx">김영희</td>
					<td class="tg-5hxx">2022.03.30(수)<br>~2022.03.31(목)
					</td>
					<td class="tg-5hxx">히아신스방</td>
					<td class="tg-5hxx">카드</td>
					<td class="tg-5hxx">90,000 원</td>
					<td class="tg-5hxx">입금대기</td>
					<td class="tg-5hxx">방에 간식 넣어주세요.</td>
				</tr>
				<tr>
					<td class="tg-5hxx">이다민</td>
					<td class="tg-5hxx">2022.03.30(수)<br>~2022.03.31(목)
					</td>
					<td class="tg-5hxx">제비꽃방</td>
					<td class="tg-5hxx">카드</td>
					<td class="tg-5hxx">90,000 원</td>
					<td class="tg-5hxx">입금대기</td>
					<td class="tg-5hxx">주차장 두 곳 비워주세요.</td>
				</tr>
				<tr>
					<td class="tg-5hxx">이정아</td>
					<td class="tg-5hxx">2022.03.30(수)<br>~2022.03.31(목)
					</td>
					<td class="tg-5hxx">백합방</td>
					<td class="tg-5hxx">무통장입금</td>
					<td class="tg-5hxx">90,000원</td>
					<td class="tg-5hxx">입금대기</td>
					<td class="tg-5hxx">주차장 한 곳 비워주세요.</td>
				</tr>
			</tbody>
		</table>
	</section>
</body>
</html>