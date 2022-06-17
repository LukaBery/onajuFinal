<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="goods"  value="${goodsMap.goodsVO}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.adminList-row{
	display: flex;
}
.adminList-row2{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.adminList-row-col1{
	width: 200px; 
	height: 50px; 
	border-bottom: 1px solid #ffffff; 
	background-color: #000033; 
	display:flex; 
	align-items: center;
}
.adminList-row-col2{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.adminList-row-col3{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
	border-bottom: none;
}
.adminList-row-col1 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
}
.adminList-row-col2 div{
	margin-left: 20px;
}
.adminList-row-col3 div{
	margin-left: 20px;
	color: #4D4D4D;
}
.adminList-row-col2 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.adminList-row-col2 div select{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.adminList-row-col3 div input{
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
}
.styled-table th, .styled-table td {
	padding: 12px 15px;
}
.styled-table tbody tr{
	border-bottom: 1px solid #dddddd;
}
.styled-table tbody tr:hover{
	background-color: #99CCFF;
}
.styled-table tbody tr:nth-of-type(even):hover{
	background-color: #99CCFF;
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
.memberList-row2{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.memberList-row2 div input{
	width: 100px; 
	height: 40px; 
	border-radius: 5px; 
	border: none; 
	background-color: #ff3333; 
	color: white;
	cursor: pointer;
}
.adminList-row-col3 div button{
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
			<article>
				<h3 class="mt-4"><strong>직원 관리</strong></h3>
			</article>
		</div>
	</section>
	<div>
		<div class="adminList-row">
			<div class="adminList-row-col1"><div>가입일자</div></div>
			<div class="adminList-row-col3"><div>시작날짜&emsp;<input type="date">&emsp;종료날짜&emsp;<input type="date">&emsp;<button>어제</button><button>오늘</button><button>1개월</button><button>사용안함</button></div></div>
		</div>
		<div class="adminList-row">
			<div class="adminList-row-col1"><div>상태</div></div>
			<div class="adminList-row-col2">
				<div>
					<select>
						<option value="">직원 상태</option>
						<option value="재직">재직</option>
						<option value="탈퇴">탈퇴</option>
					</select>
				</div>
			</div>
			<div class="adminList-row-col1"><div>직원 이름</div></div>
			<div class="adminList-row-col2"><div><input type="search"></div></div>
		</div>
		<div class="memberList-row2"><div><input type="submit"></div></div>
	</div>

	<div align="right">
		<div>드롭다운박스</div>
	</div>
	<section>
		<table class="styled-table">
  			<thead>
  				<tr height="10" align="center"  bgcolor="#EEEEEE" style="border: 1px solid #E6E6E6;">
     				<td >NO</td>
     				<td >아이디</td>  
     				<td >이름</td>            
     				<td >가입일</td>
     				<td >이메일</td>
     				<td >전화번호</td>
     				<td >상태</td>
  				</tr>
  			</thead>
			<c:choose>
  				<c:when test="${empty adminsList}" >		
    					<tr height="10">
      						<td colspan="9">
        						<p align="center">
           							<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        						</p>
      						</td>  
    					</tr>
  				</c:when>
				<c:when test="${!empty adminsList}" >
    				<c:forEach  var="admin" items="${adminsList }" varStatus="adminsNum" >		
     						<tr style="cursor: pointer;" onclick="location.href='${contextPath}/admin/adminDetail.do?a_id=${admin.a_id}'">
								<td width="6%">${adminsNum.count}</td>
								<td width="8%">${admin.a_id }</td>
								<td width="8%">${admin.a_name }</td>
								<td width="10%"><fmt:formatDate value="${admin.joinDate}" pattern="yyyy년MM월dd일" /></td>
								<td  width="8%">${admin.a_email1 }${admin.a_email2 }</td>     
								<td  width="8%">${admin.a_phone }</td>   
								<td  width="8%">${admin.del_yn }</td>   
							</tr>
    				</c:forEach>
				</c:when>
			</c:choose>
		</table>
	</section>
	<div>
		<c:forEach var="i" begin="1" end="${totalPage }">
			<a href="${contextPath }/admin/adminList.do?viewPage=${i}">${i }</a>
		</c:forEach>
	</div>
</body>
</html>