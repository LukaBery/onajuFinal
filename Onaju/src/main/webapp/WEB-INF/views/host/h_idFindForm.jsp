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
<title>아이디 찾기</title>

<c:if test='${not empty message }'>
<script>


window.onload=function()
{
  result();
}

function result(){
	alert('${message}');
}
</script>
</c:if>
<script type="text/javascript">
 function fn_findform_check() {

	 document.getElementById("h_email1").disabled= false;
		 document.getElementById("h_email2").disabled= false;
	 var h_name = document.getElementById("h_name");

		var h_phone = document.getElementById("h_phone");
var input_id = document.getElementById("input_id");
		var h_email1 = document.getElementById("h_email1");
		var h_email2 = document.getElementById("h_email2");

		
		

		if (h_name.value == "") {
			alert("이름을 입력하세요.");
			h_name.focus();
			return false;
		}
		;


		if (h_phone.value == "") {
			alert("핸드폰 번호를 입력하세요.");
			h_phone.focus();
			return false;
		}
		;

		if (h_email1.value == "") {
			alert("이메일을 입력하세요.");
			h_email1.focus();
			return false;
		}

		if (h_email2.value == "") {
			alert("이메일을 입력하세요.");
			h_email2.focus();
			return false;
		}

		if (input_id.value != "인증완료") { //해당 입력값이 없을 경우 같은말: if(!uid.value)
			alert("이메일 인증을 눌러주세요.");
			input_id.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
			return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
		}
		;
		document.idFind_form.submit();
	
}  

 var SetTime = 180; 

         // 최초 설정 시간(기본 : 초)
     function msg_time() {   // 1초씩 카운트      
     	 document.getElementById("input_id").disabled = true;
         m = Math.floor(SetTime / 60) + " : " + (SetTime % 60); // 남은 시간 계산         
         var msg = "남은 시간 " + m ;  
         document.getElementById("inputNum").placeholder = msg;  // div 영역에 보여줌                  
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
 		alert(userEmail);
 		if (userEmail == "" || userEmail == null) {
 			flag_dupl_mail = false;
 			alert("이메일 주소를 입력해야 합니다.");
 			return;
 		}
 	
 		var form = {
 			email : userEmail
 		}

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
 				
 				SetTime = 180; 
 				tid=setInterval('msg_time()',1000);
 			
 				$("#checkCodeDiv").show();
 			},
 			error : function() {
 				alert("네트워크가 불안정합니다. 다시 시도해 주세요.");
 			}
 		})
 	}

 	function fn_checkCode(){
 		var joinCode = $("#joinCode").val();
 		var inputCode = $("#inputCode").val();
 	    alert(inputCode);
 	    alert(joinCode);
 		if (joinCode != inputCode) {
 			
 			alert("인증번호가 일치하지 않습니다.");
 			return;
 		}
 		else{
 			 document.getElementById("h_email1").disabled= true;
 			 document.getElementById("h_email2").disabled= true;
 			 document.getElementById("email_sel").disabled= true;
 			 document.getElementById("checkCodeDiv").style.display = "none";
 			input_id = document.getElementById("input_id");
 			input_id.style.color="white";
 			input_id.style.backgroundColor="#FA6491";
 			 clearInterval(tid);  
 			input_id.value ="인증완료";
 		
 			
 		}
 		
 		
 	}
	function change_email() {
		var h_email2 = document.getElementById("h_email2");
		var email_sel = document.getElementById("email_sel");

		//지금 골라진 옵션의 순서와 값 구하기
		var idx = email_sel.options.selectedIndex;
		var val = email_sel.options[idx].value;

		h_email2.value = val;
	}

</script>

<style>
@charset "utf-8";

/* * {
	margin: 0;
	padding: 0;
	
} */
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
	max-width: 1100px;
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
	margin: 80px 0 20px 0px;
	color: #7f9b75;
	font-size: 30px;
	font-weight: 570;
}

.wrap.wd668.line .sub_tit_txt {
	margin: 0px 0 20px 0px;
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
	margin: 0 auto;
	margin-top: 50px;
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
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.form_txtInput .checkbox_wrap input[type="checkbox"]+label {
	display: inline-block;
	line-height: 14px;
	position: relative;
	padding-left: 20px;
	font-size: 13px;
	color: #818181;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

.form_txtInput .checkbox_wrap input[type="checkbox"]+label:before {
	content: '';
	position: absolute;
	top: 0px;
	left: 0;
	width: 12px;
	height: 12px;
	text-align: center;
	background: #fff;
	border: 1px solid #c2c2c2;
}

.form_txtInput .checkbox_wrap input[type="checkbox"]+label:active:before,
	.checkbox_wrap input[type="checkbox"]:checked+label:active:before {
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px 1px 3px
		rgba(0, 0, 0, 0.1);
}

.form_txtInput .checkbox_wrap input[type="checkbox"]:checked+label:before
	{
	background: #fff;
	border-color: #ddd;
}

.form_txtInput .checkbox_wrap input[type="checkbox"]:checked+label:after
	{
	content: '✓';
	color: #0094ff;
	position: absolute;
	top: 0px;
	left: 2px;
	width: 7px;
	height: 7px;
	font-size: 13px;
	font-weight: bold;
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
	width: 80%;
}

.join_form table input {
	border: 1px solid #ececec;
	font-size: 14px;
	color: #4c4c4c;
	height: 25px;
	padding: 6px;
	width: 100%;
	float: left;
}

.join_form.idpwFind table input {
	width: 519px;
}

.join_form.idpwFind table input.phone {
	width: 182px;
	margin: 0 12px 0 11px;
}

.join_form.idpwFind table input.phone2 {
	width: 182px;
}

.join_form table input.send_number {
	width: 383px;
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
	/* content: '*'; */
	font-size: 13px;
	color: #f95427;
	position: absolute;
	top: 0;
	right: 0px;
}

.join_form.idpwFind table th span:after {
	content: none;
}

.join_form table input.inputCode {
	width: 100%;
	margin-top: 10px;
	padding: 1px;
	display: inline-block;
}

.join_form table td a.btn_confirm {
	font-size: 11pt;
	color: #666;
	text-decoration: none;
	display: inline-block;
	float: left;
	width: 115px;
	height: 35px;
	margin: 5px 0 0 0px;
	border: 1px solid #cfcfcf;
	background: #dedede;
	color: #626262;
	text-align: center;
	/* vertical-align: top; */
	line-height: 30px;
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
	margin: 14px 5px 0 10px;
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
	/* content: '*'; */
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

.social {
	margin: 25px;
	align-items: center;
	text-align: center;
	margin: 40px 0 30px;
}

.email {
	width:
}

.social button {
	width: 45%;
	border-radius: 10px;
	margin-bottom: 15px;
	padding: 5px 10px;
	background: transparent;
	border: 2px solid #222;
	outline: none;
	cursor: pointer;
	align-items: center;
}

.social button p {
	color: #4c4c4c;
	font-size: 15px;
	margin-left: 10px;
	letter-spacing: 1px;
}

.join_form table input.email_input {
	width: 120px;
}

.join_form table select.email_sel {
	margin: 0 auto;
	margin-left: 30px;
	height: 25px;
	border: 1px solid #cfcfcf;
	width: 85px;
}
</style>
</head>
<body>
	<form name="idFind_form" action="${contextPath}/host/h_idFind.do"
		method="post">
		<div class="wrap wd668">
			<div class="form_box">
				<div class="form_txtInput">
					<h2 class="sub_tit_txt">호스트 아이디 찾기</h2>
					<div class="join_form">
						<table>
							<colgroup>
								<col width="30%" />
								<col width="auto" />
							</colgroup>
							<tbody>
								<tr>
									<th><span>가입한 이름</span></th>
									<td><input type="text" name="h_name" id="h_name"
										placeholder="이름을 입력하세요."></td>
								</tr>
								<tr>
									<th><span>전화번호</span></th>
									<td><input type="text" name="h_phone" id="h_phone"
										placeholder="전화번호를 입력해주세요."></td>
								</tr>
								<tr class="email">
									<th><span>이메일</span></th>
									<td><input type="text" class="email_input"
										style="margin: 11px 0px 0px 0px;" name="h_email1"
										id="h_email1"><span class="mar10"
										style="margin: 14px 0px 0px 0px;">&nbsp@&nbsp</span> <input
										type="text" class="email_input"
										style="margin: 11px 0px 0px 0px;" name="h_email2"
										id="h_email2"> <select name="email_sel"
										style="margin: 11px 0px 0px 4px;" class="email_sel"
										id="email_sel" style="margin: 0px 0px 0px 3px;"onchange="change_email();">
											<option value="">직접입력</option>
											<option value="gmail.com">gmail</option>
											<option value="naver.com">naver</option>
											<option value="nate.com">nate</option>
									</select> <!-- <input type="text" name="email_id" class="email" id="email_id"><span class="mar10">@</span> -->
										<!-- <input type="text" name="h_email2"  class="email email2" placeholder=""> -->
										<input id="input_id" type="button" name="phone_check"
										class="inputCode" value="인증번호 발송"
										onClick="fn_sendEmail_Ajax()" /></td>
								</tr>
								<tr style="display: none;" id="checkCodeDiv">
									<th><span>인증번호 확인</span></th>
									<td><input type="text" name="send_number" id="inputCode"
										class="inputCode" style="width:70%"> <input id="inputNum" type="text" style="width:30%; margin-top:10px;font-size:11px;"placeholder="3:00" disabled><input
										type="hidden" name="joinCode" id="joinCode" /> <input
										type="button" name="joinCode_check" id="joinCode_check"
										class="btn_confirm" value="인증번호 확인" style="margin-top:10px"onclick="fn_checkCode()" />
										<!-- <a href="javascript:;" class="btn_confirm">인증번호 확인</a> -->
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- join_form E  -->
					<div class="">
						<button type="button" class="btn_wrap"
							onClick="fn_findform_check()">아이디 찾기</button>
					</div>
				</div>
				<!-- form_txtInput E -->
			</div>
			<!-- content E-->
		</div>
		<!--  form_box E  -->
	</form>
</body>
</html>