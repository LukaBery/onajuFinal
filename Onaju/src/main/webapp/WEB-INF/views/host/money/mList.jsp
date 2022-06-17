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
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="bigbox">
		<div class="box1">매출 관리</div>
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

		<style type="text/css">
.tg {
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

.tg .tg-qkjw {
	background-color: white;
	border-color: #cbdea6;
	text-align: center;
	vertical-align: top
}

.tg .tg-telm {
	background-color: #EFEFEF;
	border-color: #cbdea6;
	font-weight: bold;
	text-align: center;
	vertical-align: top
}

.tg .tg-ts2z {
	border-color: #cbdea6;
	text-align: center;
	vertical-align: top
}

.tg .tg-xg87 {
	border-color: #cbdea6;
	text-align: center;
	vertical-align: top
}

.tg .tg-5raw {
	background-color: white;
	border-color: #cbdea6;
	text-align: center;
	vertical-align: top
}
</style>
		<table class="tg">
			<thead>
				<tr>
					<th class="tg-telm" colspan="2" rowspan="2">날짜</th>
					<th class="tg-telm" colspan="2">숙박</th>
					<th class="tg-telm" rowspan="2">매출</th>
					<th class="tg-telm" rowspan="2">누계</th>
					<th class="tg-telm" rowspan="2">카드</th>
					<th class="tg-telm" rowspan="2">계좌이체</th>
				</tr>
				<tr>
					<th class="tg-telm">개수</th>
					<th class="tg-telm">금액</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="tg-ts2z">21일</td>
					<td class="tg-xg87">토</td>
					<td class="tg-xg87">2</td>
					<td class="tg-ts2z">80,000 원</td>
					<td class="tg-ts2z">80,000 원</td>
					<td class="tg-ts2z">80,000 원</td>
					<td class="tg-ts2z">40,000 원</td>
					<td class="tg-ts2z">40,000 원</td>
				</tr>
				<tr>
					<td class="tg-ts2z"></td>
					<td class="tg-xg87"></td>
					<td class="tg-xg87"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
				</tr>
				<tr>
					<td class="tg-ts2z"></td>
					<td class="tg-xg87"></td>
					<td class="tg-xg87"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
				</tr>
				<tr>
					<td class="tg-ts2z"></td>
					<td class="tg-xg87"></td>
					<td class="tg-xg87"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
				</tr>
				<tr>
					<td class="tg-ts2z"></td>
					<td class="tg-xg87"></td>
					<td class="tg-xg87"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
				</tr>
				<tr>
					<td class="tg-ts2z"></td>
					<td class="tg-xg87"></td>
					<td class="tg-xg87"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-ts2z"></td>
				</tr>
				<tr>
					<td class="tg-5raw"></td>
					<td class="tg-xg87"></td>
					<td class="tg-qkjw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
				</tr>
				<tr>
					<td class="tg-5raw"></td>
					<td class="tg-xg87"></td>
					<td class="tg-qkjw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
				</tr>
				<tr>
					<td class="tg-5raw"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
				</tr>
				<tr>
					<td class="tg-5raw"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
				</tr>
				<tr>
					<td class="tg-5raw"></td>
					<td class="tg-ts2z"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
					<td class="tg-5raw"></td>
				</tr>
			</tbody>
		</table>
	</section>
</body>
</html>