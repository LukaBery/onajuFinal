
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
	margin-bottom: 15px; display : block;
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

#h1_order_title {
	margin: 10px 0px 10px 0px;
	color: rgb(252, 78, 130);
	opacity: 90%;
	font-weight: 550;
	text-align: center;
	font-size: 25px;
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

#order_checkbox {
	margin-top: 2.5px; width : 25px;
	float: left;
	vertical-align: middle;
	width: 25px;
}

.hb_order_p {
	float: left; font-weight : 600;
	text-align: left;
	font-weight: 600;
}

.hb_order_a_1 {
	float: right;
	text-align: right;
	color: black;
	display: inline-block;
}



.hb_order_submit {
	font-weight: 550;

font-size: 16px;
	line-height:40px;
	border: 1px solid rgb(252, 96, 143);
	width: 100%;
	height: 40px;
	vertical-align: middle;
	margin: 0px 0px 10px 0px;
}

.hb_order_sns {
	font-weight: 550;

font-size: 16px;
	line-height:40px;
	
	width: 49%;
	height: 40px;
	vertical-align: middle;
	margin: 10px 0px 10px 0px;
}

.hb_order_textbox {
margin-top:25px;
	display: block;
	padding: 0 20px;
	width: 100%;
	height: 70px;
padding: 15px 0px 15px 0px;
	font-size: 16px;
	border: none;
	border-radius: 20px;
	outline: none;
}
</style>

<script>

function hb_test_login(){
	var id = document.getElementById('member_id').value;
	var pwd = document.getElementById('member_pwd').value;
 if (id==''){
	 alert("아이디를 입력하세요");
	 location.href="boardLogin.do";
 }
 else if(pwd==''){
	 alert("비밀번호를 입력하세요");
	 location.href="boardLogin.do";
 }
 else{
	 location.href="${contextPath}/board/articleForm.do?isLogOn=true"
 }
}



</script>
</head>
<body>

	<section class="hb_section_total">

		<section class="hb_section_order_title">
			<a href="${contextPath}/main/main.do"> <img
				src="${contextPath}/resources/image/onajulogo.png" width="150px"
				height="100px"></a>
		</section>

		<!-- <회원 로그인> -->

		<section class="hb_section_half">
			<div class="hb_rec_order_1" style="float: right;">
				<p id="h1_order_title">로그인</p>
				<div class="order_divider"></div>



				<span class="inputWrap_order"> <input type="text" name=""
					id="member_id" tabindex="1" placeholder="아이디">
				</span> <span class="inputWrap_order"> <input type="password"
					name="" id="member_pwd" tabindex="1" placeholder="비밀번호">
				</span> <span class="hb_order_a"> <input type="checkbox"
					id="order_checkbox" /> <i class="hb_order_p">아이디 저장</i> <a
					class="hb_order_a_1" href="${contextPath}/member/pwdFindForm.do"
					style="margin-left: 7px;"> 비밀번호 찾기</a> <a class="hb_order_a_1"
					style="font-size: 18px;"> / </a> <a class="hb_order_a_1"
					href="${contextPath}/member/idFindForm.do"
					style="margin-right: 7px;">아이디 찾기 </a>

				</span> 
				<a class="hb_order_submit" onclick="hb_test_login()" style="background-color: rgb(252, 96, 143); color: white;" href="#">로그인</a>
				 <a class="hb_order_submit" style="background-color:white; color:rgb(252, 96, 143);" href="${contextPath}/member/joinForm.do">회원가입</a>
				 				<a class="hb_order_sns" style="background-color: rgb(30,200,0); color: white; float:left;" href="#">네이버 로그인</a>
				 						<a class="hb_order_sns" style="background-color: rgb(255,234,15); color: rgb(60,30,30); float:right;" href="#">카카오 로그인</a>



			</div>
		</section>




		<!-- <비회원 로그인> -->
		<section class="hb_section_half">



			<div class="hb_rec_order_1" style="float: left;">
				<p id="h1_order_title">비회원(이용하기)</p>
				<div class="order_divider"></div>
				<div class="hb_order_textbox" style="color: rgb(178,178,178);">비회원 이용하기를 클릭하시면<br>비회원으로 이용할 수 있습니다. 
				
				</div>
					<a class="hb_order_submit" style="background-color: rgb(252, 96, 143); color: white;" href="${contextPath}/board/articleForm.do">비회원 이용하기</a>
<div class="hb_order_textbox" style="color:	color: black;">지금 회원가입을 하시면 오나주에서 드리는 <br>할인 및 적립 혜택을 받을 수 있습니다. 
				
				</div>
				 <a class="hb_order_submit" style="background-color:white; color:rgb(252, 96, 143);" href="${contextPath}/member/joinForm.do">회원가입</a>

			</div>
		</section>






	</section>
</body>

</html>
