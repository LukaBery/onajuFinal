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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
.mem-item2-chil-6{
	width: 200px;
	height: 200px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
	border-bottom: none;
}
.mem-item2-chil-7{
	width: 940px;
	height: 200px;
	align-items: center;
}
.mem-item2-chil-8{
	width: 940px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #E6E6E6; 
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
.mem-item2-chil-8 div{
	margin-left: 20px;
}
.mem-item2-chil-8 div input{
	width: 700px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
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
#zipcode{
	width: 250px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
}
.zipcode_search{
	width: 120px;
	height: 35px;
	border: none;
	border-radius: 5px;
	background-color: #ff3333;
	color: #ffffff;
	margin-left: 10px;
	cursor: pointer;
}
.address-text{
	width: 100px;
	height: 50px;
	line-height: 50px;
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<section class="memDetail_con">
		<div class="mem-item1"><div><h3>사업장 정보 수정</h3></div></div>
		<form id="hostInfoVO" action="${contextPath }/admin/hostInfoUpdate.do" method="post">
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업장관리번호</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="h_code" value="${adminHostInfoVO.h_code }" disabled /></div></div>
				<div class="mem-item2-chil-1"><div>사업장명</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="hostInfo_name" value="${adminHostInfoVO.hostInfo_name }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업자등록번호</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="h_sellerNum" value="${adminHostInfoVO.h_sellerNum }" /></div></div>
				<div class="mem-item2-chil-1"><div>사업자계좌번호</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="h_accountNum" value="${adminHostInfoVO.h_accountNum }" /> </div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-6"><div>주소</div></div>
				<div class="mem-item2-chil-7">
					<div class="mem-item2-chil-3">
						<div>
							<input type="text" id="zipcode" name="zipcode" value="${adminHostInfoVO.zipcode }" disabled />
							<input type="button" class="zipcode_search" value="우편번호검색" onclick="execDaumPostcode()">
						</div>
					</div>
					<div class="mem-item2-chil-8"><div class="address-text">도로명 주소 :</div><div><input type="text" id="roadAddress" name="roadAddress" value="${adminHostInfoVO.roadAddress }" disabled /></div></div>
					<div class="mem-item2-chil-8"><div class="address-text">지번 주소 :</div><div><input type="text" id="numberAddress" name="numberAddress" value="${adminHostInfoVO.numberAddress }" disabled /></div></div>
					<div class="mem-item2-chil-8"><div class="address-text">나머지 주소 :</div><div><input type="text" id="restAddress" name="restAddress" size="20" value="${adminHostInfoVO.restAddress }" /></div></div>					
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업장 타입</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="host_type" value="${adminHostInfoVO.host_type }" /></div></div>
				<div class="mem-item2-chil-1"><div>사업장 룸개수</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="room_count" value="${adminHostInfoVO.room_count }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>사업장 상태</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="del_yn" value="${adminHostInfoVO.del_yn }" /></div></div>
				<div class="mem-item2-chil-4"><div>원정생성일</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="creDate" value="${adminHostInfoVO.creDate }" disabled /></div></div>
			</div>
		</div>
		<div class="mem-item1"><div><h3>사업주 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>아이디</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="h_id" value="${adminHostInfoVO.h_id }" disabled /></div></div>
				<div class="mem-item2-chil-1"><div>대표자명</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="h_name" value="${adminHostInfoVO.h_name }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>대표자 이메일</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="h_email1" value="${adminHostInfoVO.h_email1 }" /><input type="text" name="h_email2" value="${adminHostInfoVO.h_email2 }" /></div></div>
				<div class="mem-item2-chil-4"><div>대표자전화번호</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="h_phone" value="${adminHostInfoVO.h_phone }" /> </div></div>
			</div>	
		</div>
		
		
		<div class="mem-item1"><div><h3>대리인 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대리인명</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="deputy_name" value="${adminHostInfoVO.deputy_name }" /></div></div>
				<div class="mem-item2-chil-1"><div>대리인 생년월일</div></div>
				<div class="mem-item2-chil-2"><div><input type="date" name="deputy_birth" value="${adminHostInfoVO.deputy_birth }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>대리인 전화번호</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="deputy_phone" value="${adminHostInfoVO.deputy_phone }" /></div></div>
				<div class="mem-item2-chil-4"><div>대표자와의 관계</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="deputy_department" value="${adminHostInfoVO.deputy_department }" /></div></div>
			</div>
		</div>
				
		<div class="mem-item5">
			<div><button id="updateHostInfo" type="submit" class="a1" data-oper="modify">수정하기</button></div>
			<div><button class="a2" data-oper="detail" value='<c:out value="${adminHostInfoVO.h_code }" />'>돌아가기</button></div>
		</div>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }" />'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount }" />'>
		<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
		<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }" />'>
		<input type="hidden" name="h_id2" value='<c:out value="${cri.h_id2 }" />'>
		<input type="hidden" name="h_name2" value='<c:out value="${cri.h_name2 }" />'>
		<input type="hidden" name="h_sellerNum2" value='<c:out value="${cri.h_sellerNum2 }" />'>
		<input type="hidden" name="hostInfo_name2" value='<c:out value="${cri.hostInfo_name2 }"/>'>
		<input type="hidden" name="info_del_yn" value='<c:out value="${cri.info_del_yn }"/>'>
		<input type="hidden" name="roadAddress2" value='<c:out value="${cri.roadAddress2 }"/>'>
		</form>	
	</section>
		
	<form id="operForm" action="${contextPath }/admin/hostInfoDetail.do" method="get">
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }" />'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount }" />'>
		<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
		<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }" />'>
		<input type="hidden" name="h_id2" value='<c:out value="${cri.h_id2 }" />'>
		<input type="hidden" name="h_name2" value='<c:out value="${cri.h_name2 }" />'>
		<input type="hidden" name="h_sellerNum2" value='<c:out value="${cri.h_sellerNum2 }" />'>
		<input type="hidden" name="hostInfo_name2" value='<c:out value="${cri.hostInfo_name2 }"/>'>
		<input type="hidden" name="info_del_yn" value='<c:out value="${cri.info_del_yn }"/>'>
		<input type="hidden" name="roadAddress2" value='<c:out value="${cri.roadAddress2 }"/>'>
	</form>
<script type="text/javascript">
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("roadAddress").value = roadAddr;
            document.getElementById("numberAddress").value = data.jibunAddress;
        }
    }).open();
}
</script>
<script type="text/javascript">
$(document).ready(function(){
	
	var formObj = $("#hostInfoVO");
	
	$("#updateHostInfo").on("click", function(e){
		e.preventDefault();
		var operation = $(this).data("oper");
		alert(operation);
		
		$("input[name=roadAddress]").attr("disabled", false);
		$("input[name=numberAddress]").attr("disabled", false);
		$("input[name=zipcode]").attr("disabled", false);
		$("input[name=u_grade]").attr("disabled", false);
		$("input[name=u_point]").attr("disabled", false);
		$("input[name=joinDate]").attr("disabled", false);
		$("input[name=h_code]").attr("disabled", false);
		$("input[name=h_id]").attr("disabled", false);
		
		formObj.submit();
	});
});
</script>
<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
$(".a2").on("click",function(e){
	alert("디테일로");
	e.preventDefault();
	operForm.append("<input type='hidden' name='h_code' value='"+$(this).attr("value")+"'>");
	operForm.attr("action", "${contextPath}/admin/hostInfoDetail.do");
	operForm.submit();
	});
});
</script>
</body>
</html>