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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<style type="text/css">
.noticeBoard-row{
	display: flex;
}
.noticeBoard-row-2{
	width: 940px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.noticeBoard-row-3{
	width: 940px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.noticeBoard-row-col1{
	width: 200px; 
	height: 50px; 
	color: #ffffff;
	border: 1px solid #000033;
	border-bottom: 1px solid #ffffff; 
	background-color: #000033; 
	display:flex; 
	align-items: center;
}
.noticeBoard-row-col2{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.noticeBoard-row-col3{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
	border-bottom: none;
}
.noticeBoard-row-col1 div{
	margin-left: 20px;
}
.noticeBoard-row-col2 div{
	margin-left: 20px;
}
.noticeBoard-row-col2 div input{
	width: 330px;
}
.noticeBoard-row-2 div{
	width: 150px; 
	height: 50px; 
	margin: 5px 5px 5px 5px;
}
.noticeBoard-row-2 div a{
	display:block; 
	width:130px; 
	line-height:45px; 
	text-align:center; 
	border-radius: 5px; 
	border: 1px solid #000033; 
	text-decoration: none;
	background-color: #000033;
	color: white;
}
.noticeBoard-row-2 div input{
	width: 130px; 
	height: 45px; 
	border-radius: 5px; 
	border: none; 
	background-color: #FF3333; 
	color: white;
}
.noticeBoard-row-3 div button{
	width: 100px; 
	height: 40px; 
	border-radius: 5px; 
	border: none; 
	background-color: #ff3333; 
	color: white;
}
.noticeBoard-row-col2 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.noticeBoard-row-col2 div select{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.noticeBoard-row-col3 div input{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.styled-table{
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0 0.15); 
	width: 100%;
	table-layout: fixed;
}
.styled-table thead tr{
	background-color: #666666;
	color: #ffffff;
	text-align: left;
}
.styled-table thead tr td{
	font-size: 14px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.styled-table tr td{
	font-size: 14px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.styled-table th, .styled-table td {
	padding: 12px 15px;
}
.styled-table tbody tr{
	border-bottom: 1px solid #dddddd;
	font-size: 13px;
}
.styled-table tbody tr:hover{
	background-color: #99CCFF;
}
.styled-table tbody tr:nth-of-type(even){
	background-color: #f3f3f3;
}
.styled-table tbody tr:nth-of-type(even):hover{
	background-color: #99CCFF;
}
.styled-table tbody tr:nth-of-type{
	border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row{
	font-weight: bold;
	color: #009879;
}
.noticeBoard-row-col3 div button{
	width: 75px;
	height: 30px;
	border-radius: 15px; 
	border: none;
	background-color: #f6f6f6; 
	color: #666666;
	margin: 0px 5px 0px 5px;
	cursor: pointer;
}
</style>
</head>
<body>
<section>
	<div class="container-fluid px-4" style="margin: 15px 0px 15px 0px;">
		<article><h3 class="mt-4"><strong>호스트 공지사항</strong></h3></article>
	</div>
</section>
<section>
	<table class="styled-table">
		<colgroup>
			<col style="width:8%">
			<col style="width:10%">
			<col style="width:14%">
			<col style="width:14%">
			<col style="width:20%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:14%">
		</colgroup>
		<thead>
 			<tr>
				<td >체크박스</td>
     			<td >작성자</td>  
     			<td >시작일시</td>            
     			<td >종료일시</td>
     			<td >제목</td>
     			<td >게시유형</td>
     			<td >게시채널</td>
     			<td >게시글 등록일</td>     			
  			</tr>
		</thead>
		<c:choose>
  			<c:when test="${empty noticeList}" >
    			<tr  height="10">
      				<td colspan="9">
         				<p align="center">
            				<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        				</p>
      				</td>  
    			</tr>
  			</c:when>
  			<c:when test="${!empty noticeList}" >
    			<c:forEach  var="notice" items="${noticeList }" varStatus="reviewNum" >
     				<tr style="cursor: pointer;" class="move" value='<c:out value="${notice.notice_code }" />'>
						<td>${reviewNum.count}</td>
						<td>${notice.a_id }</td>
						<td>${notice.notice_startDate }</td>
						<td>${notice.notice_endDate }</td>
						<td>${notice.notice_title }</td>   
						<td>${notice.notice_type }</td>   
						<td>${notice.post_chennel }</td>   
						<td>${notice.writeDate }</td>   								  
					</tr>
    			</c:forEach>
     		</c:when>  		
    	</c:choose>
    </table>
</section>
<section>
	<div class="pull-right">
		<ul class="pagination">
			<c:if test="${pageMaker.prev }">
				<li class="paginate_button previous"><a href="${pageMaker.startPage - 1 }">Previous</a></li>
			</c:if>
			
			<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<li class="paginate_button ${pageMaker.cri.pageNum == num ? 'active' : '' }"><a href="${num }">${num }</a></li>
			</c:forEach>
			
			<c:if test="${pageMaker.next }">
				<li class="paginate_button next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
			</c:if>
		</ul>
		<form id="actionForm" action="${contextPath }/admin/noticeList.do" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }" />
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }" />
			<input type="hidden" name="join_startDate" value='<c:out value="${pageMaker.cri.join_startDate }" />'>
			<input type="hidden" name="join_endDate" value='<c:out value="${pageMaker.cri.join_endDate }"/>' >
			<input type="hidden" name="notice_type2" value='<c:out value="${pageMaker.cri.notice_type2 }"/>'>
			<input type="hidden" name="notice_title2" value='<c:out value="${pageMaker.cri.notice_title2 }"/>'>
		</form>
	</div>
</section>

<script type="text/javascript">
$(document).ready(function(){
	var actionForm = $("#actionForm");
$(".move").on("click",function(e){
	alert("상세");
	e.preventDefault();
	actionForm.append("<input type='hidden' name='notice_code' value='"+$(this).attr("value")+"'>");
	actionForm.attr("action", "${contextPath}/host/noticeDetail.do");
	actionForm.submit();
});
});

var searchVO = $("#searchVO");

$(".searchButton").on("click", function(e){
	alert("클릭");
	searchVO.find("input[name='pageNum']").val("1");
	
	searchVO.submit();
});
var actionForm = $("#actionForm");

$(".paginate_button a").on("click", function(e){
	e.preventDefault();
	console.log('click');
	
	actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	actionForm.submit();
});
</script>
</body>
</html>
