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
	height: 300px;
}
.notice-box5{
	display: flex;
	width: 1000px;
	height: 350px;
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
				<div><h3>${enquireDetail[0].title }</h3></div>
			</div>
			<div class="notice-box2">
				<div><div>작성자 : ${enquireDetail[0].u_id }</div></div>
				<div style="display: flex;">
					<div>작성일 : ${enquireDetail[0].creDate }</div>&emsp;&emsp;
					<div>조회수 : ${enquireDetail[0].hit_cnt }</div>
				</div>
			</div>			
		</div>
		<div class="notice-box3">
			<c:choose>
				<c:when test="${enquireDetail[0].del_yn = y }">
					<div></div>
				</c:when>
				<c:when test="${enquireDetail[0].del_yn = y }">
					<div><img alt="이미지" src="${contextPath}/admin/imgFile.do?creID=${noticeMap.a_id}&notice_code=${noticeMap.notice_code}" height="400" width="300"></div>
				</c:when>
			</c:choose>
			<div class="notice-box4"><div>${enquireDetail[0].contents }</div></div>
		</div>
		<div class="noticeBoard-row-2">
			<div><button class="a3" type="submit" id="enquireList" data-oper="list">돌아가기</button></div>
			<div><input class="a2" type="" value="삭제하기"></div>
		</div>
		<div>
			<%@ include file="/WEB-INF/views/admin/adminBoard/enquireBoardReply.jsp" %>
		</div>
	</div>
	</section>
	<form id="operForm" action="${contextPath }/admin/enquireBoard.do" method="get">
		<input type="hidden" name="pageNum" value="${cri.pageNum }" />
		<input type="hidden" name="amount" value="${cri.amount }" />
		<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
		<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }"/>' >
		<input type="hidden" name="reply_yn" value='<c:out value="${cri.reply_yn }"/>'>
		<input type="hidden" name="title" value='<c:out value="${cri.title }"/>'>
	</form>
	
<script type="text/javascript">
function enquireReply(){
	var enquire_NO = ${enquireDetail[0].enquire_NO};
	var reply_contents = $("#reply_contents").val();
	$.ajax({
		type:"get",
		dataType:"text",
		async: false,
		url:"${contextPath}/admin/enquireReply.do",
		data: {"enquire_NO": enquire_NO, "reply_contents" : reply_contents}
	})
}
</script>
<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
	$(".a3").on("click",function(e){
		
		e.preventDefault();
		var operation = $(this).data("oper");
		operForm.attr("action", "${contextPath}/admin/enquireBoard.do").attr("method","get");
		
		var pageNumTag = $("input[name='pageNum']").clone();
		var amountTag = $("input[name='amount']").clone();
		var join_startDateTag = $("input[name='join_startDat']").clone();
		var join_endDateTag = $("input[name='join_endDate']").clone();
		var reply_ynTag = $("input[name='reply_yn']").clone();
		var titleTag = $("input[name='title']").clone();
		
		operForm.empty();
		
		operForm.append(pageNumTag);
		operForm.append(amountTag);
		operForm.append(join_startDateTag);
		operForm.append(join_endDateTag);
		operForm.append(reply_ynTag);
		operForm.append(titleTag);
	
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
			formObj.attr("action","${contextPath}/admin/enquireboard.do").attr("method","get");
			
			var pageNumTag = $("input[name='pageNum']").clone();
			var amountTag = $("input[name='amount']").clone();
			var join_startDateTag = $("input[name='join_startDat']").clone();
			var join_endDateTag = $("input[name='join_endDate']").clone();
			var reply_ynTag = $("input[name='reply_yn']").clone();
			var titleTag = $("input[name='title']").clone();
			
			formObj.empty();
			
			formObj.append(pageNumTag);
			formObj.append(amountTag);
			formObj.append(join_startDateTag);
			formObj.append(join_endDateTag);
			formObj.append(reply_ynTag);
			formObj.append(titleTag);
			
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
	operForm.append("<input type='hidden' name='enquire_NO' value='"+$(this).attr("href")+"'>");
	operForm.attr("action", "${contextPath}/admin/enquireModify.do");
	operForm.submit();
	});
});
</script>
</body>
</html>