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
<title>고객센터</title>

<style>


table {
  border-collapse: collapse;
  border-spacing: 0;
}
.one-on-one-notice {
  /* padding: 80px 0; */
  width: 800px;
  /* margin: 0 auto; */
  position: inherit;
  display: inline-block;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

#board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrap {
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 80%;
  max-width: 564px;
}
#board-search .search-window .search-wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board-search .search-window .search-wrap .btn {
  position: absolute;
  right: 0;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
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
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

.btn_0 {
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

.btn_0-dark {
  background: #FC4E82;
  color: #fff;
}

.btn_0-dark:hover, .btn_0-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn_0-dark {
  background: #FC4E82;
  color: #fff;
}

.btn_0-dark:hover, .btn_0-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.one-on-one-container {
  width: 800px;
  /* margin: 0 auto; */
  position: relative;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}



버튼 css 수정할 것
.btn42 {
  width: 108px;
  background: #FC4E82;
  color: #fff;  
  font-size: 15px;
  font-weight: 400px;
  text-align: center;
  border: 1px solid transparent;
  float:right;
}
.customer-help-sidebar {
        width: 300px;
        height: 100%;
        position: sticky;
        text-align: center;
        padding-top: 5%;
        float: left;
        display: inline-block;
      }
.customer-notice {
        width: 200px;
        height: 80px;
        display: inline-block;
      }
.customer-help-side-button {
        color: rgb(252,78,130);
        font-weight: 600;
        box-sizing: border-box;
        text-align: center;
        font-size: 15px;
        padding: 14px 40px;
        background-color: white;
        border-radius: 10px;
        border: 1px solid rgb(252,78,130);
        width: 200px;
      }
.customer-QnA {
        width: 200px;
        height: 80px;
        display: inline-block;
      }
 .hb_section_total {
        width: 1100px;
        height: 100%;
      }
hr{
border: 1px solid #CCCCCC;
}
.hb_section_1 {
	display: inline-block;
	width: 800px;
	height: 70px;
	float:center;
}

.hb_section_2 {
	display: inline-block;
	width: 800px;
	height: 70px;
	float:center;
}

.hb_section_3 {
	display: inline-block;
	width: 800px;
	height: 70px;
	float:center;
}

.hb_section_4 {
	display: inline-block;
	width: 800px;
	height: 50px;
	float:center;
}

.hb_section_5 {
	display: inline-block;
	width: 800px;
	height: 400px;
	float:center;
}

.hb_section_6 {
	display: inline-block;
	width: 800px;
	height: 100px;
	float:center;
}

.hb_section_7 {
	display: inline-block;
	width: 800px;
	height: 70px;
	float:center;
}

.title{
position:relative;
	display: inline-block;
	text-align:center;
	left:80px;
}
.title_side{
	display: inline-block;
	float:right;
}
#text{
	display: inline-block;
	width:720px;
	height:35px;
	border-radius: 4px;
	border: 1px solid #CCCCCC;
}
.person{
display: inline-block;
}
#text2{
	display: inline-block;
	width:300px;
	height:35px;
	border-radius: 4px;
	border: 1px solid #CCCCCC;
}

#text3{
	display: inline-block;
	width:150px;
	height:35px;
	border-radius: 4px;
	border: 1px solid #CCCCCC;
}
.email{
display:inline-block;
float:left;

}
.ema{
position:relative;
display:inline-block;
top:10%;
}
/*이메일 드롭다운*/
select {
  /* Reset Select */
 display: inline-block;
  appearance: none;
  outline: 0;
  border: 1px solid #CCCCCC;
  box-shadow: none;
  /* Personalize */
  flex: 1;
  color: black;
  background-color: white;
  background-image: none;
  cursor: pointer;
  font-weight:bold;
  /*드롭버튼 높이*/
   height: 35px;
   width:220px;
}
/* Remove IE arrow */
select::-ms-expand {
 display: none;
}
/* Custom Select wrapper */
.select {

  position: absolute;
  display: inline-block;
   /*드롭버튼 메뉴 크기*/
  width: 220px;
  height: 35px;
  border-radius: 3px;
  overflow: hidden;
 
}
/* Arrow */
.select::after {
display: inline-block;
  content: "\25BC";
  position: absolute;
  top: 0;
  right: 0;
  padding:0;
   width: 35px;
  height: 35px;
  background-color:#CCCCCC;
  transition: 0.25s all ease;
  pointer-events: none;.selec
}
/* Transition */
.select:hover::after {
display: inline-block;
  color:white;
}

#con{

	display: inline-block;
	width: 800px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.button1{
	display: inline-block;
	float:left;
}
.button2{
	display: inline-block;
	float:right;
}
.btn1{
	
	display: inline-block;
	width:80px;
	height:30px;
	border: 1px solid #FC4E82;
	outline:0;
	border-radius: 5px;
	font-weight:bold;
	background-color:white;
}

#btn2{
	display: inline-block;
	float:right;
	width:150px;
	height:30px;
	border: 1px solid #FC4E82;
	outline:0;
	border-radius: 5px;
	font-weight:bold;
	background-color:white;
}
#btn2 a{
text-decoration-line: none;
}
/*a링크 효과*/
#btn2 a:link{
font-weight:bold;
color: black;
}

#btn2 a:hover{
color: blue;
}

#btn2 a:visited{
color: purple;
}
.h{
border-style:none;
font-size:13px;
point:cursor;
width:60px;
height:30px;
}
</style>
<script>
function readURL(input) {
    if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#articlePreview').attr('src', e.target.result);
        }
       reader.readAsDataURL(input.files[0]);
    }
}  

function fn_addFile(){
	  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
	  cnt++;
}  

</script>
</head>
<body>
<section class="hb_section_total">
	<div class="customer-help-sidebar">
          <div class="customer-notice">
            <a href="${contextPath }/cs/noticeBoard.do"
              ><button class="customer-help-side-button">공지사항</button></a
            >
          </div>
         
          <div class="customer-one-on-one">
            <a href="${contextPath }/cs/qnaList.do" 
              ><button class="customer-help-side-button">1:1 문의</button></a
            >
          </div>
        </div>
<section class="one-on-one-notice">

  <!-- board list area -->
    <section class="hb_section_1">
		  
		        <div class="title" >
		            <h2>Q&A 글쓰기</h2>
		        </div>
		   
				<div class="title_side">
						<div>
								<a href="${contextPath }/main/main.do"><button class="h">홈</button></a>
								/&ensp;&ensp; Q&A글쓰기
						</div>
						
					</div>
					<br><br>
		    	<hr>
		</section>
		
		<section class="hb_section_2">
			<div>
				<b style=font-size:18px;>제목</b>&ensp;&ensp;&ensp;&ensp;&ensp;<input type="text" id="text">
			</div>
			<br>
			<hr>
		</section>
		
		<section class="hb_section_3">
			<div >
				<nav class="person">
					<b style=font-size:18px;>작성자</b>&ensp;&ensp;&ensp;&ensp;&ensp;<input type="text" id="text2">
				</nav>
				&ensp;&ensp;
				<nav class="person">
					<b style=font-size:18px;>작성일</b>&ensp;&ensp;&ensp;&ensp;&ensp;<input type="text" id="text2">
				</nav>
			</div>
			<br>
			<hr>
		</section>
		
		<section class="hb_section_4">
			<div class="email">
				<div class="ema">
				<b style=font-size:18px;>이메일</b>&ensp;&ensp;&ensp;&ensp;&ensp;<input type="text" id="text3">
				&ensp; @ &ensp;
				</div>
			<div class="select">
				<select >
					<option value="1">naver.com</option>
					<option value="2">hanmail.net</option>
					<option value="3">gmail.com</option>
					<option value="4">nate.com</option>
					<option value="5">hotmail.com</option>
				</select>
			</div>
			</div>
			
		</section>
		<br>
			<hr>
			<br>
		<section class="hb_section_5">
			 <input id="con" type="text" placeholder="내용을 입력해주세요.">
			 <br><br>
			 <hr>
		</section>
		
		<section class="hb_section_6">
			<div class="result-image">
				<c:forEach var="imageFileName" items="${map.fileList}">
					<img src="${contextPath}/download?imageFileName=${imageFileName}">
				</c:forEach>
			</div>
			
     	<div style="display: flex;">
			  <div style="width: 400px; height: 200px; float: left;">
			  <div style="width: 100px; height: 25px; float:left;"><span>image 첨부:&nbsp;</span></div>
			  <div> <input type="file" name="imageFileName"  onchange="readURL(this);" style="width:300px; height:35px;float:left; border: 1px solid #cccccc; border-radius: 10px;" /></div>
			  <div> <input type="button" value="파일 추가" onClick="fn_addFile()" style="width: 93px; height: 30px; margin-right: 105px; border: 1px solid #cccccc; border-radius: 10px;"/></div>
			  </div>
			  <div style="width: 400px; height: 100px; float: right;  margin-left: 100px; border-radius: 10px; "><img id="articlePreview" src="#" style="width: 200px; height: 200px; float: right; border-radius: 10px;" /></div> 
	    </div>
	     <div>
	      <div><div id="d_file"></div></div>
	   </div>
	
			<br><br><br><br><br>
            <hr>
            <br>
		</section>
		
		<section class="hb_section_7">
			<div class="button1">
            	<a class="" href="${contextPath }/customerService/qnaList.do">
            		<button type="button" class="btn1">목록</button>
            	</a>	
            </div>
            <div class="button2">
               <a class="" href="${contextPath }/customerService/qnaList.do"><button type="button" class="btn1">수정하기</button></a>
                <a class="" href="${contextPath }/customerService/qnaList.do"><button  type="button" class="btn1">취소</button></a>
                <a class="" href="${contextPath }/customerService/qnaList.do"><button type="button" class="btn1">등록</button></a>
            </div>
		</section>
	</section>
	</section>
</body>
</html>