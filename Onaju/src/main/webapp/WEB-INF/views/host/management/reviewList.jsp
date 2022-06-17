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
<title>호스트 리뷰 관리</title>
<!-- <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(function () {
    var tab_Btn = $(".tab_btn > ul > li");
    var tab_Cont = $(".tab_cont > ul");
    tab_Cont.hide().eq(0).show();
    tab_Btn.click(function (e) {
         e.preventDefault();
         var target = $(this);
         var index = target.index();
         tab_Btn.removeClass("active");
         target.addClass("active");
         tab_Cont.hide();
         tab_Cont.eq(index).show();
    });
});

</script>
 -->

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
	width : 800px;
	padding: 0 auto;
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
	padding: 14px 0;
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
  width:50%; 
  float:left;  
  text-align:center; 
  background :#f9f9f9;
  line-height:40px;
}
.tabmenu label{
  display:block;
  width:100%; 
  height:40px;
  line-height:40px;
}
.tabmenu input{display:none;}

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

.tabmenu input:checked ~ label{
  background:#ccc;
}
.tabmenu input:checked ~ .tabCon{
  display:block;
}

.tab_menu a:hover {
	color: orangered;
}
.tabmenu input:checked ~ label{
  background:#ccc;
}
.tabmenu input:checked ~ .tabCon{
  display:block;
}

</style>

</head>
<body>
<section class="host_notice">
					<div class="host-title">
						<div class="host_contai">
							<h3>리뷰 내역</h3>
						</div>
					</div>

	<div class="tabmenu">
		<ul>
			<li id="tab1" class="btnCon">
					<input type="radio" checked	name="tabmenu" id="tabmenu1"> 
					<label for="tabmenu1">댓글 작성한 리뷰</label>
						 <div class="tabCon">
							 <table class="board-table">
								<colgroup>
					            	<col width="10%" />
									<col width="auto"/>
									<col width="10%"/>
									<col width="10%"/>
									<col width="10%"/>
									<col width="10%"/>
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="">번호</th>
										<th scope="col" class="">객실명</th>
										<th scope="col" class="">제목</th>
										<th scope="col" class="">별점</th>
										<th scope="col" class="">작성일</th>
										<th scope="col" class="">답변</th>
									</tr>
								</thead>

								<tbody>
									<c:choose>
										<c:when test="${empty articlesList}">
											<tr>
												<td colspan="7">
													<p>
														<b><span>등록된 글1이 없습니다.</span></b>
													</p>
												</td>
											</tr>
										</c:when>
										<c:when test="${empty articlesList}">
											<c:forEach var="article" items="${articlesList}"
												varStatus="articleNum">
												<tr>
													<td>${articleNum}</td>
													<td><span></span> <c:choose>
															<c:when test='${article.level>1}'>
																<c:forEach begin="1" end="${article.level}" step="1">
																	<span></span>
																</c:forEach>
																<span>답변</span>
																<a class='cls1'
																	href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
															</c:when>
															<c:otherwise>
																<a class='cls1'
																	href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
															</c:otherwise>
														</c:choose></td>
													<td>${article.id}</td>
													<td><tmt:formatDate value="${article.writeDate}" /></td>
												</tr>
											</c:forEach>
										</c:when>
									</c:choose>
								</tbody>
							</table>
						</div>
					<!-- </div> -->
				
			</li>
			<li id="tab2" class="btnCon">
					<input type="radio" name="tabmenu" id="tabmenu2"> 
					<label for="tabmenu2">댓글 작성할 리뷰</label>
						 <div class="tabCon">
							<table class="board-table">
										<colgroup>
							            	<col width="10%" />
											<col width="auto"/>
											<col width="10%"/>
											<col width="10%"/>
											<col width="10%"/>
											<col width="10%"/>
									</colgroup>
								<thead>
									<tr>
										<th scope="col" class="">번호</th>
										<th scope="col" class="">객실명</th>
										<th scope="col" class="">제목</th>
										<th scope="col" class="">별점</th>
										<th scope="col" class="">작성일</th>
										<th scope="col" class="">답변</th>
									</tr>
								</thead>

								<tbody>
									 <c:choose>
										<c:when test="${empty articlesList}">
											<tr>
												<td colspan="7">
													<p>
														<b><span>등록된 글2이 없습니다.</span></b>
													</p>
												</td>
											</tr>
										</c:when>
										<c:when test="${empty articlesList}">
											<c:forEach var="article" items="${articlesList}"
												varStatus="articleNum">
												<tr>
													<td>${articleNum}</td>
													<td><span></span> <c:choose>
															<c:when test='${article.level>1}'>
																<c:forEach begin="1" end="${article.level}" step="1">
																	<span></span>
																</c:forEach>
																<span>답변2</span>
																<a class='cls1'
																	href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
															</c:when>
															<c:otherwise>
																<a class='cls1'
																	href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
															</c:otherwise>
														</c:choose></td>
													<td>${article.id}</td>
													<td><tmt:formatDate value="${article.writeDate}" /></td>
												</tr>
											</c:forEach>
										</c:when>
									</c:choose> 
								</tbody>
							</table>
						</div> 
			</li>
		</ul>
	</div>
	</section>
</body>
</html>