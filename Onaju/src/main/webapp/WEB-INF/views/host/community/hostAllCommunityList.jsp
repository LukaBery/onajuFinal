<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Style 목록</title>
<style>
@charset "utf-8";
table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.host_notice {
	width : 900px;
	padding: 0 auto;
	margin-left: 50px;
}

.page-title {
	margin-bottom: 60px;
}

.host-title h3 {
	font-size: 30px;
	color: #7f9b75;
	font-weight: 570;
	text-align: center;
}

#noticeBoard-search .noticeSearch-window {
	padding: 15px 0;
	background-color: #f9f7f9;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 564px;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap input {
	height: 28px;
	width: 100%;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #cbdea6;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap input:focus {
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap .noticeBtn {
	position: absolute;
	right: -30px;
	top: 0;
	bottom: 0;
	width: 108px;
	padding: 0;
	font-size: 16px;
}

.board-table {
	color:#403e3f;
	font-size: 14px;
	width: 100%;
	border-top: 1px solid #cbdea6;;
	border-bottom: 1px solid #cbdea6;;
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
	padding: 10px 0;
	border-top: 1px solid #cbdea6;
    text-align: center;
    color:#403e3f;
}

.board-table tbody td {
	border-top: 1px solid #cbdea6;
	text-align: center;
	 color:#403e3f;
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
	display: inline-block;
    margin: 30px 0px 0px 750px;
    font-size: 16px;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 1px solid transparent;
    text-transform: uppercase;
    -moz-border-radius: 0;
    border-radius: 0;
    -moz-transition: all 0.3s;
    -ms-transition: all 0.3s;
    -o-transition: all 0.3s;
    transition: all 0.3s;
    width: 100px;
    height: 30px;
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
	width: 850px;
	margin: 0 auto;
	margin: 50px 0px 50px 0px;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}
.markSelect {
	border: 1px solid #7f9b75;
	font-size: 14px;
	height: 25px;
	padding: 1px;
	width: 250px;
	float:left;
	text-align: left;

}

.host_title {
	text-align: left;
}


.markOption{
	font-size: 14px;
	height: 25px;
	color:#403e3f;

}

.file_input{
	margin: 5px;
    font-size: 13px;
    
}
.newCmn{
margin:0px 0px 0px 0px;
}

#page_wrap {
	margin: 10px auto 50px;
	padding: 0px;
	width: 400px;
}

ul#page_control {
	list-style: none;
	padding: 0px;
	font-size: 11px;
}

ul#page_control li {
	padding: 0px 5px;
	float: left;
	color:#7f9b75;
}

ul#page_control li a {
	padding: 2px 5px;
	border: 1px solid rgb(204, 204, 204);
	border-radius:3px;
	border-image: none;
	display: block;
	color:#7f9b75;
}

ul#page_control li a:hover {
	border: 1px solid #edbc40;
	border-image: none;
	color: #edbc40;
}

ul#page_control li a.no_border {
	border: currentColor;
	border-image: none;
	padding-top: 3px;
	color: #7f9b75;
}

.active {
	color: rgb(255, 0, 0);
	font-weight: bold;
	font-size: 0.8em;
}

ul #page_control li .page_contrl_active {
	background: rgb(255, 255, 255);
	border: 1px solid #edbc40;
	border-image: none;
	color: #edbc40;
}
</style>
</head>

<body>
	<!-- 바디 시작 -->
	<section class="host_notice">
		<div class="host-title">
			<div class="host_contai">
				<h3>List Style 목록</h3>
			</div>
		</div>

		<!-- board seach area -->
		<div id="noticeBoard-search">
						<!-- board list area -->
				<div id="host_notice-list">
					<div class="host_contai">
						<table class="board-table">
							<colgroup>
								<col width="5%" />
								<col width="10%" />
								<col width="5%" />
								<col width="20%" />
								<col width="10%" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="">NO.</th>
									<th scope="col" class="">상호 명</th>
									<th scope="col" class="">객실 번호</th>
									<th scope="col" class="">제목</th>
									<th scope="col" class="">작성 날짜</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${empty hostAllCommunityList}">
										<tr>
											<td colspan="5">
												<p>
													<b><span>작성한 게시글이 없습니다.</span></b>
												</p>
											</td>
										</tr>
									</c:when> 
									<c:when test="${!empty hostAllCommunityList}">
										<c:forEach var="list" items="${hostAllCommunityList}">
											<tr>
												<td>${list.cmnNum}</td>
												<td>${list.hostInfo_name}</td>
												<td>${list.room_number}</td>
												<td><a href="${pageContext.request.contextPath}/host/community/confirmCmnAticle.do?cmnNum=${list.cmnNum}&room_code=${list.room_code}">${list.bigTitle}</a></td>
												<td><fmt:formatDate pattern="yyyy년MM월dd일 hh:mm" value="${list.creDate}"/></td>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose>
							</tbody>
						</table>
						<div id="page_wrap">
							<ul id="page_control">
								<li><a class="no_border" href="#">Prev</a></li>
								<c:set var="page_num" value="0" />
								<c:forEach var="count" begin="1" end="10" step="1">
									<c:choose>
										<c:when test="${count==1 }">
											<li><a class="page_contrl_active" href="#">${count+page_num*10 }</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="#">${count+page_num*10 }</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<li><a class="no_border" href="#">Next</a></li>
							</ul>
						</div>
							<div>
								<a id="newCmn" href="${contextPath}/host/community/cmnAticleForm1.do"><button type="submit" class="noticeBtn2 btn-dark2">새 글쓰기</button></a>
							</div>
					</div>
				</div>
				</div>
	</section>
	<!-- 바디 섹션 -->

</body>
</html>