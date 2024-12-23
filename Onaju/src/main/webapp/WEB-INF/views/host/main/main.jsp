<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="hostReservationList" value = "${hostReservationList}" />
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.box1_1 {
	margin: 0 auto;
    margin: 40px 0 0 50px;
    font-size: 20px;
    color: #486889;
	
}
.mainBox1 {
	display: inline-block;
	width: 45%;
	height:360px;
	border: 1px solid #ccc;
	border-radius: 10px;
	margin: 40px 0px 40px 42px;
	padding: 10px 10px;
	
	
}

.mainBox2 {
	display: inline-block;
	width: 95%;
	border: 1px solid #ccc;
	border-radius: 10px;
	height:400px;
	margin: 0px 0px 50px 42px;	
}
.mainBoxText{
	display: inline-block;
	margin: 0 0 10px 10px;
	color: #403e3f;
	font-size: 12px;
	font-weight:bold;
	font-family: 'roboto', sans-serif;

}

.board-table {
	color:#403e3f;
	font-size: 14px;
	width: 100%;
	border-top: 1px solid #cbdea6;;
	border-bottom: 1px solid #cbdea6;;
	
}


 .board-table th, .board-table td {
 	font-size: 11px;
	padding: 5px; 0;;
	border-top: 1px solid #cbdea6;
    text-align: center;
    color:#403e3f;
}

.board-table tbody td {
	border-top: 1px solid #cbdea6;
	text-align: center;
	 color:#403e3f;
}

.moreButton {
	width: 100%;
	display: inline-block;
	margin-top: 10px;
	margin-left: 320px;
	font-size: 12px;
	float: left;
}
.moreButton a {
	color:#666666;

}
.chartBox {
	width: 100%;
	margin: 0 auto;
	margin-left: 40px;
}
#main_btn_a{text-decoration: none; color: black;
}
#main_btn_a:visited, main_btn_a:hover, main_btn_a:focus{text-decoration: none; 
}
</style>
</head>
<body>
<section class="sec1">
		<div>
		<div class="box1_1">
		
		<c:choose>
			<c:when test="${isLogOn==true and not empty hostInfo }">
				<i id="main_font_i" class=" fa-fw">${hostInfo.h_id} 호스트님 환영합니다.</i>
			</c:when>
			<c:otherwise>
					<i id="main_font_i" class=" fa-fw"></i>
			</c:otherwise>
		</c:choose> 
		</div>
		<div class="mainBox1">
			<span class="mainBoxText">예약 내역</span>
			<div>
				<table class="board-table">
					<colgroup>
						<col width="10%" />
						<col width="*" />
						<col width="15%" />
						<col width="25%" />
						<col width="15%" />
						
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class="">NO.</th>
							<th scope="col" class="">상호명</th>
							<th scope="col" class="">객실번호</th>
							<th scope="col" class="">예약날짜</th>	
							<th scope="col" class="">승인여부</th>	
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty hostReservationList}">
								<tr>
									<td colspan="4">
										<p>
											<b><span>예약 미승인 내역이 없습니다.</span></b>
										</p>
									</td>
								</tr>
							</c:when> 
							<c:when test="${!empty hostReservationList}">
								<c:forEach var="list" items="${hostReservationList}" begin="0" end="9">
									<tr>
										<td>${list.order_code}</td>
										<td>${list.hostInfo_name}</td>
										
										<td>${list.room_number}</td>
										<td><fmt:formatDate  value="${ list.checkIn_date}" pattern="MM.dd" />
							                         ~
											<fmt:formatDate value="${ list.checkOut_date}" pattern="MM.dd" />
										</td>
										<td >
											<c:choose>
											<c:when test="${list.reservation_state=='w' }"><p id="wating">대기</p></c:when>	
											 <c:when test="${list.reservation_state=='y' }"><p id="approve">승인</p></c:when>		
											 <c:when test="${list.reservation_state=='n' }"><p id="Notapprove">거부</p></c:when>		
											 </c:choose>										
										</td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>	
				</table>
			</div>
			<div class="moreButton">
				<a href="${contextPath}/host/reservation/hostReservationList.do"><i style="color:#edbc40" class="fa-solid fa-angles-right"></i>&nbsp;더보기</a>
			</div>	
		</div>
		<div class="mainBox1">
			<span class="mainBoxText">객실 목록</span>
			<div>
				<table class="board-table">
					<colgroup>
						<col width="15%" />
						<col width="30%" />
						<col width="30%" />
						<col width="20%" />
						
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class="">객싫 번호</th>
							<th scope="col" class="">객실 명</th>
							<th scope="col" class="">가격</th>	
							
							<th scope="col" class="">상태</th>	
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty hostGoodsList}">
								<tr>
									<td colspan="3">
										<p>
											<b><span>작성된 공지가 없습니다.</span></b>
										</p>
									</td>
								</tr>
							</c:when> 
							<c:when test="${!empty hostGoodsList}">
								<c:forEach var="list" items="${hostGoodsList}" begin="0" end="9">
									<tr>
										<td>${list.room_number}</td>
										
										<td><a id="main_btn_a"href="${pageContext.request.contextPath}/host/goods/modiHostGoodsForm.do?room_code=${list.room_code}">${list.hostInfo_name}</a></td>
										<td>${list.room_fee}</td>
										<td>
										<c:choose>
										<c:when test="${list.room_status =='Y' }"> 예약 가능</c:when>
										<c:when test="${list.room_status !='Y' }">이용 불가</c:when>
										</c:choose>
										</td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>	
				</table>
			</div>
			<div class="moreButton">
				<a href="${contextPath }/host/goods/hostGoodsList.do"><i style="color:#edbc40" class="fa-solid fa-angles-right"></i>&nbsp;더보기</a>
			</div>	
			
		</div>
		</div>
		
		
</section>
</body>
</html>
