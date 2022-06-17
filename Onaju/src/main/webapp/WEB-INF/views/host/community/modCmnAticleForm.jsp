<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="goods"  value="${goodsMap.goods}"  />
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

function uploadImgPreview() {
	let fileInfo = document.getElementById("upImgFile").files[0];
	let reader = new FileReader();

    reader.onload = function() {
        document.getElementById("thumbnailImg").src = reader.result;
    };
	if( fileInfo ) {
        reader.readAsDataURL( fileInfo );
    }

}


	</script>

<style>
@charset "utf-8";

body {
	height: 100%;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.host_notice {
	width: 850px;
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
	margin: 30px 10px 30px 5px;
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
	width: 100%;
	height: 350px;
}

#bigTitle {
	background-color: #E8F0FE;
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
	position: relative;
	width: 850px;
}

.introduce_title {
	width: 100%;
	padding:20px;
	height: 70px;
	bottom: 800px;
}

.introduce_image {
    width: 100%;
    padding: 30px 250px 30px 250px;
    height: 250px;
    bottom: 750px;
}

.introduce_text {
	width: 100%;
	padding:0px 20px 20px 20px;
	bottom: -300px;
}

.noticeBtn2Box {
	position: relative;
	width: 850px;
	margin-left: 750px;
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

#bigTitle {
background-color: rgb(225,245,196);
	width: 100%;
	padding:10px 20px;
	height: 50px;
	font-size: 20px;
	font-weight: bold;
	border:1px solid #CCCCCC;
	border-radius:10px;
}


#smallTitle {
background-color: rgb(225,245,196);
	width: 100%;
	padding:7px 20px;
	height: 35px;
	font-size: 14px;
	font-weight: bold;
	border:1px solid #CCCCCC;
	border-radius:10px;
}

#thumbnailImg {
border-radius:15px;
	width: 100%;
	height: 100%;
}

#content {
background-color: rgb(225,245,196);

	width: 100%;
	padding: 20px;
	border:1px solid #CCCCCC;
	height: 200px;
	border-radius:10px;
}

#host_type {
	font-size: 24px;
	font-weight: bold;
	margin: 30px 0px 10px 10px;
	color: #7f9b75;
}

.commu_inform {
	width: 50%;
	height: 250px;
	display: inline-block;
	float: left;
	padding: 20px;
}

.commu_text {
text-align:center;
	width: 100%;
	height: 25px;
	margin:10px 0px;
	font-size: 14px;
	
}
.commu_text_input{
text-align:center;
width: 70%;
    padding: 0px 10px;
    float: left;
    font-family: inherit;
    font-size: 15px;
}
.commu_text_bold{font-weight: bold; width:30%;float:left;
}
</style>
<script>
function modArticleForm() {
	//변수에 담아주기
	var _bigTitle = document.getElementById("bigTitle");
	var _smallTitle = document.getElementById("smallTitle");
	var _upImgFile = document.getElementById("upImgFile");
	var _content = document.getElementById("content");

	if (_bigTitle.value == "") { 
		alert("제목을 입력해주세요.");
		_bigTitle.focus(); 
		return false; 
	}
	;
	

	if (_smallTitle.value == "") { 
		alert("소제목을 입력해주세요.");
		_smallTitle.focus(); 
		return false; 
	}
	;

	

	if (_content.value == "") { 
		alert("소개글 내용을 입력해주세요.");
		_content.focus(); 
		return false; 
	}
	;
	document.modArticle.submit(); 

}

</script>
</head>

<body>
	
<!-- 바디 시작 -->
				<section class="host_notice">
				<form id="introduce" name="modArticle" action="${contextPath}/host/community/modingCmnAticleForm.do?cmnNum=${hostCommunityVO.cmnNum}&room_code=${hostCommunityVO.room_code}" method="post" enctype="multipart/form-data" >
					<div class="host-title">
						<div class="host_contai">
							<h3>Life Style 글쓰기</h3>
						</div>
					</div>
					
					
					
					
					<div class="container2">
						<div class="bigInfo">
							<input type="text"  name="host_type" disabled id="host_type" value="${goods.host_type} 정보" style="margin-bottom:20px; width:100%;" >
<img src="${contextPath}/download.do?room_code=${goods.room_code}&fileName=${imageFileList[0].room_imageName}" style="width:45%; float:left;height:250px; border-radius:15px; display:inline-block;">
<div class="commu_inform"> 
<div class="commu_text"><i class="commu_text_bold">사업장 상호명 </i><input type="text"  name="hostInfo_name" disabled class="commu_text_input" value="${goods.hostInfo_name}" ></div>
<div class="commu_text"><i class="commu_text_bold">주소 </i><input type="text"  name="hostInfo_name" disabled class="commu_text_input" value="${goods.roadAddress}" ></div>
<div class="commu_text"><i class="commu_text_bold">객실번호 </i><input type="text"  name="hostInfo_name" disabled class="commu_text_input" value="${goods.room_number}" ></div>

</div>
										</div>
					</div>
					
	
					<div style="width:100%; height: 100%; border:1px solid #CCCCCC; border-radius:12px;cursor:pointer;background-color:#7f9b75;">
						
							<div class="introduce">
							<div class="introduce_title">
									<textarea id="bigTitle" name="bigTitle" placeholder="객실 제목을 작성해 주세요.">${hostCommunityVO.bigTitle}</textarea>
								</div>	
								<div class="introduce_title">
									<textarea id="smallTitle" name="smallTitle" placeholder="객실 소제목을 작성해 주세요.">${hostCommunityVO.smallTitle}</textarea>
								</div>	
								<div class="introduce_image">
									 <input type="file" style="display:none;"id="upImgFile" name="cmnImage" style="width:100%;height:100%;"onChange="uploadImgPreview();" accept="image/*">
									 <img id="thumbnailImg" src="${contextPath}/host/community/download2.do?room_code=${hostCommunityVO.room_code}&fileName=${hostCommunityVO.cmn_image}"
									  onclick="document.all.cmnImage.click()" onerror="this.onerror=null; this.src='${contextPath}/resources/image/addImage.svg';">
								</div>	
								<div class="introduce_text">
									<textarea name="content" id="content" name="content" placeholder="객실 소개글을 작성해 주세요">${hostCommunityVO.content}</textarea> 
								</div>
							</div>
							
							
							
							</div>
							
							
									<button type="button" class="noticeBtn2 btn-dark2" onClick="modArticleForm()">수정</button>
						
						
					</form>
					</section>			
										
		
</body>
</html>