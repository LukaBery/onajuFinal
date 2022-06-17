<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
<c:if test='${not empty message }'>


<script>

window.onload=function()
{
  result();
}

function result(){
	alert("아이디나  비밀번호가 틀립니다. 다시 로그인해주세요");
}
</script>
</c:if>
<script type="text/javascript">
function fn_login_check() {
	

	var f = document.h_login_form;
	str = f.h_id.value;
	str = str.trim();
	if(!str){
		alert("아이디를 입력해주세요");
		f.h_id.focus();
		return;
	}
	f.h_id.value = str;
	str = f.h_pw.value;
	str = str.trim();
	if(!str){
		alert("비밀번호를 입력해주세요");
		f.h_pw.focus();
		return;
	}
	
	f.submit();
}

function f() {

location.href='${contextPath}/member/loginForm.do';

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
	max-width: 1100px; /* 수정해봄 */
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

.input_0,
textarea_0 {
  width: auto;
  outline: none;
  margin: 0;
  border: none;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;

  font-size: 18px;
  font-family: inherit;
}
.con_term .term_txt div.txt_bold {
	font-weight: bold;
	margin: 0 0 25px;
}

.btn_wrap a {
	color: #fff;
	background-color: #7f9b75;
	font-weight: bold;
	/* padding: 10px; */
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

 
.noticeBtn2 {
	width: 168px;
	padding: 0;
	font-weight: 400;
}
.noticeBtn2 {
	display: inline-block;
	padding: 5px 30px;
	margin: 30px 0 30px 0px;
	font-size: 16px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark2 {
	background: #7f9b75;
	color: #fff;
}

.btn-dark2:hover, .btn-dark2:focus {
	background: #cbdea6;
	border-color: #cbdea6;
	color: #fff;
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
	margin: 10px 0 10px 0px;
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

.join_form table input.email {
	width: 162px;
	display: inline-block;
}

.join_form table input.email2 {
	width: 192px;
}

.join_form.idpwFind table input {
	width: 519px;
}

.join_form.idpwFind table input.email {
	width: 223px;
}

.join_form.idpwFind table input.email2 {
	width: 263px
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
	content: '*';
	position: absolute;
	left: 0;
	top: 0;
	color: #f95427;
	font-size: 13px;
	font-weight: bold;
}

.explan_txt {
	margin: 10px 0px 10px 0px;
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


.social
{
    margin: 25px;
    align-items: center;
    text-align: center;
	margin: 30px 0 30px;
    
}
.social button
{
    width: 200px;
    border-radius: 10px;
    margin-left: 20px;
    margin-right: 20px;
    margin-bottom: 20px;
    padding: 5px 10px;
    
    border: 1px solid #848484;
    outline: none;
    cursor: pointer;    
    align-items: center;
}


.social button p
{
    color: #4c4c4c;
    font-size: 15px;
    margin-left: 10px;
    letter-spacing: 1px;
}

.social_kakao {
	background: #fae100;
}

.social_naver {
	background: #19ce60;
}

.box_checkbox{
	width: 100%;
	margin: 20px 0px 20px 0px; 
    align-items: auto;
    font-size: 13px;
    text-align: center;
    
}


/* */
</style>
</head>
<body>
<form name="h_login_form" action="${contextPath}/host/h_login.do" method="post">
	<div class="wrap wd668">
			<div class="form_box">
				<div class="form_txtInput">
					<h2 class="sub_tit_txt">호스트 로그인</h2>
					<div class="join_form">
						<table>
							<colgroup>
								<col width="30%"/>
								<col width="auto"/>
							</colgroup>
							<tbody>
								<tr>
									<th><span>아이디</span></th>
									<td><input type="text" name="h_id" placeholder="ID를 입력하세요."></td>
								</tr>
								<tr>
									<th><span>비밀번호</span></th>
									<td><input type="password" name="h_pw" placeholder="비밀번호를 입력해주세요."></td>
								</tr>
								
							</tbody>
						</table>
				
					</div><!-- join_form E  -->
					<div class="box_checkbox">
					<label class="member_ch"> <input class="input_0" type="radio" name="#" OnClick="f()"> 
					<span class="bg_radio"></span> <strong class="txt_label">&nbsp;일반회원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
					</label> 
					<label class="member_ch"><input  class="input_0" type="radio" name="#" checked="checked">
					<span class="bg_radio"></span> <strong class="txt_label">&nbsp;호스트</strong>
					</label>
				</div>
				
					<div class="">
						<button type="submit" class="noticeBtn2 btn-dark2" >로그인</button>
						
					</div>
					
						<ul class="explan_txt">
							<li class="exTxt">아이디 찾기 <a href="${contextPath}/host/h_idFindForm.do">Click Here</a></li>
							<li class="exTxt">비밀번호 찾기 <a href="${contextPath}/host/h_pwdFindForm.do">Click Here</a></li>
							<li class="exTxt">회원가입 <a href="${contextPath}/host/h_joinForm.do">Click Here</a></li>
						</ul>
						
						
				</div> <!-- form_txtInput E -->
			</div><!-- content E-->
		</div> <!-- container E -->
</form>
</body>
</html>