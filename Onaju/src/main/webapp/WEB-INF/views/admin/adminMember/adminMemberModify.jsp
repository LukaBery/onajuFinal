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
.mem-item2-chil-2 div{
	line-height: 50px;
}
.mem-item2-chil-2-1{
	width: 370px;
	height: 50px;
	display:flex; 
	align-items: center;
	justify-content: center;
	border: 1px solid #E6E6E6; 
	border-bottom: none;
}
.mem-item2-chil-2 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	vertical-align: middle;
}
.mem-item2-chil-2 div select{
	width: 92px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
#u_service_01{
	width: 25px;
	height: 25px;
}
#u_service_02{
	width: 25px;
	height: 25px;
}
.mem-item2-chil-2-1 div input{
	width: 92px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
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
	height:50px; 
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
.address-text{
	width: 100px;
	height: 50px;
	line-height: 50px;
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
</style>

<script type="text/javascript">
$(document).ready(function(){
	$("#u_gender option").each(function(){
		if($(this).val()=="${memberVO.u_gender}"){
	    	$(this).attr("selected","selected"); // attr적용안될경우 prop
	    }	    
	});
	
});
</script>
<script type="text/javascript">

$(document).ready(function(){

	var check_yn = "${memberVO.u_service_01}";

	if(check_yn == "Y"){

		$('#u_service_01').prop("checked", true);

	}else{

		$('#u_service_01').attr("checked", false);

		}	

});

 

$(document).ready(function(){

	var check_yn = "${memberVO.u_service_02}";

	if(check_yn == "Y"){

		$('#u_service_02').prop("checked", true);

	}else{

		$('#u_service_02').attr("checked", false);

	}	

}); 

</script>
</head>
<body>
	<section class="memDetail_con">
		<div class="mem-item1"><div><h3>회원 정보 수정</h3></div></div>
		<form id="memberVO" action="${contextPath }/admin/memberUpdate.do" method="post" >
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>아이디</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="u_id" size="20" value="${memberVO.u_id }" disabled /></div></div>
				<div class="mem-item2-chil-1"><div>비밀번호</div></div>
				<div class="mem-item2-chil-2"><div>****************</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>이름</div></div>
				<div class="mem-item2-chil-2"><div><input name="u_name" id="u_name" type="text" size="20" value="${memberVO.u_name }" /></div></div>
				<div class="mem-item2-chil-1"><div>생년월일</div></div>
				<div class="mem-item2-chil-2-1">
					<div>
						<input name="u_birth_y" id="u_birth_y" type="text" size="20" maxlength="4" value="${memberVO.u_birth_y }" />년
						<input name="u_birth_m" id="u_birth_m" type="text" size="20" maxlength="2" value="${memberVO.u_birth_m }" />월
						<input name="u_birth_d" id="u_birth_d" type="text" size="20" maxlength="2" value="${memberVO.u_birth_d }" />일
					</div>
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>성별</div></div>
				<div class="mem-item2-chil-2"><div>
					<select name="u_gender" id="u_gender">					
						<option value="M">남자</option>
						<option value="W">여자</option>		
					</select>
				</div></div>
				<div class="mem-item2-chil-1"><div>전화번호</div></div>
				<div class="mem-item2-chil-2"><div><input name="u_phone" id="u_phone" type="text" size="20" value="${memberVO.u_phone }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-6"><div>주소</div></div>
				<div class="mem-item2-chil-7">
					<div class="mem-item2-chil-3">
						<div>
							<input name="zipcode" id="zipcode" type="text" id="zipcode" name="zipcode" value="${memberVO.zipcode }" disabled />
							<input type="button" class="zipcode_search" value="우편번호검색" onclick="execDaumPostcode()">
						</div>
					</div>
					<div class="mem-item2-chil-8"><div class="address-text">도로명 주소 :</div>
						<div><input type="text" id="roadAddress" name="roadAddress" value="${memberVO.roadAddress }" disabled /></div>
					</div>
					<div class="mem-item2-chil-8"><div class="address-text">지번 주소 :</div>
						<div><input type="text" id="numberAddress" name="numberAddress" value="${memberVO.numberAddress }" disabled /></div>
					</div>
					<div class="mem-item2-chil-8"><div class="address-text">나머지 주소 :</div>
						<div><input type="text" id="restAddress" name="restAddress" size="20" value="${memberVO.restAddress }" /></div>
					</div>					
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>이메일</div></div>
				<div class="mem-item2-chil-3"><div><input type="text" name="u_email1" value="${memberVO.u_email1 }" /><input type="text" name="u_email2" value="${memberVO.u_email2 }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>포인트</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="u_point" value="${memberVO.u_point }" disabled /></div></div>
				<div class="mem-item2-chil-1"><div>회원등급</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="u_grade" value="${memberVO.u_grade }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>추천인</div></div>
				<div class="mem-item2-chil-2"><div><input name="proposer" id="proposer" type="text" size="20" value="${memberVO.proposer }" /></div></div>
				<div class="mem-item2-chil-1"><div>이벤트 수신여부</div></div>
				<div class="mem-item2-chil-2">
					<div>
						이벤트 수신:<input type="checkbox" size="10" name="u_service_01" id="u_service_01" onchange="checkYn1(this)"  />
						이벤트 수신:<input type="checkbox" size="10" name="u_service_02" id="u_service_02" onchange="checkYn2(this)" />
					</div>
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>가입일</div></div>
				<div class="mem-item2-chil-5"><div><fmt:formatDate value="${memberVO.joinDate }" type="both" dateStyle="long" /></div></div>
				<div class="mem-item2-chil-4"><div>회원 상태</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="del_yn" value="${memberVO.del_yn }" /></div></div>
			</div>		
		</div>
		
		<div class="mem-item1"><div><h2>예약 내역</h2></div></div>
		<div class="mem-item1"><div><h2>이용 내역</h2></div></div>
		<div class="mem-item5">
			<div>
				<button id="updateMember" type="submit" class="a1" data-oper="modify">수정하기</button>
			</div>
			<div>
				<button class="a2" data-oper="detail" value='<c:out value="${memberVO.u_id }" />'>돌아가기</button>
			</div>
		</div>
		
		<input type="hidden" name="pageNum" value="${cri.pageNum }" />
		<input type="hidden" name="amount" value="${cri.amount }" />
		<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
		<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }"/>' >
		<input type="hidden" name="u_del_yn" value='<c:out value="${cri.u_del_yn }"/>'>
		<input type="hidden" name="u_name2" value='<c:out value="${cri.u_name2 }"/>'>
		<input type="hidden" name="u_id2" value='<c:out value="${cri.u_id2 }"/>'>
		</form>

		<form id="operForm" action="${contextPath }/admin/memberDetail.do" method="get">
			<input type="hidden" name="pageNum" value="${cri.pageNum }" />
			<input type="hidden" name="amount" value="${cri.amount }" />
			<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
			<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }"/>' >
			<input type="hidden" name="u_del_yn" value='<c:out value="${cri.u_del_yn }"/>'>
			<input type="hidden" name="u_name2" value='<c:out value="${cri.u_name2 }"/>'>
			<input type="hidden" name="u_id2" value='<c:out value="${cri.u_id2 }"/>'>
		</form>
	</section>
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



//체크 값 변경 (체크시:Y 해제시:null)
function checkYn1(obj){
	var checked = obj.checked;
	if(checked == true){
		$(this).prop("checked", true);
		$("#u_service_01").val("Y");	
	
	}else if(checked == false){
		$(this).prop("checked", false);
		$("#u_service_01").val("N");
	}
};
function checkYn2(obj){
	var checked = obj.checked;
	if(checked == true){
		$(this).prop("checked", true);
		$("#u_service_02").val("Y");
		
	}else if(checked == false){
		$(this).prop("checked", false);
		$("#u_service_02").val("N");
	}
};  

//체크 박스 선택 안했을때 값 유지
if($("#u_service_01").is(':not(:checked)')){
	$("#u_service_01").prop("value","${memberVO.u_service_01}");
	$("#u_service_01").val("${memberVO.u_service_01}");
};
if($("#u_service_02").is(':not(:checked)')){
	$("#u_service_02").prop("value","${memberVO.u_service_02}");
	$("#u_service_02").val("${memberVO.u_service_02}");
};



// select 성별 불러오기
$('#u_gender option').each(function() {
	if($(this).val() == "${memberVO.u_gender}"){
		$(this).attr('selected', true);
	}
});

// disabled로 설정된 값 Controller로 보내기
function toEnabled() {
}
</script>
<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("#memberVO");
	
	$("#updateMember").on("click", function(e){
		e.preventDefault();
		var operation = $(this).data("oper");
		alert(operation);
		
		$("input[name=roadAddress]").attr("disabled", false);
		$("input[name=numberAddress]").attr("disabled", false);
		$("input[name=zipcode]").attr("disabled", false);
		$("input[name=u_grade]").attr("disabled", false);
		$("input[name=u_point]").attr("disabled", false);
		$("input[name=joinDate]").attr("disabled", false);
		$("input[name=u_id]").attr("disabled", false);
		
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
	operForm.append("<input type='hidden' name='u_id' value='"+$(this).attr("value")+"'>");
	operForm.attr("action", "${contextPath}/admin/memberDetail.do");
	operForm.submit();
	});
});
</script>

</body>
</html>