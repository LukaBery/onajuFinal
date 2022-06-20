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
	border: 1px solid #666666; 
	text-decoration: none;
	background: #ffffff;
	color: #666666;	
}

#deleteHost{
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
<script type="text/javascript">

</script>
</head>
<body>
	<section class="memDetail_con">
		<div class="mem-item1"><div><h3>사업주 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>아이디</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_id }</div></div>
				<div class="mem-item2-chil-1"><div>원정생성일</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.joinDate }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대표자명</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_name }</div></div>
				<div class="mem-item2-chil-1"><div>대표자생년월일</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_birth_y }년${hostVO.h_birth_m }월${hostVO.h_birth_d }일 </div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대표자 전화번호</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_phone }</div></div>
				<div class="mem-item2-chil-1"><div>대표자 이메일</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_email1 }${hostVO.h_email2 }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>거주지 주소</div></div>
				<div class="mem-item2-chil-3"><div>${hostVO.zipcode }</div><div>${hostVO.roadAddress }${hostVO.numberAddress }${hostVO.restAddress }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업주 상태</div></div>
			
						<div class="mem-item2-chil-2"><div>${hostVO.del_yn eq 'N' ? '등록완료': '등록해지'}</div></div>
	
				
				<div class="mem-item2-chil-1"><div>사업주 성별</div></div>
				<c:choose>
					<c:when test="${hostVO.h_gender == 'm' || hostVO.h_gender == 'M' }">
						<div class="mem-item2-chil-2"><div>남자</div></div>
					</c:when>
					<c:when test="${hostVO.h_gender == 'w' || hostVO.h_gender == 'W' }">
						<div class="mem-item2-chil-2"><div>여자</div></div>
					</c:when>
					<c:otherwise>
						<div class="mem-item2-chil-2"><div>미입력</div></div>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>이벤트 수신 여부</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.h_service_01 }${hostVO.h_service_02 }</div></div>
				<div class="mem-item2-chil-4"><div>승인 완료일</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.joinDate }</div></div>
			</div>		
		</div>
		
		
		<div class="mem-item1"><div><h3>대리인 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대리인명</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.deputy_name }</div></div>
				<div class="mem-item2-chil-1"><div>대리인 생년월일</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.deputy_birth }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>대리인 전화번호</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.deputy_phone }</div></div>
				<div class="mem-item2-chil-4"><div>대표자와의 관계</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.deputy_department }</div></div>
			</div>
		</div>
		
		<div class="mem-item5">
			<div><a class="a1" href='<c:out value="${hostVO.h_id }" />'>수정하기</a></div>
			<div><button id="deleteHost" value="${hostVO.h_id }" >탈퇴하기</button></div>
			<div><button class="a2" type="submit" id="hostList" data-oper="list">돌아가기</button></div>
		</div>	
	</section>
	<form id="operForm" action="${contextPath }/admin/hostList.do" method="get">
		
		<input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum }">
		<input type="hidden" id="amount" name="amount" value="${cri.amount }">
		<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />' >
		<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }" />'>
		<input type="hidden" name="h_del_yn" value='<c:out value="${cri.h_del_yn }" />'>
		<input type="hidden" name="h_sellerNum2" value='<c:out value="${cri.h_sellerNum2 }" />'>
		<input type="hidden" name="h_id2" value='<c:out value="${cri.h_id2 }" />'>
		<input type="hidden" name="h_name2" value='<c:out value="${cri.h_name2 }" />'>
	</form>

<script type="text/javascript">

$(document).ready(function(){
	var operForm = $("#operForm");
	$(".a2").on("click",function(e){
		
		e.preventDefault();
		var operation = $(this).data("oper");
		operForm.attr("action", "${contextPath}/admin/hostList.do").attr("method","get");
		alert("리스트로");
		operForm.submit();
	});
});

</script>

<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
	$("#deleteHost").on("click", function(e){
		e.preventDefault();

		operForm.append("<input type='hidden' name='h_id' value='"+$(this).attr("value")+"'>");
		operForm.attr("action","${contextPath}/admin/hostDelete.do").attr("method","post");
		alert("삭제삭제");
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
	operForm.append("<input type='hidden' name='h_id' value='"+$(this).attr("href")+"'>");
	operForm.attr("action", "${contextPath}/admin/hostModify.do");
	operForm.submit();
	});
});
</script>
</body>
</html>