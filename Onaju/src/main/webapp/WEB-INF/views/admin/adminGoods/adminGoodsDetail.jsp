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
	border-bottom: 1px solid #000033;
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
	border-left: none;
	border-top: none;
}
.mem-item2-chil-3{
	width: 940px;
	height: 50px;
	display:flex; 
	align-items: center;
	border-bottom: 1px solid #E6E6E6; 
	border-right: 1px solid #E6E6E6;
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
	border-bottom: 1px solid #E6E6E6; 	
	border-right: 1px solid #E6E6E6; 	
}
.mem-item2-chil-6{
	width: 200px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
	border-bottom: none;
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
.mem-item2-chil-6 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
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
<script type="text/javascript">

</script>
</head>
<body>
	<section class="memDetail_con">
		<div class="mem-item1"><div><h3>사업주 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대표자 아이디</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.h_id }</div></div>
				<div class="mem-item2-chil-1"><div>대표자명</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.h_name }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대표자 전화번호</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.h_phone }</div></div>
				<div class="mem-item2-chil-1"><div>대표자 이메일</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.h_email1 }${roomDetail.h_email2 }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대리인명</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.deputy_name }</div></div>
				<div class="mem-item2-chil-1"><div>대리인 생년월일</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.deputy_birth }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>대리인 전화번호</div></div>
				<div class="mem-item2-chil-5"><div>${roomDetail.deputy_phone }</div></div>
				<div class="mem-item2-chil-4"><div>대표자와의 관계</div></div>
				<div class="mem-item2-chil-5"><div>${roomDetail.deputy_department }</div></div>
			</div>		
		</div>
		<div class="mem-item1"><div><h3>사업장 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점명</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.hostInfo_name }</div></div>
				<div class="mem-item2-chil-1"><div>가맹점 번호</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.h_code }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업자 등록번호</div></div>
				<div class="mem-item2-chil-5"><div>${roomDetail.h_sellerNum }</div></div>
				<div class="mem-item2-chil-1"><div>가맹점 계좌번호</div></div>
				<div class="mem-item2-chil-5"><div>${roomDetail.h_accountNum }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-6"><div>가맹점 주소</div></div>
				<div>
					<div class="mem-item2-chil-3"><div>${roomDetail.zipcode }&emsp;${roomDetail.roadAddress }&emsp;${roomDetail.restAddress }</div></div>
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>가맹점 업종 타입</div></div>
				<div class="mem-item2-chil-5"><div>${roomDetail.host_type }</div></div>
				<div class="mem-item2-chil-4"><div>가맹점 계좌번호</div></div>
				<div class="mem-item2-chil-5"><div>${roomDetail.h_accountNum }</div></div>
			</div>
		</div>
		
		
		<div class="mem-item1"><div><h3>가맹점 룸 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 룸 호실</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.room_number }</div></div>
				<div class="mem-item2-chil-1"><div>가맹점 룸 타입</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.room_type }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 룸 체크인</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.able_checkIn }</div></div>
				<div class="mem-item2-chil-1"><div>가맹점 룸 체크아웃</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.able_checkOut }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 룸 소개 제목</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.title }</div></div>
				<div class="mem-item2-chil-1"><div>가맹점 룸 소개글</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.content }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 룸 가격</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.room_fee }원</div></div>
				<div class="mem-item2-chil-1"><div>최대 수용 인원</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.max_number }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 룸 등록일자</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.creDate }</div></div>
				<div class="mem-item2-chil-1"><div>가맹점 룸 상태</div></div>
				<div class="mem-item2-chil-2"><div>${roomDetail.del_yn }</div></div>
			</div>
			<div class="mem-item1">
				<div><h3>룸 디테일 정보</h3></div>
			</div>
			<div>
				<table class="styled-table" style="width: 1140px;">
					<colgroup>
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					</colgroup>
					<thead>
						<tr>
							<td>침대 타입</td>
							<td>침대 개수</td>
							<td>화장실 개수</td>
							<td>파티 여부</td>
							<td>부엌</td>
							<td>와이파이</td>
							<td>주차</td>
							<td>티비</td>
							<td>냉장고</td>
							<td>드라이기</td>
						</tr>
					</thead>
					<tr>
						<td>${roomDetail.bed_type }</td>
						<td>${roomDetail.bed_count }</td>
						<td>${roomDetail.bath_count }</td>
						<td>${roomDetail.party_check }</td>
						<td>${roomDetail.kitchen }</td>
						<td>${roomDetail.wifi }</td>
						<td>${roomDetail.parking }</td>
						<td>${roomDetail.tv }</td>
						<td>${roomDetail.refrigerator }</td>
						<td>${roomDetail.hairdryer }</td>
					</tr>
				</table>
				<table class="styled-table" style="width: 1140px;">
					<colgroup>
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					</colgroup>
					<thead>
						<tr>
							<td>샤워실</td>
							<td>애완동물</td>
							<td>픽업</td>
							<td>옷드레서</td>
							<td>엘리베이터</td>
							<td>바베큐</td>
							<td>수영장</td>
							<td>에어컨</td>
							<td>히터</td>
							<td>흡연</td>
						</tr>
					</thead>
					<tr>
						<td>${roomDetail.washer }</td>
						<td>${roomDetail.pet }</td>
						<td>${roomDetail.pickup }</td>
						<td>${roomDetail.dryer }</td>
						<td>${roomDetail.elevator }</td>
						<td>${roomDetail.barbecue }</td>
						<td>${roomDetail.pool }</td>
						<td>${roomDetail.aircon }</td>
						<td>${roomDetail.heater }</td>
						<td>${roomDetail.smoking }</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="mem-item1"><div><h3>대리인 상세 정보</h3></div></div>
		<div class="mem-item2">
			
		</div>
		<div class="mem-item5">
			<div><a class="a1" href='<c:out value="${roomDetail.room_code }" />'>수정하기</a></div>
			<div><button class="a2" type="submit" id="goodsList" data-oper="list">돌아가기</button></div>
		</div>	
	</section>
	<form id="operForm" action="${contextPath }/admin/goodsList.do" method="get">
			<input type="hidden" name="pageNum" value="${cri.pageNum }" />
			<input type="hidden" name="amount" value="${cri.amount }" />
			<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
			<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }"/>' >
			<input type="hidden" name="r_del_yn" value='<c:out value="${cri.r_del_yn }"/>'>
			<input type="hidden" name="h_name2" value='<c:out value="${cri.h_name2 }"/>'>
			<input type="hidden" name="h_id2" value='<c:out value="${cri.h_id2 }"/>'>
			<input type="hidden" name="h_sellerNum2" value='<c:out value="${cri.h_sellerNum2 }"/>'>
			<input type="hidden" name="roadAddress2" value='<c:out value="${cri.roadAddress2 }"/>'>
			<input type="hidden" name="hostInfo_name2" value='<c:out value="${cri.hostInfo_name2 }"/>'>
	</form>
<script type="text/javascript">

$(document).ready(function(){
	var operForm = $("#operForm");
	$(".a2").on("click",function(e){
		
		e.preventDefault();
		var operation = $(this).data("oper");
		operForm.attr("action", "${contextPath}/admin/goodsList.do").attr("method","get");
		
		var pageNumTag = $("input[name='pageNum']").clone();
		var amountTag = $("input[name='amount']").clone();
		var join_startDateTag = $("input[name='join_startDat']").clone();
		var join_endDateTag = $("input[name='join_endDate']").clone();
		var h_id2Tag = $("input[name='h_id2']").clone();
		var r_del_ynTag = $("input[name='r_del_yn']").clone();
		var h_name2Tag = $("input[name='h_name2']").clone();
		var h_sellerNum2Tag = $("input[name='h_sellerNum2']").clone();
		var hostInfo_name2Tag = $("input[name='hostInfo_name2']").clone();
		var roadAddress2Tag = $("input[name='roadAddress2']").clone();
		
		operForm.empty();
		
		operForm.append(pageNumTag);
		operForm.append(amountTag);
		operForm.append(join_startDateTag);
		operForm.append(join_endDateTag);
		operForm.append(r_del_ynTag);
		operForm.append(h_name2Tag);
		operForm.append(h_id2Tag);
		operForm.append(h_sellerNum2Tag);
		operForm.append(hostInfo_name2Tag);
		operForm.append(roadAddress2Tag);
		alert("리스트로");
		operForm.submit();
	});
});

</script>

<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form");
	
	$("#deleteHost").on("click", function(e){
		e.preventDefault();
		var operation = $(this).data("oper");
		alert(operation);
		if(operation == 'remove'){
			formObj.attr("action","${contextPath}/admin/goodsDetail.do").attr("method","get");
			
			var pageNumTag = $("input[name='pageNum']").clone();
			var amountTag = $("input[name='amount']").clone();
			var join_startDateTag = $("input[name='join_startDat']").clone();
			var join_endDateTag = $("input[name='join_endDate']").clone();
			var h_id2Tag = $("input[name='h_id2']").clone();
			var h_del_ynTag = $("input[name='h_del_yn']").clone();
			var h_name2Tag = $("input[name='h_name2']").clone();
			var h_sellerNum2Tag = $("input[name='h_sellerNum2']").clone();
			var hostInfo_name2Tag = $("input[name='hostInfo_name2']").clone();
			var roadAddress2Tag = $("input[name='roadAddress2']").clone();
			
			formObj.empty();
			
			formObj.append(pageNumTag);
			formObj.append(amountTag);
			formObj.append(join_startDateTag);
			formObj.append(join_endDateTag);
			formObj.append(h_id2Tag);
			formObj.append(h_del_ynTag);
			formObj.append(h_name2Tag);
			formObj.append(h_sellerNum2Tag);
			operForm.append(hostInfo_name2Tag);
			operForm.append(roadAddress2Tag);
			
		}
		formObj.submit();
	});
});
</script>

<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
$(".a1").on("click",function(e){
	alert("수정수정");
	e.preventDefault();
	operForm.append("<input type='hidden' name='room_code' value='"+$(this).attr("href")+"'>");
	operForm.attr("action", "${contextPath}/admin/goodsModify.do");
	operForm.submit();
	});
});
</script>
</body>
</html>