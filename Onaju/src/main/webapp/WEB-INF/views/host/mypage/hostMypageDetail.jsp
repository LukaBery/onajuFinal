<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입창</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<c:if test='${ not empty message }'>

	<script>
	window.onload=function()
	{
	  result1();
	}

	function result1(){
		alert('${message}');
	}
	</script>
</c:if>
<script type="text/javascript">

var SetTime = 180; 

        // 최초 설정 시간(기본 : 초)
    function msg_time() {   // 1초씩 카운트      
    	 document.getElementById("input_id").disabled = true;
        m = Math.floor(SetTime / 180) + " : " + (SetTime % 180); // 남은 시간 계산         
        var msg = "남은 시간 " + m ;  
        document.getElementById("inputCode").placeholder = msg;  // div 영역에 보여줌                  
        SetTime--;                  // 1초씩 감소
        if (SetTime < 0) {          // 시간이 종료 되었으면..        
            clearInterval(tid);  
        document.getElementById("checkCodeDiv").style.display = "none";
        document.getElementById("input_id").disabled = false;
        


        }       
    }
   
	function fn_sendEmail_Ajax() {
	
		if (h_email1.value == "") {
			alert("이메일을 입력하세요.");
			h_email1.focus();
			return false;
		}
		if (h_email2.value == "") {
			alert("이메일 주소를 입력하세요.");
			h_email1.focus();
			return false;
		}
		 
		var userEmail = $("#h_email1").val().trim() + "@" +$("#h_email2").val().trim();
		
		if (userEmail == "" || userEmail == null) {
			flag_dupl_mail = false;
			alert("이메일 주소를 입력해야 합니다.");
			return;
		}
	
		var form = {
			email : userEmail
		}
		SetTime = 180; 
		tid=setInterval('msg_time()',1000);
	
		$("#checkCodeDiv").show();
		$.ajax({
			url : "${contextPath}/checkEmailAjax.do",
			data : JSON.stringify(form),
			dataType : "JSON",
			type : "post",
			contentType : "application/json; charset=utf-8;",
			async : false,
			
			success : function(data) {
				alert("입력하신 이메일 주소에서 발급된 코드를 확인하세요.");
				resultCode = data.joinCode;
				$('input[name=joinCode]').attr('value',resultCode);
				
				
			},
			error : function() {
				alert("네트워크가 불안정합니다. 다시 시도해 주세요.");
			}
		})
	}

	function fn_checkCode(){
		var joinCode = $("#joinCode").val();
		var inputCode = $("#inputCode").val();
	  
	  
		if (joinCode != inputCode) {
			
			alert("인증번호가 일치하지 않습니다.");
			return;
		}
		else{
			 document.getElementById("checkCodeDiv").style.display = "none";
			input_id = document.getElementById("input_id");
			input_id.style.color="white";
			input_id.style.backgroundColor="#FA6491";
			 clearInterval(tid);  
			input_id.value ="인증완료";
		
			
		}
		
		
	}

	function execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('roadAddress').value = fullRoadAddr;
						document.getElementById('numberAddress').value = data.numberAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						} else if (data.autonumberAddress) {
							var expJibunAddr = data.autonumberAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
						} else {
							document.getElementById('guide').innerHTML = '';
						}

					}
				}).open();
	}

	//이메일 옵션 선택후 주소 자동 완성
	function change_email() {
		var h_email2 = document.getElementById("h_email2");
		var email_sel = document.getElementById("email_sel");

		//지금 골라진 옵션의 순서와 값 구하기
		var idx = email_sel.options.selectedIndex;
		var val = email_sel.options[idx].value;

		h_email2.value = val;
	}

	//우편번호 검색 팝업창(현재 공백문서)
	function search_address() {
		window.open("", "b", "width=600, height=300, left=200, top=100");
	}
</script>

<script>

	function readURL(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function(e) {
		      document.getElementById('preview').src = e.target.result;
		    };
		    reader.readAsDataURL(input.files[0]);
		  } else {
		    document.getElementById('preview').src = "";
		  }
		}
	
	
</script>

<style>
@charset "utf-8";

* {
	margin: 0;
	padding: 0;
}

.red_txt {
	color: #ee7272;
}

.blind {
	display: block;
	overflow: hidden;
	position: absolute;
	left: 0;
	top: -5000px
}

.wrap {
	max-width: 960px;
	margin: 0 auto;
}

.wrap.wd668 {
	max-width: 628px;
}

.wrap.wd668.line {
	border: 1px solid #ececec;
	padding: 30px 20px;
}

.form_box {
	width: 100%;
}

.sub_tit_txt {
	margin: 30px 0 20px 0px;
	color: #7f9b75;
	font-size: 30px;
	font-weight: 570;
}

.wrap.wd668.line .sub_tit_txt {
	margin: 0px 0 20px 20px;
}

.con_term .term_txt {
	border: 1px solid #ececec;
	padding: 30px;
	height: 210px;
	overflow-y: auto;
	margin: 0 0 15px;
}

.con_term .term_txt ul li, .con_term .term_txt p, .con_term .term_txt div
	{
	color: #818181;
	font-size: 12px;
	line-height: 17px;
	margin: 0 0 15px;
}

.left_margin {
	margin: 0 0 0 20px;
}

.con_term .term_txt div.txt_bold {
	font-weight: bold;
	margin: 0 0 25px;
}

.btn_wrap {
	text-align: center;
	margin: 40px 0 30px;
}

.btn_wrap {
	color: #fff;
	background-color: #7f9b75;
	font-weight: bold;
	height: 30px;
	line-height: 30px;
	width: 168px;
	display: block;
	text-align: center;
	margin: 30px 0 30px 0px;
}

.btn_wrap a {
	color: #fff;
	background-color: #7f9b75;
	font-weight: bold;
	height: 30px;
	line-height: 30px;
	width: 168px;
	display: block;
	text-align: center;
	margin: 0 auto;
}

.btn_wrap a.wide {
	width: 587px;
	margin: 0 0 0 20px;
}

.find_txt ul li {
	color: #9a9a9a;
	font-size: 13px;
	text-align: center;
	line-height: 17px;
	margin: 0 0 20px;
}

.form_txtInput .checkbox_wrap {
	position: relative;
	padding: 5px;
	text-align: right;
}

.form_txtInput .checkbox_wrap input[type="checkbox"] {
	border: 1px solid #ccc;
	width: auto;
}

.form_txtInput .checkbox_wrap input[type="checkbox"]+label {
	font-size: 13px;
	color: #818181;
	padding-left: 5px;
}

.exTxt {
	font-size: 14px;
	color: #9a9a9a;
	display: block;
	margin: 0 0 45px 20px;
}

.join_form {
	width: 100%;
	max-width: 668px;
}

.join_form table {
	border-spacing: 0;
	margin: 0;
	padding: 0;
	border: 0;
	width: 100%;
}

.join_form table input {
	border: 1px solid #ececec;
	font-size: 14px;
	color: #4c4c4c;
	height: 30px;
	padding: 0 10px;
	width: 100%;
	float: left;
}

.birth_select {
	border: 1px solid #ececec;
	font-size: 14px;
	color: #4c4c4c;
	height: 25px;
	padding: 2px;
	width: 70px;
	text-align: right;
}

#h_id {
	width: 294px;
	margin-right: 30px;
}

.join_form table input.phone {
	width: 100%;
	display: inline-block;
}

.join_form table input.inputCode {
	width: 294px;
	display: inline-block;
}

.join_form table input.email {
	width: 162px;
	display: inline-block;
}

.join_form.idpwFind table input {
	width: 519px;
}

.join_form table input.email_input {
	width: 136px;
}

.join_form table select.email_sel {
	margin: 0 auto;
	margin-left: 30px;
	height: 25px;
	border: 1px solid #cfcfcf;
	width: 115px;
}

.join_form.idpwFind table input.phone {
	width: 182px;
	margin: 0 12px 0 11px;
}

.join_form.idpwFind table input.phone2 {
	width: 182px;
}

.join_form table input.send_number {
	width: 294px;
}

#zipcode {
	width: 294px;
	margin-right: 30px;
}

.join_form table td input.zipcode_search {
	font-size: 9pt;
	color: #666;
	text-decoration: none;
	display: inline-block;
	float: left;
	width: 115px;
	height: 25px;
	border: 1px solid #cfcfcf;
	background: #dedede;
	color: #626262;
	text-align: center;
	/* vertical-align: top; */
	line-height: 25px;
	margin-top: 2.5px;
}

.join_form table th span {
	color: #404040;
	font-size: 14px;
	display: inline-block;
	position: relative;
	padding: 0 10px 0 0;
	text-indent: 20px;
}

.join_form table th {
	text-align: left;
}

.join_form table td {
	padding: 6px 0;
	position: relative;
}

.join_form table th span:after {
	content: '*';
	font-size: 13px;
	color: #f95427;
	position: absolute;
	top: 0;
	right: 0px;
}

.join_form.idpwFind table th span:after {
	content: none;
}

.join_form table td a.btn_confirm {
	font-size: 9pt;
	color: #666;
	text-decoration: none;
	display: inline-block;
	float: left;
	width: 115px;
	height: 25px;
	/* margin-left: 10px */
	border: 1px solid #cfcfcf;
	background: #dedede;
	color: #626262;
	text-align: center;
	/* vertical-align: top; */
	line-height: 25px;
}

.join_form table td input.btnOverlapped {
	font-size: 9pt;
	color: #666;
	text-decoration: none;
	display: inline-block;
	float: left;
	width: 115px;
	height: 25px;
	border: 1px solid #cfcfcf;
	background: #dedede;
	color: #626262;
	text-align: center;
	/* vertical-align: top; */
	line-height: 25px;
	margin-top: 2.5px;
}

.join_form table td input.btn_confirm {
	font-size: 9pt;
	color: #666;
	text-decoration: none;
	display: inline-block;
	float: left;
	width: 115px;
	height: 25px;
	border: 1px solid #cfcfcf;
	background: #dedede;
	color: #626262;
	text-align: center;
	/* vertical-align: top; */
	line-height: 25px;
	margin-left: 30px;
}

.join_form.idpwFind table td select {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background:
		url(https://secsales.interparkb2b.co.kr/data/G94/main/sele_arr.gif)
		no-repeat 95% 50%;
	text-indent: 20px;
	width: 124px;
	height: 50px;
	border: 1px solid #ececec;
	font-size: 14px;
	color: #ccc;
	float: left;
}

.join_form.idpwFind table td select::-ms-expand {
	display: none;
}

.join_form.idpwFind table td  tr.phone td select {
	text-align: center;
	text-indent: 10px;
}

.join_form.idpwFind table tr.email input:after, .mar10:after, .join_form.idpwFind table td select:after,
	.join_form table td a.btn_confirm:after {
	content: '';
	display: block;
	clear: both;
}

.agree_wrap {
	margin: 36px 0 0;
}

.agree_wrap .checkbox_wrap {
	text-align: left;
}

.mar27 {
	margin: 27px 0 0;
}

.mar10 {
	/* margin: 0px 5px 0 5px; */
	display: inline-block;
	padding: 0;
	float: left;
}

.exform_txt {
	padding: 12px 0 19px 0;
	text-align: right;
	color: #9a9a9a;
	font-size: 13px;
	border-bottom: 1px solid #ececec;
}

.exform_txt span {
	display: inline-block;
	position: relative;
	padding-left: 10px
}

.exform_txt span:after {
	content: '*';
	position: absolute;
	left: 0;
	top: 0;
	color: #f95427;
	font-size: 13px;
	font-weight: bold;
}

.explan_txt {
	margin: 3px 0 0 22px;
}

.explan_txt li {
	color: #b2b2b2;
	font-size: 13px;
	line-height: 17px;
}

.popWrap {
	border: 1px solid #ececec;
	padding: 30px;
	max-width: 400px;
	width: 100%;
	margin: 30px auto 0;
	display: none;
	position: absolute;
	top: 0;
	left: 50%;
	transform: translateX(-50%);
	background: #fff;
	z-index: 5;
}

.popWrap.is-open {
	display: block;
}

.popWrap .pop_txt_con .pop_exTxt {
	font-size: 14px;
	color: #9a9a9a;
	line-height: 20px;
}

.popWrap .pop_txt_con .pop_exTxt span {
	color: #254ee9
}

.popWrap .pop_btnWrap {
	margin: 30px 0 0;
}

.popWrap .pop_btnWrap a {
	color: #fff;
	background-color: #4380ce;
	font-weight: bold;
	padding: 10px;
	height: 22px;
	line-height: 22px;
	width: 103px;
	display: block;
	text-align: center;
}

.join_form table input.send_number::placeholder {
	text-align: right;
}

.join_form table input.send_number:-ms-input-placeholder {
	text-align: right;
}

.join_form table input.send_number::-ms-input-placeholder {
	text-align: right;
}

.overlayer {
	position: fixed;
	display: none;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 2;
	cursor: pointer;
}

.overlayer.is-open {
	display: block;
}

.box_checkbox1 {
	color: #gray;
	font-size: 12px;
}

/* .birth_select {
	margin-bottom: 5px;
	font-size: 12px;
} */
.txt_label {
	color: #gray;
	font-size: 12px;
	line-height: 23px;
}

.none_important:after {
	display: none;
}

.gender_box {
	display: inline-block;
	float: left;
}

.gender_box1 {
	display: inline-block;
}

.join_form table .gender_input {
	display: inline-block;
	width: 15px;
}
</style>
</head>
<body>
	
		<div class="wrap wd668">
			<div class="form_box">
				<div class="form_txtInput">
					<h2 class="sub_tit_txt">호스트 회원정보 수정</h2>
					
					<form name="modify_form" action="${contextPath}/host/mypage/modifyHostMyInfo.do"	method="post">
					<div class="join_form">
						<table>
							<colgroup>
								<col width="30%" />
								<col width="auto" />
							</colgroup>
							<tbody>
								<tr>
									<th><span class="none_important" >아이디</span></th>
									<td>
										<input type="text" name="_h_id" id="_h_id" value="${hostInfo.h_id }" disabled> 
										<input type="hidden" name="h_id" id="h_id" />
								</tr>
								<tr>
									<th><span>이름</span></th>
									<td><input type="text" name="h_name" id="h_name" value="${hostInfo.h_name }"></td>
								</tr>
								<tr>
									<th><span>비밀번호</span></th>
									<td><input type="password" name="h_pw" id="h_pw"
										placeholder="비밀번호는 영문자+숫자+특수조합(8이상)으로 입력해주세요."></td>
								</tr>
								<tr>
									<th><span>비밀번호 확인</span></th>
									<td><input type="password" name="h_repw" id="h_repw"
										placeholder="비밀번호는 영문자+숫자+특수조합(8이상)으로 입력해주세요."></td>
								</tr>
								<tr>
									<th><span>법정생년월일</span></th>
									<td><select class="birth_select" name="h_birth_y"
										id="h_birth_y">
											<c:forEach var="i" begin="1" end="100">
												<c:choose>
													<c:when test="${hostInfo.h_birth_y==1920+i}">
														<option value="${ 1920+i}" selected>${ 1920+i}
														</option>
													</c:when>
													<c:otherwise>
														<option value="${ 1920+i}">${ 1920+i}</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
									</select><span class="h_birth"></span><strong class="txt_label">&nbsp년&nbsp</strong>
										<select class="birth_select" name="h_birth_m" id="h_birth_m">
											<c:forEach var="i" begin="1" end="12">
												<c:choose>
													<c:when test="${hostInfo.h_birth_m==i}">
														<option value="${i }" selected>${i }</option>
													</c:when>
													<c:otherwise>
														<option value="${i }">${i}</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
									</select><span class="h_birth"></span><strong class="txt_label">&nbsp월&nbsp</strong>
										<select class="birth_select" name="h_birth_d" id="h_birth_d">
											<c:forEach var="i" begin="1" end="31">
												<c:choose>
													<c:when test="${hostInfo.h_birth_d==i }">
														<option value="${i}" selected>${i}</option>
													</c:when>
													<c:otherwise>
														<option value="${i}">${i}</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
									</select><span class="h_birth"></span><strong class="txt_label">&nbsp일&nbsp</strong></td>
								<tr>
									<th><span>핸드폰 번호</span></th>
									<td>
										<input type="text" class="phone" name="h_phone" id="h_phone" value="${hostInfo.h_phone }"> 
										<input type="hidden" name="_phone_check" id="_phone_check" /> <!-- <a href="javascript:;" class="btn_confirm">인증번호 발송</a></td> -->
								</tr>

								<tr class="email">
									<th><span>이메일</span></th>
									<td>
									<input type="text" class="email_input" style="margin: 11px 0px 0px 0px;" name="h_email1" id="h_email1" value="${hostInfo.h_email1 }">
										<span class="mar10" style="margin: 14px 0px 0px 0px;">&nbsp@&nbsp</span> 
									<input type="text" class="email_input" style="margin: 11px 0px 0px 0px;" name="h_email2" id="h_email2" value="${hostInfo.h_email2 }"> 
										<select name="email_sel"
											class="email_sel" id="email_sel" onchange="change_email();">
												<option value="">직접입력</option>
												<option value="gmail.com">gmail</option>
												<option value="naver.com">naver</option>
												<option value="nate.com">nate</option>
										</select> <!-- <input type="text" name="email_id" class="email" id="email_id"><span class="mar10">@</span> -->
										<!-- <input type="text" name="h_email2"  class="email email2" placeholder=""> -->
										<input id="input_id" type="button" name="phone_check" style="margin: 2px 0px 0px 30px;" class="btn_confirm" value="인증번호 발송" onClick="fn_sendEmail_Ajax()" /></td>
								</tr>
								<tr style="display: none;" id="checkCodeDiv">
									<th><span >인증번호 확인</span></th>
									<td>
										<input type="text" name="send_number" id="inputCode" class="inputCode" placeholder="3:00"> 
										<input type="hidden" name="joinCode" id="joinCode" /> 
										<input type="button" name="joinCode_check" id="joinCode_check"class="btn_confirm" value="인증번호 확인" onclick="fn_checkCode()" /> <!-- <a href="javascript:;" class="btn_confirm">인증번호 확인</a> -->
									</td>
								</tr>
								<tr>
									<th><span class="none_important">주소</span></th>
									<td>
										<input type="text" id="zipcode" name="zipcode" value="${hostInfo.zipcode }">
										<input type="button" class="zipcode_search" value="우편번호검색" onclick="execDaumPostcode()"><br> <br>
										<div>
											<span class=""></span><strong class="txt_label">도로명 주소 :</strong> 
											<input type="text" id="roadAddress" name="roadAddress" value="${hostInfo.roadAddress }"/>
										</div>
										<div>
											<span class=""></span><strong class="txt_label">지번 주소 :</strong> 
											<input type="text" id="numberAddress" name="numberAddress" value="${hostInfo.numberAddress }"/>
										</div>
										<div>
											<span class=""></span><strong class="txt_label">나머지 주소 :</strong> 
											<input type="text" name="restAddress" value="${hostInfo.restAddress }"/>
										</div></td>
								</tr>
								<tr>
									<th><span class="h_sellerNum" >사업자 등록번호</span></th>
									<td><input type="text" name="h_sellerNum" id="h_sellerNum" value="${hostInfo.h_sellerNum }"></td>
								</tr>
							</tbody>
						</table>

					</div>
					
					<!-- <div class="agree_wrap">

						<div class="checkbox_wrap">
							<input type="checkbox" class="agree_box" name="h_agree_1" value="Y" id="agree1" checked > <label for="agree1"><span
								class="red_txt">[필수]&nbsp</span>이용 약관 동의</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" class="agree_box" name="h_agree_2" value="Y" id="agree2" checked> <label for="agree2"><span
								class="red_txt">[필수]&nbsp</span>만 14세 이상 확인</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" class="agree_box" name="h_agree_3" id="agree3" value="Y" checked> <label for="agree3"><span
								class="red_txt">[필수]&nbsp</span>개인 정보 수집 및 이용 동의</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" class="agree_box_0" name="h_service_01" value="Y" > <label for="select_disable">[선택]&nbsp광고
								및 이벤트 수신 동의</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" class="agree_box_0" name="h_service_02" value="Y" > <label for="select_disable">[선택]&nbsp위치기반
								서비스 이용약관 동의</label>
						</div>
					</div> -->


					<div class="">
						<button type="submit" class="btn_wrap"  style="float:right;">수정</button>
					</div>
					</form>

					<!-- form_txtInput E -->
				</div>
			</div>
			<!-- content E-->
		</div>
		<!-- container E -->
	
</body>
</html>