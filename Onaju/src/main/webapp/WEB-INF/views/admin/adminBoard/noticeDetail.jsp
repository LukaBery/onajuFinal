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
.notice-setting{
	
}
.notice-box1{
	display : flex;
	width : 1000px;
	height: 50px; 
	justify-content: center;
	align-items: center;
	border-top: 1px solid #666666; 
	background-color: #eeeeee;
	color: #666666;
}

.notice-box2{
	display: flex;
	width: 1000px;
	height: 50px;
	justify-content: space-between;
	align-items: center;
	border-top : 1px solid #EEEEEE;
	border-bottom: 1px solid #EEEEEE;
}
.notice-box3{
	width: 1000px;
	height: 800px;
}
.notice-box5{
	display: flex;
	width: 1000px;
	height: 50px;
	justify-content: space-around;
	align-items: center;
	border-top : 1px solid #666666;
	border-bottom: 1px solid #EEEEEE;
	background-color: #eeeeee;
	color: #666666;
}
.notice-box3 div img {
	object-fit: scale-down;
	width: 100%;
	height: 100%;
}
.notice-box3 div{
	width: 1000px;
	height: 450px;
	margin-top: 5px;
}
.noticeBoard-row-2{
	width: 1000px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.noticeBoard-row-2 div{
	margin: 10px 10px 10px 10px;
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
.a3{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	border-radius: 5px; 
	border: 1px solid #EEEEEE; 
	text-decoration: none;
	background: #ffffff;
	color: #666666;	
}
</style>

</head>
<body>
	<section style="display: flex; justify-content: center;">
	<div>
		<div>
			<div class="notice-box1">
				<div><h3>${noticeMap.notice_title }</h3></div>
			</div>
			<div class="notice-box2">
				<div><div>작성자 : ${noticeMap.a_id }</div></div>
				<div><div>작성일 : ${noticeMap.writeDate}</div></div>
			</div>			
		</div>
		<div class="notice-box3">
			<c:choose>
				<c:when test="${empty noticeMap.img_code }">
					<div></div>
				</c:when>
				<c:when test="${!empty noticeMap.img_code }">
					<div><img alt="이미지" src="${contextPath}/admin/imgFile.do?creID=${noticeMap.a_id}&notice_code=${noticeMap.notice_code}" height="400" width="300"></div>
				</c:when>
			</c:choose>
			<div class="notice-box4"><div>${noticeMap.notice_content }</div></div>
		</div>
		<div class="notice-box5">
			<div><div>유형 : ${noticeMap.notice_type }</div></div>
			<div><div>게시여부 : ${noticeMap.post_check }</div></div>
			<div><div>상단노출 : ${noticeMap.topView_check }</div></div>
			<div><div>게시채널 : ${noticeMap.post_chennel }</div></div>
			<div><div>게시기간 : ${noticeMap.notice_startDate }&emsp;~&emsp;${noticeMap.notice_endDate }</div></div>
		</div>
		<div class="noticeBoard-row-2">
			<div><button class="a3" type="submit" id="noticeList" data-oper="list">돌아가기</button></div>
			<div><a class="a1" href='<c:out value="${noticeMap.notice_code }" />'>수정하기</a></div>
			<div><input class="a2" type="" value="삭제하기"></div>
		</div>
		<div></div>
	</div>
	</section>
	<form id="operForm" action="${contextPath }/admin/noticeList.do" method="get">
		<input type="hidden" name="pageNum" value="${cri.pageNum }" />
		<input type="hidden" name="amount" value="${cri.amount }" />
		<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
		<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }"/>' >
		<input type="hidden" name="notice_type" value='<c:out value="${cri.notice_type }"/>'>
		<input type="hidden" name="notice_title" value='<c:out value="${cri.notice_title }"/>'>
	</form>
<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
	$(".a3").on("click",function(e){
		
		e.preventDefault();
		var operation = $(this).data("oper");
		operForm.attr("action", "${contextPath}/admin/noticeList.do").attr("method","get");
		
		var pageNumTag = $("input[name='pageNum']").clone();
		var amountTag = $("input[name='amount']").clone();
		var join_startDateTag = $("input[name='join_startDat']").clone();
		var join_endDateTag = $("input[name='join_endDate']").clone();
		var notice_typeTag = $("input[name='notice_type']").clone();
		var notice_titleTag = $("input[name='notice_title']").clone();
		
		operForm.empty();
		
		operForm.append(pageNumTag);
		operForm.append(amountTag);
		operForm.append(join_startDateTag);
		operForm.append(join_endDateTag);
		operForm.append(notice_typeTag);
		operForm.append(notice_titleTag);
	
		alert("리스트로");
		operForm.submit();
	});
});

</script>

<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form");
	
	$("#deleteHost").on("click", function(e){
		e.preventDefault();
		var operation = $(this).data("oper");
		alert(operation);
		if(operation == 'remove'){
			formObj.attr("action","${contextPath}/admin/noticeList.do").attr("method","get");
			
			var pageNumTag = $("input[name='pageNum']").clone();
			var amountTag = $("input[name='amount']").clone();
			var join_startDateTag = $("input[name='join_startDat']").clone();
			var join_endDateTag = $("input[name='join_endDate']").clone();
			var notice_typeTag = $("input[name='notice_type']").clone();
			var notice_titleTag = $("input[name='notice_title']").clone();
			
			formObj.empty();
			
			formObj.append(pageNumTag);
			formObj.append(amountTag);
			formObj.append(join_startDateTag);
			formObj.append(join_endDateTag);
			formObj.append(notice_typeTag);
			formObj.append(notice_titleTag);
			
		}
		formObj.submit();
	});
});
</script>

<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
$(".a1").on("click",function(e){
	alert("수정수정");
	e.preventDefault();
	operForm.append("<input type='hidden' name='notice_code' value='"+$(this).attr("href")+"'>");
	operForm.attr("action", "${contextPath}/admin/noticeModify.do");
	operForm.submit();
	});
});
</script>
</body>
</html>