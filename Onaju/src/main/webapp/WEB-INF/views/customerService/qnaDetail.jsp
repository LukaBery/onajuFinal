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
.notice-box50{
	    width: 1000px;
    height: 50px;
    justify-content: flex-start;
    align-items: center;
    border-top: 1px solid #666666;
    border-bottom: 1px solid #EEEEEE;
    background-color: #eeeeee;
    color: #666666;
    text-align: left;
    padding: 15px 10px;
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

.reply_submit{
	display:block; 
	width:130px; 
	line-height:40px; 
	text-align:center; 
	border-radius: 5px; 
	border: 1px solid #EEEEEE; 
	text-decoration: none;
	background: #000033;
	color: #ffffff;	
}
#reply{
	width:900px; 
	height:100px; 
	border: 1px solid #cccccc;
}
.reply_box{
	width:1000px;
	height:70px;
	border-bottom: 1px solid #EEEEEE;
	margin: 10px 0px 0px 0px;
}
.reply_box_chil{
	display: flex;
	justify-content: space-between;
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
			<div><a class="a3" href="${contextPath}/cs/qnaList.do">돌아가기</a></div>
			
		</div>
		<div>
		<div class="notice-box50">
			<span><strong>댓글</strong><span>&nbsp;${replyLength} 개</span></span>
			<br><br>
		</div>
		                <c:forEach var="item" items="${replysList}" >
		
		<form id="replyListForm" name="replyListForm" method="post">
		<div id="replyList">
		<div class='reply_box'>
		<div class='reply_box_chil'><div><strong>${item.a_id}</strong></div>
		<div>${item.creDate}</div></div><br>
		<div style="text-align:left;">${item.re_contents}
		</div>
		</div>
		
		
		</div>
	</form>
		</c:forEach>
		</div>
	</div>
	</section>
	
<script type="text/javascript">
</script>
</body>
</html>