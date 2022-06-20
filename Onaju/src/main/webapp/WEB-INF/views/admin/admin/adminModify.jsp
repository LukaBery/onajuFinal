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
.mem-item2-chil-2 div input{
	width: 330px;
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
</style>
</head>
<body>
	<section class="memDetail_con">
		<div class="mem-item1"><div><h3>직원정보 수정</h3></div></div>
		<form id="adminVO" action="${contextPath }/admin/updateAdmin.do" method="post">
			<div class="mem-item2">
				<div class="mem-item2-chil">
					<div class="mem-item2-chil-1"><div>아이디</div></div>
					<div class="mem-item2-chil-2"><div><input type="text" name="a_id" value="${adminVO.a_id }" disabled ></div></div>
					<div class="mem-item2-chil-1"><div>비밀번호</div></div>
					<div class="mem-item2-chil-2"><div>****************</div></div>
				</div>
				<div class="mem-item2-chil">
					<div class="mem-item2-chil-1"><div>이름</div></div>
					<div class="mem-item2-chil-2"><div><input type="text" size="20" name="a_name" value="${adminVO.a_name }" /></div></div>
					<div class="mem-item2-chil-1"><div>생년월일</div></div>
					<div class="mem-item2-chil-2"><div><input type="date" size="20" name="a_birth" value="${adminVO.a_birth }" /></div></div>
				</div>
				<div class="mem-item2-chil">
					<div class="mem-item2-chil-1"><div>권한</div></div>
					<div class="mem-item2-chil-2">
						<div>
							<select name="del_yn">
								<option value="">상태</option>
								<option value="N" <c:out value='${adminVO.del_yn == "N" ? "selected":"" }' />>재직</option>
								<option value="Y" <c:out value='${adminVO.del_yn == "Y" ? "selected":"" }' />>퇴사</option>
							</select>
						</div>
					</div>
					<div class="mem-item2-chil-1"><div>전화번호</div></div>
					<div class="mem-item2-chil-2"><div><input type="text" size="20" name="a_phone" value="${adminVO.a_phone }" /></div></div>
				</div>
				<div class="mem-item2-chil">
					<div class="mem-item2-chil-1"><div>이메일</div></div>
					<div class="mem-item2-chil-2">
						<div>
							<input type="text" size="20" name="a_email1" value="${adminVO.a_email1 }" />
							<select name="a_email2">
								<option value="">이메일 선택</option>
								<option value="@naver.com" <c:out value="${adminVO.a_email2 eq '@naver.com' ? 'selected' : '' }" /> >네이버</option>
								<option value="@daum.net"  <c:out value="${adminVO.a_email2 eq '@daum.com' ? 'selected' : '' }" />>다음</option>
								<option value="@gmail.com" <c:out value="${adminVO.a_email2 eq '@gmail.com' ? 'selected' : '' }" />>구글</option>
							</select>
						</div>
					</div>
					<div class="mem-item2-chil-1"><div>입사일</div></div>
					<div class="mem-item2-chil-2"><div>${adminVO.joinDate }</div></div>
				</div>	
			</div>

			<div class="mem-item5">
				<div><a class="a1" id="updateAdmin">수정완료</a></div>
				<div><button class="a2" id="adminDetail" data-oper="detail" value='<c:out value="${adminVO.a_id }" />'>돌아가기</button></div>
			</div>	
		
				<input type="hidden" name="pageNum" value="${cri.pageNum }" />
				<input type="hidden" name="amount" value="${cri.amount }" />
				<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
				<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }"/>' >
				<input type="hidden" name="a_del_yn" value='<c:out value="${cri.a_del_yn }"/>'>
				<input type="hidden" name="a_name2" value='<c:out value="${cri.a_name2 }"/>'>
				<input type="hidden" name="a_id2" value='<c:out value="${cri.a_id2 }"/>'>
			</form>
	</section>
	<form id="operForm" action="${contextPath }/admin/adminDetail.do" method="get">
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
	var formObj = $("#adminVO");
	$("#updateAdmin").on("click", function(e){
		e.preventDefault();
		$("input[name=a_id]").attr("disabled", false);
		alert("수정수정");
		formObj.submit();
	});
});
</script>
<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
	$("#adminDetail").on("click",function(e){		
		e.preventDefault();
		operForm.append("<input type='hidden' name='a_id' value='"+$(this).attr("value")+"'>");
		operForm.attr("action", "${contextPath}/admin/adminDetail.do").attr("method","get");
		alert("디테일");
		operForm.submit();
	});
});
</script>
</body>
</html>

