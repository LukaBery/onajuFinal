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
.host-search-1{
	display: flex;
}
.host-row-col1{
	width: 200px;
	height: 50px;
	border: 1px solid #E6E6E6; 
	color: #ffffff;
	background-color: #000033; 
	display:flex; 
	align-items: center;
}
.host-row-col2{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6;
	display:flex; 
	align-items: center;

}
.memberList-row2{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.memberList-row2 div button{
	width: 100px; 
	height: 40px; 
	border-radius: 5px; 
	border: none; 
	background-color: #ff3333; 
	color: white;
}
.host-row-col1 div{
	margin-left: 20px;
}
.host-row-col2 div{
	margin-left: 20px;
}
.host-row-col2 div input{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.styled-table{
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0 0.15); 
	width: 100%;
}
.styled-table thead tr{
	background-color: #000033;
	color: #ffffff;
	text-align: left;
}
.styled-table thead tr td{
	font-size: 14px;
	border: 1px solid #ffffff;
}
.styled-table th, .styled-table td {
	padding: 12px 15px;
}
.styled-table tbody tr{
	border-bottom: 1px solid #dddddd;
	font-size: 13px;
}
.styled-table tbody tr:nth-of-type(even){
	background-color: #f3f3f3;
}
.styled-table tbody tr:nth-of-type{
	border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row{
	font-weight: bold;
	color: #009879;
}
.host-row-col2 div button{
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
	<section style="display: inline-block; float: left;">
<div class="container-fluid px-4" style="margin: 15px 0px 15px 0px;">
<article><h3 class="mt-4"><strong>매출 관리</strong></h3></article>
</div>
<article>

<div>
<form>	
	<div class="host-search-1">
			<div class="host-row-col1"><div>가입일자</div></div>
			<div class="host-row-col2"><div>시작날짜 <input type="date"> 종료날짜 <input type="date"> <button>어제</button><button>오늘</button><button>1개월</button><button>사용안함</button></div></div>
		</div>
	<div class="memberList-row2">
	<div>
		<button>조회</button>
	</div>
	</div>
</form>
	<div align="right">
		<div>드롭다운박스</div>
	</div>
</div>
</article>
	<form>
		<table class="styled-table">
			<thead>
  				<tr>
     				<td colspan="2">날짜</td>
     				<td colspan="2">결제</td>
     				<td colspan="2">수수료</td>  					
     				<td colspan="2">환불</td>				
  				</tr>
  				<tr>
     				<td colspan="2">날짜</td>
     				<td>결제자수</td>
     				<td>결제금액</td>
     				<td>수수료</td>
     				<td>수수료</td>
     				<td>환불건수</td>
     				<td>환불금액</td>	
  				</tr>
  			</thead>
			<c:choose>
  				<c:when test="${empty reviewsList}" >
    				<tr  height="10">
      					<td colspan="11">
        					<p align="center">
           						<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        					</p>
      					</td>  
    				</tr>
  				</c:when>
  				<c:when test="${!empty reviewsList}" >
    				<c:forEach  var="review" items="${reviewsList }" varStatus="reviewNum" >
     					<tr>
				  			<td colspan="2"></td>
				  			<td></td>
				  			<td></td>
				  			<td></td>
				  			<td></td>
				  			<td></td>
				  			<td></td>
						</tr>	
    				</c:forEach>
     			</c:when>
    		</c:choose>
		</table>
	</form>
</section>


<section>

</section>
</body>
</html>