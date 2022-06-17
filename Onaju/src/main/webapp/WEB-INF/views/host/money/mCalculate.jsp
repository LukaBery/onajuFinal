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

.box2 {
	width: 800px;
	height: 300px;
	background-color: #cbdea6;
	border: 0px;
	padding: 10px;
	margin: auto;
}

/*a링크 효과*/
.site:link {
	color: blue;
}

.site:hover {
	color: red;
}

.site:visited {
	color: purple;
}

#tex0 {
	position: relative;
    left: 600px;
}

#tex {
	position: relative;
	top: 65px;
    left: 10px;
	font-size: 20px;
	text-align: center;
}
/*날짜조회*/
.tg {
	width: 800px;
	position: relative;
	margin: auto;
	border-collapse: collapse;
	border-spacing: 0;
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

.tg .tg_c {
	background-color: #EFEFEF;
	border-color: #cbdea6;
	font-weight: bold;
	text-align: center;
	vertical-align: top
}

.tg .tg_cc {
	border-color: #cbdea6;
	font-weight: bold;
	text-align: right;
	vertical-align: top
}

.tg .tg_cc .calendar {
	font-size: 16px;
	font-family: Consolas, sans-serif;
}

/*조회버튼*/
.submit {
    background-color: #7f9b75;
    color: white;
    height: 30px;
    width: 60px;
    border: none;
    border-radius: 3px;
    position: absolute;
    right: 0px;
    top: 80px;
    cursor: pointer;
}

/*매출 표*/
.tg2 {
	width: 800px;
	position: relative;
	margin: auto;
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
	padding: 9px 20px;
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
	padding: 9px 20px;
	word-break: normal;
}

.tg2 .tg-a {
	background-color: #efefef;
	border-color: #cbdea6;
	font-weight: bold;
	text-align: center;
	vertical-align: top
}

.tg2 .tg-t {
	border-color: #cbdea6;
	text-align: center;
	vertical-align: top
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="bigbox">
	<div class="box1">정산 내역</div>

	<br>
	<br>
	<br>

	<div class="box2">
		<a class="site" href="#"><h4 id="tex0">정산 명세서 출력하기></h4></a><br>
		<div id="tex">
			<h3>이달의 입금 예정 금액</h3>
			<h1>2,120,000 원</h1>
		</div>
	</div>

	<br>
	<br>
	<br>

	<table class="tg">
		<thead>
			<tr>
				<td class="tg_c">기간</td>
				<td class="tg_cc">
					<form>
						<p>
							<input type="date" class="calendar"><input class="submit" type="submit"
								value="검색">
						</p>
					</form>
				</td>
			</tr>
		</thead>
	</table>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<table class="tg2">
		<thead>
			<tr>
				<th class="tg-a">입금상태</th>
				<th class="tg-a">입금일</th>
				<th class="tg-a">거래기간</th>
				<th class="tg-a">이용서비스</th>
				<th class="tg-a">거래금액</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="tg-t">입금예정</td>
				<td class="tg-t">2022.04.01(금)</td>
				<td class="tg-t">2022.03.01(화)<br>~2022.03.31(목)
				</td>
				<td class="tg-t">민간숙박</td>
				<td class="tg-t">2,120,000 원</td>
			</tr>
			<tr>
				<td class="tg-t">입금예정</td>
				<td class="tg-t">2022.04.01(금)</td>
				<td class="tg-t">2022.03.01(화)<br>~2022.03.31(목)
				</td>
				<td class="tg-t">민간숙박</td>
				<td class="tg-t">2,120,000 원</td>
			</tr>
			<tr>
				<td class="tg-t">입금예정</td>
				<td class="tg-t">2022.04.01(금)</td>
				<td class="tg-t">2022.03.01(화)<br>~2022.03.31(목)
				</td>
				<td class="tg-t">민간숙박</td>
				<td class="tg-t">2,120,000 원</td>
			</tr>
			<tr>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
			</tr>
			<tr>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
			</tr>
			<tr>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
			</tr>
			<tr>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
			</tr>
			<tr>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
			</tr>
			<tr>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
			</tr>
			<tr>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
				<td class="tg-t"></td>
			</tr>
		</tbody>
	</table>
	</section>
</body>
</html>