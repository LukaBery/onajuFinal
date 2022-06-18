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
<title>게시판 (공지사항 등록)</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
.notice-row{
	display: flex;
}
.notice-row-2{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.notice-row-col1{
	width: 200px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	background-color: #EEEEEE; 
	display:flex; 
	align-items: center;
}
.notice-row-col2{
	width: 200px; 
	height: 450px; 
	border: 1px solid #E6E6E6; 
	background-color: #EEEEEE; 
	display:flex; 
	align-items: center;
}
.notice-row-col3{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.notice-row-col3{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: space-between;
}
.notice-row-col4{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.notice-row-col5{
	width: 940px; 
	height: 450px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.notice-row-col1 div{
	margin-left: 20px;
	font-weight: bold;
	color: #4D4D4D;
}
.notice-row-col2 div{
	margin-left: 20px;
	font-weight: bold;
	color: #4D4D4D;
}
.notice-row-col3 div{
	margin-left: 20px;
}
.notice-row-col4 div{
	margin-left: 20px;
}
.notice-row-col5 div{
	margin-left: 20px;
}
.notice-row-col5 div textarea{
	width:900px; 
	height:400px; 
	border: 1px solid #cccccc;
}
.notice-row-2 div{
	width: 150px; 
	height: 50px; 
	margin: 0px 5px 0px 5px;
}
.notice-row-2 div input{
	width: 150px; 
	height: 50px; 
	border-radius: 5px; 
	border: none; 
	background-color: #000033; 
	color: white;
}
.notice-row-2 div a{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	color: #ffffff;
	background-color: #ff3333;
	border-radius: 5px; 
	border: 1px solid #E6E6E6; 
	text-decoration: none;	
}
</style>
</head>
<body>
	<div>
		<form name="noticeForm" method="post" action="${contextPath }/admin/insertNotice.do" enctype="multipart/form-data">
			<div class="notice-con">
				<div class="notice-row">
					<div class="notice-row-col1"><div>제목</div></div>
					<div class="notice-row-col3"><div><input type="text" name="notice_title"  value="${noticeMap.notice_title }" maxlength="100" style="width: 900px;"></div></div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col1"><div>게시여부</div></div>
					<div class="notice-row-col4">
						<div>
							<input type="radio" value="Y" name="post_check" <c:out value='${noticeMap.post_check == "Y" ? "checked" : "" } '/> >게시&emsp;&emsp;&emsp;
							<input type="radio" value="N" name="post_check" <c:out value='${noticeMap.post_check == "N" ? "checked" : "" } '/> >미게시
						</div>
					</div>
					<div class="notice-row-col1"><div>유형</div></div>
					<div class="notice-row-col4">
						<div style="margin-left: 20px;">
							<select name="notice_type">
    							<option value="">유형 선택</option>
    							<option value="양식" <c:out value='${noticeMap.notice_type == "양식" ? "selected" : "" } '/> >양식</option>
    							<option value="안내" <c:out value='${noticeMap.notice_type == "안내" ? "selected" : "" } '/> >안내</option>
    							<option value="공고" <c:out value='${noticeMap.notice_type == "공고" ? "selected" : "" } '/> >공고</option>
							</select>
						</div>
					</div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col1"><div>공지 상단 노출</div></div>
					<div class="notice-row-col4">
						<div>
							<input type="radio" value="Y" name="topView_check" <c:out value='${noticeMap.topView_check == "Y" ? "checked" : "" } '/> />게시&emsp;&emsp;&emsp;
							<input type="radio" value="N" name="topView_check" <c:out value='${noticeMap.topView_check == "N" ? "checked" : "" } '/> />미게시
						</div>
					</div>
					<div class="notice-row-col1"><div>게시 채널</div></div>
					<div class="notice-row-col4">
						<div>
							<input type="radio" value="all" name="post_chennel" <c:out value='${noticeMap.post_chennel == "all" ? "checked" : "" } '/> >전체&emsp;&emsp;&emsp;
							<input type="radio" value="user" name="post_chennel" <c:out value='${noticeMap.post_chennel == "user" ? "checked" : "" } '/> >사용자&emsp;&emsp;&emsp;
							<input type="radio" value="host" name="post_chennel" <c:out value='${noticeMap.post_chennel == "host" ? "checked" : "" } '/> >사업주
						</div>
					</div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col1"><div>게시 기간</div></div>
					<div class="notice-row-col3"><div><input type="date" name="notice_startDate" value="${noticeMap.notice_startDate }">&emsp;~&emsp;<input type="date" name="notice_endDate" value="${noticeMap.notice_endDate }"></div></div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col1"><div>이미지 등록</div></div>
					<div class="notice-row-col3-img">
						<div><input type="file" name="file" id="file1" onchange="uploadFile()" /></div>
						<div id="img_name">${noticeMap.Org_File_Name }</div>
						<div><button type="button" id="file-delete">삭제</button></div>
					</div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col1"><div>첨부 파일</div></div>
					<div class="notice-row-col3"><div><input type="file"></div></div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col2"><div>내용</div></div>
					<div class="notice-row-col5"><div><textarea name="notice_content" rows="10" cols="65" maxlength="4000" required >${noticeMap.notice_content }</textarea></div></div>
				</div>
				<div>
					<div class="notice-row-2">
						<div><input type="submit" value="등록하기"></div>
						<div><a href="${contextPath }/admin/noticeList.do">취소</a></div>
					</div>
				</div>
			</div>
		</form>
	</div>
<script>

//이미지 유효성 검사
function uploadFile() {
    var fileVal = $("#file1").val();
    var maxSize = 5 * 1024 * 1024; // 10MB
    var fileSize = $("#file1")[0].files[0].size;
    
    //이미지 확장자 유효성 검사
    if( fileVal != "" ){
        var ext = fileVal.split('.').pop().toLowerCase(); //확장자분리
        //아래 확장자가 있는지 체크
        if($.inArray(ext, ['jpg','jpeg','gif','png']) == -1) {
        	$("#file1").val("");
          	alert('jpg,gif,jpeg,png 파일만 업로드 할수 있습니다.');
          return;
        };
    };
    //이미지 크기 유효성 검사
    if(fileSize > maxSize){
    	$("#file1").val("");
        alert("첨부파일 사이즈는 5MB 이내로 등록 가능합니다."); 
        return;
    };  
 };
</script>
<script type="text/javascript">
$(document).ready(function(){
	$("#file-delete").click(function(e){
		e.preventDefault();
		var delet_img = {Save_File_Name : "${noticeMap.Save_File_Name}", img_code : "${noticeMap.img_code}" };
		alert("진입");
		$.ajax({
			url:"${contextPath}/admin/imgDelete.do",
			type:"post",
			data: delet_img,
			success : function(data){
				if(data = "success"){
					alert("삭제");
					$("#file1").val("");
					$("div").remove('#img_name');
				}else{
					$("#file1").val("");
					$("div").remove('#img_name');
					alert("이미지 파일이 존재하지 않습니다.(DB에서 삭제)");
				}
			},
			error : function(textStatus){
				alert("통신 실패");
			}
		});
	});
});
</script>
</body>
</html>