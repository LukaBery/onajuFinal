<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%-- 작성자 : 박종설
	 최종작성일 : 2022.05.19
	 설명 : 관리자 직원 상세 정보 --%>
	 
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
	border-bottom: 1px solid #E6E6E6; 
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
</style>
</head>
<body>
	<section class="memDetail_con">
		<div class="mem-item1"><div><h3>직원정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>아이디</div></div>
				<div class="mem-item2-chil-2"><div>${adminVO.a_id }</div></div>
				<div class="mem-item2-chil-1"><div>비밀번호</div></div>
				<div class="mem-item2-chil-2"><div>****************</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>이름</div></div>
				<div class="mem-item2-chil-2"><div>${adminVO.a_name }</div></div>
				<div class="mem-item2-chil-1"><div>생년월일</div></div>
				<div class="mem-item2-chil-2"><div>${adminVO.a_birth }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>권한</div></div>
				<div class="mem-item2-chil-2"><div>${adminVO.del_yn eq 'N' ? '재직':'퇴사' }</div></div>
				<div class="mem-item2-chil-1"><div>전화번호</div></div>
				<div class="mem-item2-chil-2"><div>${adminVO.a_phone }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>이메일</div></div>
				<div class="mem-item2-chil-2"><div>${adminVO.a_email1 }${adminVO.a_email2 }</div></div>
				<div class="mem-item2-chil-1"><div>입사일</div></div>
				<div class="mem-item2-chil-2"><div>${adminVO.joinDate }</div></div>
			</div>	
		</div>

		<div class="mem-item5">
			<div><a class="a1" href='<c:out value="${adminVO.a_id }" />'>수정하기</a></div>
			<div><button class="a2" type="submit" id="adminList" data-oper="list">돌아가기</button></div>
		</div>	
	</section>
	<form id="operForm" action="${contextPath }/admin/adminList.do" method="get">
	<input type="hidden" name="pageNum" value="${cri.pageNum }" />
	<input type="hidden" name="amount" value="${cri.amount }" />
	<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
	<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }"/>' >
	<input type="hidden" name="a_del_yn" value='<c:out value="${cri.a_del_yn }"/>'>
	<input type="hidden" name="a_name2" value='<c:out value="${cri.a_name2 }"/>'>
	<input type="hidden" name="a_id2" value='<c:out value="${cri.a_id2 }"/>'>
</form>

<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
	$("#adminList").on("click",function(e){		
		e.preventDefault();
		operForm.attr("action", "${contextPath}/admin/adminList.do");
		alert("리스트로");
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
	operForm.append("<input type='hidden' name='a_id' value='"+$(this).attr("href")+"'>");
	operForm.attr("action", "${contextPath}/admin/adminModify.do");
	operForm.submit();
	});
});
</script>

<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
$("#adminDelete").on("click",function(e){
	alert("탈퇴탈퇴");
	e.preventDefault();
	operForm.append("<input type='hidden' name='a_id' value='"+$(this).attr("value")+"'>");
	operForm.attr("action", "${contextPath}/admin/adminDelete.do").attr("method","post");
	operForm.submit();
	});
});
</script>
</body>
</html>

