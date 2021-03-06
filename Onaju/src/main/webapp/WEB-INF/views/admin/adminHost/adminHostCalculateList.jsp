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
	border-bottom: none;
	color: #ffffff;
	background-color: #000033; 
	display:flex; 
	align-items: center;
}
.host-row-col2{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6;
	border-bottom: none; 
	display:flex; 
	align-items: center;
	border-bottom: none;
}
.host-row-col3{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	border-bottom: none;
	display:flex; 
	align-items: center;
}
.host-row-col4{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.host-row-col1 div{
	margin-left: 20px;
}
.host-row-col2 div{
	margin-left: 20px;
}
.host-row-col3 div{
	margin-left: 20px;
}
.host-row-col4 div{
	margin-left: 20px;
}
.host-row-col2 div input{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;	
}
.host-row-col3 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.host-row-col3 div select{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.host-row-col4 div input{
	width: 330px;
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

<div class="container-fluid px-4" style="margin: 15px 0px 15px 0px;">
<article><h3 class="mt-4"><strong>?????? / ?????? ??????</strong></h3></article>
</div>
<article>

<div>
	<form>
		<div class="host-search-1">
			<div class="host-row-col1"><div>????????????</div></div>
			<div class="host-row-col2"><div>???????????? <input type="date"> ???????????? <input type="date"> <button>??????</button><button>??????</button><button>1??????</button><button>????????????</button></div></div>
		</div>
		<div class="host-search-1">
			<div class="host-row-col1"><div>??????</div></div>
			<div class="host-row-col3"><div><select><option value="">??????</option><option value="????????????">????????????</option><option value="????????????">????????????</option></select></div></div>
			<div class="host-row-col1"><div>????????????</div></div>
			<div class="host-row-col3"><div><input type="text" name="hostInfo_name"></div></div>
		</div>
		<div class="host-search-1">
			<div class="host-row-col1"><div>?????????</div></div>
			<div class="host-row-col3"><div><input type="text" name="h_id"></div></div>
			<div class="host-row-col1"><div>????????????</div></div>
			<div class="host-row-col3"><div><input type="text" name="h_name"></div></div>
		</div>
		<div class="host-search-1">
			<div class="host-row-col1"><div>??????</div></div>
			<div class="host-row-col4"><div><input type="text" name="roadAddress"></div></div>
			<div class="host-row-col1"><div>?????????????????????</div></div>
			<div class="host-row-col4"><div><input type="text" name="h_sellerNum"></div></div>
		</div>
		<div class="memberList-row2">
			<div><button type="submit">??????</button></div>
		</div>
	</form>
	<div align="right">
		<div>??????????????????</div>
	</div>
</div>
</article>
	<table class="styled-table" >
		<thead>
  			<tr>
    			<td >NO</td>
    			<td >??????</td>  
     			<td >???????????????</td>            
     			<td >?????? ??????</td>
     			<td >????????????</td>
     			<td >ID</td>
     			<td >????????????</td>
     			<td >???????????????</td>
     			<td >??????</td>
     			<td >????????????</td>
  			</tr>
  		</thead>
	<c:choose>
  	<c:when test="${empty hostList}" >
    	<tr  height="10">
    		<td colspan="11">
    			<p align="center">
        			<b><span style="font-size:9pt;">????????? ?????? ????????????.</span></b>
        		</p>
      		</td>  
    	</tr>
  	</c:when>
  	<c:when test="${!empty hostList}" >
    	<c:forEach  var="host" items="${hostList }" varStatus="hostNum" >
    		<tr>
				<td width="5%">${hostNum.count}</td>
				<td width="6%">${host.del_yn}</td>
				<td width="10%"><fmt:formatDate value="${host.joinDate}" pattern="yyyy???MM???dd???" /></td>
				<td width="10%"><fmt:formatDate value="${host.joinDate}" pattern="yyyy???MM???dd???" /></td>
				<td width="8%">${host.h_name}</td>
				<td width="8%">${host.h_id }</td>   
				<td width="8%">${host.h_name }</td>   
				<td width="8%">${host.h_phone}</td>   
				<td width="8%">${host.roadAddress }</td>   
				<td width="7%">${host.del_yn}</td>    
			</tr>
    	</c:forEach>
     </c:when>
    </c:choose>
</table>



<section>

</section>
</body>
</html>