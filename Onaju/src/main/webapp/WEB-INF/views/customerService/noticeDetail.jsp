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
	background: rgb(253,82,134);
	color: white;	
	border-radius:20px;
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
				<fmt:setLocale value="en_US" scope="session" />
								<fmt:parseDate var="writeDate_" value="${ noticeMap.writeDate }"
									pattern="yyyy-MM-dd hh:mm:ss.SSS" />
								<fmt:formatDate var="writeDate" value="${writeDate_}"
									pattern="yyyy년 MM월 dd일" />
				<div><div>작성일 : ${writeDate}</div></div>
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
			<div><a class="a3" href="${contextPath}/cs/noticeBoard.do">돌아가기</a></div>
		</div>
		<div></div>
	</div>
	</section>
</body>
</html>