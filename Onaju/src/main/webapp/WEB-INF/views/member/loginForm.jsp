
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<style>
.hb_rec_1 {
	float: left;
	display: inline-block;
	width: 800px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.hb_rec_2 {
	display: inline-block;
	float: right;
	width: 250px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.hb_rec_3 {
	align-items: center;
	text-align: center;
	display: inline-block;
	width: 122px;
	height: 60px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
	padding: 0px 0px 0px 0px;
	margin: 0px 21px 0px 21px;
}

.hb_rec_4 {
	display: inline-block;
	width: 240px;
	height: 180px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px;
	margin: 5px 10px 5px 10px;
}

.hb_rec_order_1 {
	display: inline-block;
	width: 450px;
	height: 400px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px 20px 0px 20px;
	margin: 5px 10px 5px 10px;
}
/* <섹션 종류> */
.hb_section_total {
	width: 1100px;
	height: 100%
}

.hb_section_half {
	float: left;
	display: inline-block;
	width: 550px;
	height: auto;
	min-height: 700px;
}

.hb_section_order_title {
	padding: 70px 4px 50px 20px;
	display: inline-block;
	width: 1100px;
	height: 210px;
}

.hb_section_1 {
	padding: 5px 0px 5px 0px;
	display: inline-block;
	width: 800px;
	height: 70px;
}

.hb_section_2 {
	display: inline-block;
	width: 1100px;
	height: 400px;
}

.hb_section_3 {
	display: inline-block;
	width: 300px;
	height: 70px;
}

.hb_section_4 {
	display: inline-block;
	width: 1100px;
	height: 300px;
}

.hb_section_5 {
	padding: 8px 4px;
	display: inline-block;
	width: 1100px;
	height: 50px;
}

.hb_label_order {
	
}
/* <인라인블럭 왼쪽 고정> */
.margin_left_0 {
	float: left;
	margin-left: 0px;
}
/* <인라인블럭 왼쪽 고정> */
.margin_right_0 {
	float: right;
	margin-right: 0px;
}

.hb_table_1 {
	float: left;
	display: inline-block;
	width: 266.6px;
	height: 300px;
}

.order_divider {
	margin-bottom: 15px;
	display: block;
	width: 100%;
	height: 0px;
	border-top: 0.5px solid #CCCCCC;
	display: block;
}

.hb_textbox_1 {
	display: inline-block;
	width: 238px;
	height: 120px;
}

#form_width_center {
	text-align: center;
}

#h1_left {
	text-align: left;
	font-size: 25px;
}

.h1_order_title {
	margin: 10px 0px 10px 0px;
	color: rgb(252, 78, 130);
	opacity: 90%;
	font-weight: 550;
	text-align: center;
	font-size: 25px;
	width: 40%;
	display: inline-block;
}
/* <a 태그 부모 태그 전체 확장> */
#hb_a_main {
	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 auto;
	border-radius: 20px;
}

.inputWrap_order {
	margin-top: 10px;
	position: relative;
	display: block;
	width: 100%;
	height: 50px;
	border: 1px solid #eee;
	border-radius: 20px;
	background: #FBFCFC;
}

.inputWrap_order input {
	display: block;
	padding: 0 20px;
	width: 100%;
	height: 100%;
	background: #FBFCFC;
	font-size: 16px;
	color: #000;
	border: none;
	border-radius: 20px;
	outline: none;
}

.hb_order_a {
	display: block;
	margin-top: 10px;
	position: relative;
	width: 100%;
	height: 30px;
}

#hb_strong {
	display: block;
	position: Absolute;
	left: 15px;
	top: 15px;
	color: #b4b4b4;
	font-size: 16px;
	vertical-align: middle;
	font-weight: normal;
}

#idSaveCheck {
	margin-top: 2.5px;
	width: 25px;
	float: left;
	vertical-align: middle;
	width: 25px;
}

.hb_order_p {
	float: left;
	font-weight: 600;
	text-align: left;
	font-weight: 600;
}

.hb_order_a_1 {
	float: right;
	text-align: right;
	color: black;
	display: inline-block;
}

.hb_order_sns {
	font-weight: 550;
	font-size: 16px;
	line-height: 40px;
	width: 49%;
	height: 40px;
	vertical-align: middle;
	margin: 10px 0px 10px 0px;
}

.hb_order_textbox {

	display: block;
	padding: 7px 0px 10px 0px;
	width: 100%;
	height: 60px;

	font-size: 14px;
	border: none;
	border-radius: 20px;
	outline: none;
}

.switch-button {
	position: relative;
	display: inline-block;
	width: 55px;
	height: 30px;
}

.switch-button input {
	opacity: 0;
	width: 0;
	height: 0;
}

.onoff-switch {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	border-radius: 20px;
	background-color: #ccc;
	box-shadow: inset 1px 5px 1px #999;
	-webkit-transition: .4s;
	transition: .4s;
}

.onoff-switch:before {
	position: absolute;
	content: "";
	height: 22px;
	width: 22px;
	left: 4px;
	bottom: 4px;
	background-color: #fff;
	-webkit-transition: .5s;
	transition: .4s;
	border-radius: 20px;
}

.switch-button input:checked+.onoff-switch {
	background-color: #CBDEA6;
	box-shadow: inset 1px 5px 1px #7F9B75;
}

.switch-button input:checked+.onoff-switch:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

#hb_order_submit_0 {
	background-color: rgb(252, 96, 143);
	color: white;
	border: 1px solid rgb(252, 96, 143);
	font-weight: 550;
	font-size: 16px;
	line-height: 40px;
	width: 100%;
	height: 40px;
	vertical-align: middle;
	margin: 0px 0px 10px 0px;
}

.hb_order_submit {
	border: 1px solid rgb(252, 96, 143);
	font-weight: 550;
	font-size: 16px;
	line-height: 40px;
	width: 100%;
	height: 40px;
	vertical-align: middle;
	margin: 0px 0px 10px 0px;
}

#hb_order_submit_1 {
	background-color: white;
	color: rgb(252, 96, 143);
	border: 1px solid rgb(252, 96, 143);
	font-weight: 550;
	font-size: 16px;
	line-height: 40px;
	width: 100%;
	height: 40px;
	vertical-align: middle;
	margin: 0px 0px 10px 0px;
}

#hb_order_submit_3 {
	background-color: #7F9B75;
	color: white;
	border: 1px solid #7F9B75;
	font-weight: 550;
	font-size: 16px;
	line-height: 40px;
	width: 100%;
	height: 40px;
	vertical-align: middle;
	margin: 0px 0px 10px 0px;
}

#hb_order_submit_4 {
	background-color: white;
	color: #7F9B75;
	border: 1px solid #7F9B75;
	font-weight: 550;
	font-size: 16px;
	line-height: 40px;
	width: 100%;
	height: 40px;
	vertical-align: middle;
	margin: 0px 0px 10px 0px;
}

.hb_green {
	width: 33px;
	float: right;
	font-size: 11px;
	font-weight: 600;
	text-align: center;
	color: #7F9B75;
}
#h1_order_g{
color:rgb(252, 78, 130);
}

#h1_order_r{
color:#7F9B75;
}
#naverIdLogin_loginButton{
	width:200px;
	height:40px;
	display: inline-block;
    float: right;
}
</style>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- 아이디 저장 기능(쿠키 사용) -->
<script>
	window.onload = function() {

		if (getCookie("u_id")) { // getCookie함수로 id라는 이름의 쿠키를 불러와서 있을경우
			document.login_form.u_id.value = getCookie("u_id"); //input 이름이 id인곳에 getCookie("id")값을 넣어줌
			document.login_form.idSaveCheck.checked = true; // 체크는 체크됨으로
		}

	}

	function setCookie(name, value, expiredays) //쿠키 저장함수
	{
		var todayDate = new Date();
		todayDate.setDate(todayDate.getDate() + expiredays);
		document.cookie = name + "=" + escape(value) + "; path=/; expires="
				+ todayDate.toGMTString() + ";"
	}

	function getCookie(Name) { // 쿠키 불러오는 함수
		var search = Name + "=";
		if (document.cookie.length > 0) { // if there are any cookies
			offset = document.cookie.indexOf(search);
			if (offset != -1) { // if cookie exists
				offset += search.length; // set index of beginning of value
				end = document.cookie.indexOf(";", offset); // set index of end of cookie value
				if (end == -1)
					end = document.cookie.length;
				return unescape(document.cookie.substring(offset, end));
			}
		}
	}
</script>
<script>

function checkBox(checked){
   
	var element = document.getElementById("host_onOff");
   if( checked.checked==true ){
    
      document.getElementById('hb_order_submit_0').setAttribute('id','hb_order_submit_3');
      document.getElementById('hb_order_submit_1').setAttribute('id','hb_order_submit_4');
      var res = document.getElementById("hb_order_submit_4");
      res.innerText = "호스트 회원가입";
      document.getElementById('u_id').setAttribute('name','h_id');
      document.getElementById('u_pw').setAttribute('name','h_pw');
      document.getElementById('login_form').setAttribute('action','${contextPath}/host/h_login.do');
      document.getElementById('pwdFind').setAttribute('href','${contextPath}/host/h_pwdFindForm.do');
      document.getElementById('idFind').setAttribute('href','${contextPath}/host/h_idFindForm.do');
      document.getElementById('hb_order_submit_4').setAttribute('href','${contextPath}/host/h_joinForm.do');
      document.getElementById('h1_order_g').setAttribute('id','h1_order_r');
      element.innerText = "ON";

      
   }else if( checked.checked==false){
	  document.getElementById('hb_order_submit_3').setAttribute('id','hb_order_submit_0');
	  document.getElementById('hb_order_submit_4').setAttribute('id','hb_order_submit_1');
	  var res = document.getElementById("hb_order_submit_1");
      res.innerText = "회원가입";
	  document.getElementById('u_id').setAttribute('name','u_id');
	  document.getElementById('u_pw').setAttribute('name','u_pw'); 
	  document.getElementById('login_form').setAttribute('action','${contextPath}/member/login.do'); 
	  document.getElementById('pwdFind').setAttribute('href','${contextPath}/member/pwdFindForm.do');
	  document.getElementById('idFind').setAttribute('href','${contextPath}/member/idFindForm.do');
	  document.getElementById('hb_order_submit_1').setAttribute('href','${contextPath}/member/joinForm.do'); 
      document.getElementById('h1_order_r').setAttribute('id','h1_order_g');

      element.innerText = "OFF";

	   
	  
   }else{
	   return false;
   }
   
   
}

</script>
<!-- DB와 비교 후 메세지 출력 -->
<c:if test='${not empty message }'>

	<script>
		window.onload = function() {
			result();
		}

		function result() {
			alert("${message}");
		}
	</script>
</c:if>
<!-- 로그인 버튼 -->
<script>
	function hb_test_login() {
		var id = document.getElementById('u_id').value;
		var pwd = document.getElementById('u_pw').value;
		if (id == '') {
			alert("아이디를 입력하세요");

			return false;
		}
		if (pwd == '') {
			alert("비밀번호를 입력하세요");

			return false;
		}

		if (document.login_form.idSaveCheck.checked == true) {
			setCookie("u_id", document.login_form.u_id.value, 7);
		} else { // 아이디 저장을 체크 하지 않았을때
			setCookie("u_id", document.login_form.u_id.value, 0); //날짜를 0으로 저장하여 쿠키삭제
		}
		document.login_form.submit();
	}
	
	/* input 태그에서 엔터 누를시 로그인 함수 실행 */
	function enter_login(f) {
		if (f.keyCode == 13) {
			hb_test_login();
		}
	}
	function hb_nonmember_login(){
		var name = document.getElementById('non_name').value;
		var phone = document.getElementById('non_phone').value;
		if (name == '') {
			alert("이름을 입력하세요");

			return false;
		}
		if (phone == '') {
			alert("전화번호를 입력하세요");

			return false;
		}
		document.nonmember_frm.submit();
	}
	
	


</script>
<!-- 네아로 SDK -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
</head>
<body>
<section class="hb_section_total">
	<form name="login_form"  id="login_form" action="${contextPath}/member/login.do"
		method="post">
		

			<!-- 로고 -->
			<section class="hb_section_order_title">
				<a href="${contextPath}/main/main.do"> <img
					src="${contextPath}/resources/image/onajulogo.png" width="150px"
					height="100px"></a>
			</section>


			<!-- <회원 로그인> -->
			<section class="hb_section_half">
				<div class="hb_rec_order_1" style="float: right;">
				<div style="width:30%; float:left; height:40px; margin-top:10px;"></div>
					<p class="h1_order_title" id="h1_order_g">로그인</p>
					
					<div style="width:30%; float:right; margin-top:10px;">
					<div style="width:40%; height:40px; float:left;font-"><span class="hb_green" >사업주</span>
		<span class="hb_green" id="host_onOff"  >OFF</span></div>
					
						<label class="switch-button" id="checkBoxId"onchange="checkBox(this)" > <input type="checkbox" id="checkBoxId" name="checkBoxId"onchange="checkBox(this)"/> <span
							class="onoff-switch"></span>
						</label>
					</div>

					<div class="order_divider"></div>



					<span class="inputWrap_order"> <input type="text"
						name="u_id" id="u_id" tabindex="1" placeholder="아이디">
					</span> <span class="inputWrap_order"> <input type="password"
						name="u_pw" id="u_pw" tabindex="1" placeholder="비밀번호"
						onkeypress="javascript:if(event.keyCode==13){hb_test_login();}">
					</span> <span class="hb_order_a"> <input type="checkbox"
						id="idSaveCheck" name="idSaveCheck" /> <i class="hb_order_p">아이디
							저장</i> <a class="hb_order_a_1" id="pwdFind"
						href="${contextPath}/member/pwdFindForm.do"
						style="margin-left: 7px;"> 비밀번호 찾기</a> <a class="hb_order_a_1"
						style="font-size: 18px;"> / </a> <a class="hb_order_a_1" id="idFind"
						href="${contextPath}/member/idFindForm.do"
						style="margin-right: 7px;">아이디 찾기 </a> <!-- 로그인 버튼 -->
					</span> <a  onclick="hb_test_login()"
						id="hb_order_submit_0" 
						href="#">로그인</a>

	
					<a 	id="hb_order_submit_1" 
						
						href="${contextPath}/member/joinForm.do">회원가입</a>
						
					<!-- 네이버 로그인 버튼 -->
					<div id=naverIdLogin ></div>


					<!-- 카카오 로그인 버튼 -->
					<a class="hb_order_sns" style="background-color: rgb(255, 234, 15); color: rgb(60, 30, 30); margin: 0px 0px 0px 0px; display: inline-block; float: left;"
						href="https://kauth.kakao.com/oauth/authorize?client_id=2520c8e17541628f34b1475ac21d1840&redirect_uri=http://localhost:8080/Onaju/member/kakaoLogin&response_type=code">
						카카오 로그인</a>



				</div>
			</section>

	</form>


			<!-- <비회원 로그인> -->
			<form  name="nonmember_frm" action="${contextPath}/member/nonmemberLogin.do" method="post">

			<section class="hb_section_half">



				<div class="hb_rec_order_1" style="float: left;">
					<p class="h1_order_title" style="width:100%;">비회원(이용하기)</p>
					<div class="order_divider"></div>
					<span class="inputWrap_order"> <input type="text"
						name="non_name" id="non_name" tabindex="1" placeholder="이름">
					</span> <span class="inputWrap_order"> <input type="text"
						name="non_phone" id="non_phone" tabindex="1" placeholder="전화번호"
						onkeypress="javascript:if(event.keyCode==13){hb_nonmember_login();}">
					</span>
					<span class="hb_order_a"></span>
					<a class="hb_order_submit"
						style="background-color: rgb(252, 96, 143); color: white; "
						onclick="hb_nonmember_login()" href="#">비회원 이용하기</a>
					<div class="hb_order_textbox" style="color: color: black;">
						지금 회원가입을 하시면 오나주에서 드리는 <br>할인 및 적립 혜택을 받을 수 있습니다.

					</div>
					<a class="hb_order_submit"
						style="background-color: white; color: rgb(252, 96, 143);"
						href="${contextPath}/member/joinForm.do">회원가입</a>

				</div>
			</section>


</form>



		</section>

</body>

<!-- 네이버 아이디 로그인 -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "cwdVeGhLyV8ZpeAvjTHM",
  			// 본인의 Client ID로 수정, 띄어쓰기는 사용하지 마세요.
			callbackUrl: "http://localhost:8080/Onaju/member/callBack",
  			// 본인의 callBack url로 수정하세요.
			isPopup: false,
			loginButton: {color: "green", type: 3, height: 40} 
  			// 네이버 로그인버튼 디자인 설정. 한번 바꿔보세요:D
		}
	);
naverLogin.init();
</script>
</html>
