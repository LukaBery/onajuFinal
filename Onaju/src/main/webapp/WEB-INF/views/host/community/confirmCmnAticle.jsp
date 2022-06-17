<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="imageFileList"  value="${goodsMap.imageFileList}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Life Style 글쓰기</title>
<script src="http://madalla.kr/js/jquery-1.8.3.min.js"></script>

<script type="text/javascript">

function readURL(input,preview) {
	   //  alert(preview);
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $('#'+preview).attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	  }  



	
$(function () {
    var n = 0;
    var pos = 0;
    setInterval(function () {
        n = n + 1;
        pos = -1 * 896 * n;
        $(".slider ul").animate({ "left": pos }, 300, function () {
            if (n == 3) {
                n = 0;
                pos = 0;
                $(".slider ul").css({ "left": pos });
            }
        });
    }, 3000);
});
	</script>

<style>
@charset "utf-8";
body{
height:100%;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.host_notice {
	width: 850px;
	height:2450px; /* 삭제할 것 */ 
	padding: 0 auto;
	margin: 30px 75px 30px 75px;
}

.page-title {
	margin-bottom: 60px;
}

.host-title h3 {
	width: 850px;
	font-size: 30px;
	color: #7f9b75;
	font-weight: 570;
	text-align: center;
}

.detail-table {
	color: #5d605c;
	font-size: 14px;
	width: 850px;
	border: 1px solid #f2ffd9;
	background-color: #f2ffd9;
	margin: 40px 0px 0px 0px;
}

.detail-table a {
	color: #403e3f;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.detail-table a:hover {
	text-decoration: underline;
}

.detail-table th {
	text-align: left;
}

.td-date-writer {
	text-align: left;
}

.detail-table .th-num {
	width: 100px;
	text-align: center;
}

.detail-table .th-date {
	width: 200px;
}

.detail-table th {
	padding: 10px 0;
}

.detail-table td {
	padding: 10px 0;
}





.noticeBtn2 {
	display: inline-block;
	padding: 5px 30px;
	margin: 30px 50px 0px -15px;
	font-size: 16px;
	font-weight: 400;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	touch-action: manipulation;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	border-radius: 0;
	transition: all 0.3s;
}

.btn-dark2 {
	background: #7f9b75;
	color: #fff;
	cursor: pointer;
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


/*-------------------------------------------------------------------------------------------------------------*/
/* 슬라이드바 */
ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

.container1 {
	width: 850px;
	margin-top: 35px;
}

.slider {
	position: relative;
	width: 850px;
	height: 550px;
	overflow: hidden;
}

.slider ul {
	position: absolute;
	left: 0;
	top: 0;
	width: 3584px;
	height: 597px;
}

.slider li {
	float: left;
	width: 896px;
	height: 597px;
}

.slider li img {
	width: 850px;
	height: 550px;
}

.roomSelect {
	font-size: 22px;
	font-weight: bold;
	color: #5d605c;
}

.container2 {
	width: 850px;
}

.bigInfo {
	width: 850px;
	height: 240px;
}

#bigTitle {
	width: 842px;
	height: 50px;
	font-size: 25px;
	font-weight: bold;
}

.h_profile {
	display: block;
	width: 850px;
	height: 100px;
	margin: 30px 0px 0px 0px;
}
#introduce {
	position:relative;
	width:850px;
}
.introduce_title {
    position: absolute;
    width: 850px;
    height: 70px;
    bottom: -100px;
}
.introduce_image {
	position: absolute;
    width: 850px;
    height: 700px;
    bottom: -850px;
}
.introduce_text {
	position: absolute;
    width: 850px;
    bottom: -1220px;
}

.noticeBtn2Box {
	position: relative;
    width: 850px;
    margin-left: 638px;
    margin-top: 850px;
    top: 400px;
}
#profile {
	position: relative;
	border-radius: 50px;
	width: 80px;
	height: 80px;
}

#hostid {
	position: absolute;
	display: inline-block;
	width: 300px;
	height: 80px;
	font-size: 22px;
	font-weight: bold;
	color: #5d605c;
	margin: 25px 0px 0px 20px;
}


#smallTitle {
	width: 842px;
    height: 70px;
    font-size: 20px;
    font-weight: bold;
}

#thumbnailImg{
	position:absolute;
	width: 700px;
	height: 750px;
	top: 200%;
    left: 10%;
}
#content{	
	width: 850px;
	height: 200px;
	
}
#host_type{
	font-size: 24px;
    font-weight: bold;
    margin: 30px 0px 10px 10px;
    color: #7f9b75;
}
#cmnImg{
	width: 100%;
    height: 800px;
}
</style>

</head>

<body>
	
<!-- 바디 시작 -->
				<section class="host_notice">
				<form id="introduce" >
					<div class="host-title">
						<div class="host_contai">
							<h3>Life Style 게시글</h3>
						</div>
					</div>
					
					<div class="container1">
				       
				           
				          
						        
						        <div class="slider">
						      	  <ul>
						      	  <c:forEach var="list" items="${imageFileList }">
						      	  	<li class="active">
									<img src="${contextPath}/download.do?room_code=${hostCommunityVO.room_code}&fileName=${list.room_imageName}">
									</li>
								 </c:forEach>
				           
								 </ul>
								</div>
				        </div>
 					
					
					
					<div class="container2">
						<div class="bigInfo">
							<input type="text"  name="host_type" disabled id="host_type" value="${hostCommunityVO.host_type}" >
							<input type="text" id="bigTitle" name="bigTitle" disabled value="${hostCommunityVO.bigTitle}"/>
							<div class="h_profile">
								<img id="profile" src="https://g-grafolio.pstatic.net/20190525_229/15587582702938v22E_JPEG/20190330-IMG_5851.jpg?type=w896_2" alt="프로필이미지">
								<p id="hostid">${hostCommunityVO.h_id}</p>
							</div>
						</div>
					</div>
					
					<div class="container3">
						<div class="detail">
							
								<table class="detail-table">
									<colgroup>
						            	<col width="14%"/>
										<col width="19%"/>
										<col width="10%"/>
									</colgroup>
									<thead>
										<tr>
											<th class="th-date">사업장 상호명 </th>
											<td class="td-date-writer" >
											<input type="text"  name="hostInfo_name" disabled id="hostInfo_name" value="${hostCommunityVO.hostInfo_name}" >
											
											</td>
											<th scope="col" class="th-writer">주소</th>
											<td class="td-date-writer" colspan="2">
											<input type="text"  name="hostInfo_name" disabled id="hostInfo_name" value="${hostCommunityVO.roadAddress}" >
											
											
											</td>
										</tr>
										
										<tr>
										<th class="th-title">상호명</th>
										<td class="notice_title">
										<input type="text"  name="title" disabled id="title" value="${hostCommunityVO.title}" >
											
										</td>
										<th class="th-title">객실타입</th>
										<td class="notice_title">
											<input type="text"  name="room_type" disabled id="room_type" value="${hostCommunityVO.room_type}" >
											
										</td>
										<th class="th-title">객실번호</th>
										<td class="notice_title">
										<input type="text"  name="room_number" disabled id="room_number" value="${hostCommunityVO.room_number}" >
										</td>
									</tr>
									<tr>
										
										<th class="th-title">객실요금</th>
										<td class="notice_title">
										<input type="text"  name="room_fee" disabled id="room_fee" value="${hostCommunityVO.room_fee}" >
											
										</td>
										<th class="th-title">입실 시간</th>
										<td class="notice_title">
										<input type="text"  name="able_checkIn"  disabled id="able_checkIn" value="${hostCommunityVO.able_checkIn}" >
											 
										</td>
										<th class="th-title">퇴실 시간</th>
										<td class="notice_title">
										<input type="text"  name="able_checkOut" disabled  id="able_checkOut" value="${hostCommunityVO.able_checkOut}" >
										</td>
									<tr>	
										<th class="th-title">최소 인원</th>
										<td class="notice_title">
										<input type="text"  name="min_number" disabled id="min_number" value="${hostCommunityVO.min_number}" >
											
										</td>
										<th class="th-title">최대 인원</th>
										<td class="notice_title">
										<input type="text"  name="max_number" disabled id="max_number" value="${hostCommunityVO.max_number}" >
											 
										</td>
									</tr>
									</thead>
								</table>
									
						</div>
					</div>
					
					<div class="container4">
						
							<div class="introduce">
								<div class="introduce_title">
									<textarea id="smallTitle" name="smallTitle" disabled>${hostCommunityVO.smallTitle}</textarea>
								</div>	
								<div class="introduce_image">
									<img id="cmnImg" src="${contextPath}/host/community/download2.do?room_code=${hostCommunityVO.room_code}&fileName=${hostCommunityVO.cmn_image}">
								</div>	
								<div class="introduce_text">
									<textarea name="content" id="content" name="content" disabled>${hostCommunityVO.content}</textarea> 
								</div>
							</div>
					</div>
					</form>
					<div class="noticeBtn2Box">
								<a href="${contextPath}/host/community/modCmnAticleForm.do?cmnNum=${hostCommunityVO.cmnNum}&room_code=${hostCommunityVO.room_code}"><button class="noticeBtn2 btn-dark2" >수정</button></a>
								<a href="${contextPath}/host/community/deleteHostCommunity.do?cmnNum=${hostCommunityVO.cmnNum}"><button class="noticeBtn2 btn-dark2">삭제</button></a>
									
							</div>
					</section>			
										
		
</body>
</html>