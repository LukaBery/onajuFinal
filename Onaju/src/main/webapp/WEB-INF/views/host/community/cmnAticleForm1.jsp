<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="hostInfoList"  value="${hostInfoList}"  />
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>


<script type="text/javascript">

	
</script>

<style>

*{
	margin:0; padding:0;
	font-size:15px; 
}

/* 테이블쪽 디자인 */
table {
	border-collapse: collapse;
	border-spacing: 0;
} 

section.host_notice {
	width : 850px;
	padding: 0 auto;
	height: 1500px;
	margin: 0px 0px 0px 70px;
}

.page-title {
	margin-bottom: 60px;
}

.host-title h3 {
	font-size: 30px;
	color: #7f9b75;
	font-weight: 570;
	text-align: center;
	margin: 50px 0 50px 0;
}

.board-table {
	color:#403e3f;
	font-size: 14px;
	width: 100%;
	border-top: 1px solid #cbdea6;
	border-bottom: 1px solid #cbdea6;
	margin: 115px 0px 0px 0px;
}

.board-table a {
	color: #403e3f;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.board-table a:hover {
	text-decoration: underline;
}

.board-table th {
	text-align: center;

}

.board-table .th-num {
	
	/* width: 100px; */
	text-align: center;
}



.board-table th, .board-table td {
	padding: 5px 0 5px 5px;
	border : 1px solid #cbdea6;
}

.board-table tbody td {
	border-top: 1px solid #cbdea6;
	text-align: center;
}

.board-table tbody th {
	padding-left: 28px;
	padding-right: 14px;
	border-top: 1px solid #cbdea6;
	text-align: left;
}

.board-table tbody th p {
	display: none;
}

.noticeBtn {
	display: inline-block;
	padding: 0 30px;
	font-size: 15px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark {
	background: #7f9b75;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #cbdea6;
	border-color: #cbdea6;
	color: #fff;
}

.noticeBtn2 {
	width: 108px;
	padding: 0;
	font-weight: 400;
}
.noticeBtn2 {
	display: inline-block;
	padding: 5px 30px;
	margin: 30px 0 30px 650px;
	font-size: 16px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark2 {
	background: #7f9b75;
	color: #fff;
}

.btn-dark2:hover, .btn-dark2:focus {
	background: #cbdea6;
	border-color: #cbdea6;
	color: #fff;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.host_contai {
	width: 750px;
	margin: 0 auto;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

/* 테이블쪽 디자인 */


ul{list-style:none;}

.tabmenu{ 
	max-width:750px; 
	margin: 0 auto; 
	position:relative; 
}
.tabmenu ul li{
	display:  inline-block;
	width:33.3%; 
	float:left;  
	text-align:center; 
	background :#f9f9f9;
	line-height:40px;
}

.tabmenu input {
	font-size: 15px;
	
	}

.tabmenu .tabSelect{
	display:none;
	}

.tabCon{
	width:750px;
	display:none; 
	text-align:left; 
	padding: 20px;
	position:absolute; 
	left:0; top:40px; 
 	box-sizing: border-box; 
	border : 5px solid #f9f9f9;
}

.tabmenu .tabRoom{
	display:block;
	width:100%; 
	height:40px;
	line-height:40px;
	border: 1px solid #f9f9f9;
	background: #cbdea6;
	color:#403e3f;
  
}
.tabmenu .tabSelect:checked ~ .tabRoom{
	background:#7f9b75;
	color: #fff;
	border: 1px solid #fff;
}
.tabmenu .tabSelect:checked ~ .tabCon{
	display:block;
}

.tabmenu .roomSelect {
	border: 1px solid #7f9b75;
    font-size: 15px;
    height: 28px;
    padding: 1px;
    width: 160px;
    float: left;
    text-align: left;

}
.tabmenu #content {
	min-height:150px;
	font-size:15px;
	
}

.option_check {
	background: #fff;
    color:#403e3f;
    width: 15px;
    margin-right: 10px;

}


.noticeBtn2Box {
	float: right;
}


.image_button {
	width:70px;
	}




#kingpreview {
	border:0px;
	width:400px;
	height:200px;
}



</style>

</head>
<body>

<section class="host_notice">
<form name="addNewGoods" action="${contextPath}/host/community/cmnAticleForm1_2.do" method="post" >
					<div class="host-title">
						<div class="host_contai">
							<h3>Life Style 사업장 정보 등록</h3>
						</div>
					</div>
					

<input type="hidden" name="h_id" value="${hostInfo.h_id }">
						
							<table class="board-table">
								<colgroup>
					            	<col width="25%"/>
									<col width="auto"/>
								</colgroup>
									<thead>
									
									
										<tr>
											<th class="th-date">사업장 일련번호</th>
											<td class="td-date-writer" >
												<select class="roomSelect" name="h_code">
													
														<c:forEach var="list" items="${hostInfoList}"> 
															<option class="roomOption"  value="${list.h_code}">${list.h_code}
															
													</option>
												     </c:forEach> 
												</select>
											</td>
										</tr>
									
									
										<tr>
											<th class="th-date">사업장 상호명</th>
											<td class="td-date-writer" >
												<select class="roomSelect" > <!-- name="hostInfo_name" -->
													
														<c:forEach var="list" items="${hostInfoList }">
															<option class="roomOption" value="${list.hostInfo_name}">${list.hostInfo_name}
													</option>
												    </c:forEach>
												</select>
											</td>
										</tr>
										
										
										
									</thead>
							</table>	
								<div class="noticeBtn2Box">
									
									<button type="submit" class="noticeBtn2 btn-dark2">다음</button>
								</div>
			</form>
</section>