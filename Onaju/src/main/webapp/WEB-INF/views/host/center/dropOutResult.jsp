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
<title>호스트 회원 탈퇴</title>

<script type="text/javascript">
 function fn_findform_check() {
		

		var f = document.hostDropOutForm;
		str = f.host_pwd.value;
		str = str.trim();
		if(!str){
			alert("비밀번호를 입력해주세요");
			f.host_pwd.focus();
			return;
		}
		f.action = "${contextPath}/ /hostDropOutResult.do";
		f.submit();
}  
 

</script>

<style>
@charset "utf-8";
 
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
	max-width: 750px;
	min-width: 750px;
	margin: 0 auto;
}

.wrap.wd668 {
	max-width: 668px;
}

.wrap.wd668.line {
	border: 1px solid #ececec;
	padding: 30px 20px;
}

.contai1 {
	width: 100%;
}

.sub_tit_txt {
	margin: 80px 0 20px 20px;
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


.left_margin {
	margin: 0 0 0 20px;
}

.con_term .term_txt div.txt_bold {
	font-weight: bold;
	margin: 0 0 25px;
}

.btn_box {
	margin: 80px 0px 40px 300px; 
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
	width: 50%;
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

/* .join_form table td a.btn_confirm {
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
 */
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


.explan_txt {
	margin: 3px 0 0 22px;
}

.noticeBtn2Box {
	width:100%;
	margin: 0 375px 0 0px;
	
}

.noticeBtn2 {
	width: 108px;
	padding: 0;
	font-weight: 400;
}
.noticeBtn2 {
	display: inline-block;
	padding: 5px 30px;
	/* margin:30px 60px 30px 60px; */
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



</style>
</head>
<body>
	<div class="wrap wd668">
			<div class="contai1">
				<div class="form_txtInput">
					<h2 class="sub_tit_txt">호스트 회원 탈퇴 완료</h2>
					<p class="exTxt"><br>탈퇴가 성공적으로 완료되었습니다.<br>
					오나주를 이용해 주셔서 감사드립니다. <br>
					앞으로도 더 좋은 서비스로 고객님과 함께하는 오나주가 되도록 노력하겠습니다.</p>
					<%-- <div class="join_form">
					<form name="hostDropOutForm" action="${contextPath}/member/idFindResult.do" method="post">
						<table>
							<colgroup>
								<col width="30%"/>
								<col width="*"/>
							</colgroup>
							<tbody>
								<tr>
									<th><span>비밀번호</span></th>
									<td><input type="password" name="" id="host_pwd" placeholder="비밀번호을 입력하세요."></td>
								</tr>
							</tbody>
						</table>
					</form>
					</div><!-- join_form E  --> --%>
					<div class="btn_box">
					<div class="noticeBtn2Box">
						<button type="submit" class="noticeBtn2 btn-dark2" onClick="${contextPath}/main/main.do">메인</button>
					</div>
					</div>
				</div> <!-- form_txtInput E -->
			</div><!-- content E-->
		</div> <!-- container E -->
</body>
</html>