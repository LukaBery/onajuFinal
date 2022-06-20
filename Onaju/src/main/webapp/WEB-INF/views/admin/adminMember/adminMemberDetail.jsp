<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.mem-item1{
	width: 1140px; 
	height: 50px; 
	display:flex; 
	align-items: center;
}
.mem-item2{
	border-radius: 5px;
}
.mem-item1 div {
	margin-left: 30px;
}
.mem-item2-chil{
	display: flex;
}
.mem-item2-chil-1{
	width: 200px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
	border-bottom: none;
}
.mem-item2-chil-2{
	width: 370px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #E6E6E6; 
	border-bottom: none;
}
.mem-item2-chil-3{
	width: 940px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #E6E6E6; 
	border-bottom: none;
}
.mem-item2-chil-4{
	width: 200px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
}
.mem-item2-chil-5{
	width: 370px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #E6E6E6; 	
}
.mem-item2-chil-1 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
}
.mem-item2-chil-2 div{
	margin-left: 20px;
}
.mem-item2-chil-3 div{
	margin-left: 20px;
}
.mem-item2-chil-4 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
}
.mem-item2-chil-5 div{
	margin-left: 20px;
}
.mem-item2-img{
	width: 150px;
	height: 200px;
}
.mem-item5{
	width: 1140px;
	display: flex;
	justify-content: center;
	margin: 40px 0 40px 0;
}
.mem-item5 div{
	margin: 0px 10px 0px 10px;
}
.a1{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	border-radius: 5px; 
	border: none; 
	text-decoration: none;
	background: #000033;
	color: #ffffff;	
}
.a2{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	border-radius: 5px; 
	border: none; 
	text-decoration: none;
	background: #ff3333;
	color: #ffffff;	
}
.styled-table{
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0 0.15); 
	width: 100%;
	table-layout: fixed;
}
.styled-table thead tr{
	background-color: #eeeeee;
	color: #666666;
	text-align: left;
	border: 1px solid #ffffff;
}
.styled-table thead tr td{
	border: 1px solid #ffffff; 
	font-size: 14px;
}
.styled-table th, .styled-table td {
	padding: 12px 15px;
}
.styled-table tbody tr{
	border-bottom: 1px solid #dddddd;
	font-size: 13px;
}
.styled-table tbody td:hover{
	background-color: #99CCFF;
}
.styled-table tbody td:nth-of-type(even){
	/* background-color: #f3f3f3; */
}
.styled-table tbody td:nth-of-type(even):hover{
	background-color: #99CCFF;
}
.styled-table tbody td:nth-of-type{
	border-bottom: 2px solid #009879;
}
.styled-table tbody td.active-row{
	font-weight: bold;
	color: #009879;
}
</style>
</head>
<body>
	<section class="memDetail_con">
		<div class="mem-item1"><div><h3>회원정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>아이디</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_id }</div></div>
				<div class="mem-item2-chil-1"><div>비밀번호</div></div>
				<div class="mem-item2-chil-2"><div>****************</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>이름</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_name }</div></div>
				<div class="mem-item2-chil-1"><div>생년월일</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_birth_y }년${memberVO.u_birth_m }월${memberVO.u_birth_d }일</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>성별</div></div>
				<c:choose>
					<c:when test="${memberVO.u_gender == 'm' || memberVO.u_gender == 'M'}">
						<div class="mem-item2-chil-2"><div>남자</div></div>
					</c:when>
					<c:otherwise>
						<div class="mem-item2-chil-2"><div>여자</div></div>
					</c:otherwise>
				</c:choose>
				<div class="mem-item2-chil-1"><div>전화번호</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_phone }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>주소</div></div>
				<div class="mem-item2-chil-3"><div>${memberVO.zipcode }</div><div>${memberVO.roadAddress }${memberVO.restAddress }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>이메일</div></div>
				<div class="mem-item2-chil-3"><div>${memberVO.u_email1 }&nbsp;@&nbsp;${memberVO.u_email2 }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>포인트</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_point }</div></div>
				<div class="mem-item2-chil-1"><div>회원등급</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_grade }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>추천인</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.proposer }</div></div>
				<div class="mem-item2-chil-1"><div>이벤트 수신여부</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_service_01 }${memberVO.u_service_02 }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>가입일</div></div>
				<div class="mem-item2-chil-5"><div><fmt:formatDate value="${memberVO.joinDate }" type="both" dateStyle="long" /></div></div>
				<div class="mem-item2-chil-4"><div>회원 상태</div></div>
				<c:choose>
					<c:when test="${memberVO.del_yn == 'y' || memberVO.del_yn == 'Y'}">
						<div class="mem-item2-chil-5"><div>탈퇴</div></div>
					</c:when>
					<c:otherwise>
						<div class="mem-item2-chil-5"><div>가입완료</div></div>
					</c:otherwise>
				</c:choose>
			</div>		
		</div>
		<div class="mem-item1"><div><h3>최근 예약 내역</h3></div></div>
		<div>
			<table class="styled-table" style="width: 1140px;">
				<colgroup>
					<col style="width:8%">
					<col style="width:14%">
					<col style="width:8%">
					<col style="width:10%">
					<col style="width:8%">
					<col style="width:8%">
					<col style="width:18%">
					<col style="width:8%">
					<col style="width:8%">
					<col style="width:10%">
				</colgroup>
				<thead>
					<tr>
						<td>예약 번호</td>
						<td>예약 숙소명</td>
						<td>객실 번호</td>
						<td>숙소 타입</td>
						<td>예약자 명</td>
						<td>예약 인원</td>
						<td>예약 기간</td>
						<td>결제 금액</td>
						<td>결제 방식</td>
						<td>결제 상태</td>
					</tr>
				</thead>
				<c:choose>
					<c:when test="${empty ordersList}" >
    					<tr  height="10">
      						<td colspan="10">
        						<p align="center">
        							<b><span style="font-size:9pt;">예약 정보가 없습니다.</span></b>
        						</p>
      						</td>  
    					</tr>
  					</c:when>
  					<c:when test="${!empty ordersList}" >
  						<c:forEach  var="orderVO" items="${ordersList }" varStatus="reviewNum" >
							<tr>
								<td>${orderVO.order_code }</td>
								<td>${orderVO.hostInfo_name }</td>
								<td>${orderVO.room_number }</td>
								<td>${orderVO.room_type }</td>
								<td>${orderVO.order_name }</td>
								<td>${orderVO.people_count }</td>
								<td>${orderVO.checkIn_date }&nbsp;~&nbsp;${orderVO.checkOut_date }</td>
								<td>${orderVO.total }</td>
								<td>${orderVO.pay_type }</td>
								<td>${orderVO.pay_state }</td>
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
			</table>
		</div>
		<div class="mem-item1"><div><h3>최근 이용 내역</h3></div></div>
		<div>
			<table class="styled-table" style="width: 1140px;">
				<colgroup>
					<col style="width:8%">
					<col style="width:14%">
					<col style="width:8%">
					<col style="width:10%">
					<col style="width:8%">
					<col style="width:8%">
					<col style="width:18%">
					<col style="width:8%">
					<col style="width:8%">
					<col style="width:10%">
				</colgroup>
				<thead>
					<tr>
						<td>예약 번호</td>
						<td>예약 숙소명</td>
						<td>객실 번호</td>
						<td>숙소 타입</td>
						<td>예약자 명</td>
						<td>예약 인원</td>
						<td>예약 기간</td>
						<td>결제 금액</td>
						<td>결제 방식</td>
						<td>결제 상태</td>
					</tr>
				</thead>
				<c:choose>
					<c:when test="${empty ordersList}" >
    					<tr  height="10">
      						<td colspan="10">
        						<p align="center">
        							<b><span style="font-size:9pt;">이용 내역이 없습니다.</span></b>
        						</p>
      						</td>  
    					</tr>
  					</c:when>
  					<c:when test="${!empty ordersList}" >
  						<c:forEach  var="orderVO" items="${ordersList }" varStatus="reviewNum" >
							<tr>
								<td>${orderVO.order_code }</td>
								<td>${orderVO.hostInfo_name }</td>
								<td>${orderVO.room_number }</td>
								<td>${orderVO.room_type }</td>
								<td>${orderVO.order_name }</td>
								<td>${orderVO.people_count }</td>
								<td>${orderVO.checkIn_date }&nbsp;~&nbsp;${orderVO.checkOut_date }</td>
								<td>${orderVO.total }</td>
								<td>${orderVO.pay_type }</td>
							 	<td>${orderVO.pay_state }</td>
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
			</table>
		</div>
		<div class="mem-item5">
			<div><a class="a1" href='<c:out value="${memberVO.u_id }" />'>수정하기</a></div>
			<div><button class="a2" type="submit" id="memberList" data-oper="list">돌아가기</button></div>	
			<div><button class="a3" id="deleteMember" value='<c:out value="${memberVO.u_id }" />' >탈퇴</button></div>
		</div>	
	</section>
	<form id="operForm" action="${contextPath }/admin/memberList.do" method="get">
		<input type="hidden" name="pageNum" value="${cri.pageNum }" />
		<input type="hidden" name="amount" value="${cri.amount }" />
		<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
		<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }"/>' >
		<input type="hidden" name="u_del_yn" value='<c:out value="${cri.u_del_yn }"/>'>
		<input type="hidden" name="u_name2" value='<c:out value="${cri.u_name2 }"/>'>
		<input type="hidden" name="u_id2" value='<c:out value="${cri.u_id2 }"/>'>
	</form>
<script type="text/javascript">

$(document).ready(function(){
	var operForm = $("#operForm");
	$(".a2").on("click",function(e){		
		e.preventDefault();
		var operation = $(this).data("oper");
		operForm.attr("action", "${contextPath}/admin/memberList.do").attr("method","get");
		alert("리스트로");
		operForm.submit();
	});
});
</script>

<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
$(".a3").on("click",function(e){
	alert("탈퇴탈퇴");
	e.preventDefault();
	operForm.append("<input type='hidden' name='u_id' value='"+$(this).attr("value")+"'>");
	operForm.attr("action", "${contextPath}/admin/memberDelete.do").attr("method","post");
	operForm.submit();
	});
});
</script>

<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
$(".a1").on("click",function(e){
	alert("수정수정");
	e.preventDefault();
	operForm.append("<input type='hidden' name='u_id' value='"+$(this).attr("href")+"'>");
	operForm.attr("action", "${contextPath}/admin/memberModify.do");
	operForm.submit();
	});
});
</script>
</body>
</html>