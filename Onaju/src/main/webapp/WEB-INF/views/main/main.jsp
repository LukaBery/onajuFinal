
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<c:if test='${ not empty message }'>

	<script>
		window.onload = function() {
			result();
		}

		function result() {
			alert("${message}");
			
		}
	</script>
</c:if>

<c:if test='${ not empty pageNum }'>

	<script>
	window.addEventListener('load', function() {
		  document.getElementById('page_${pageNum}').setAttribute('class','btn_pageNum_main_clicked');
		});

	</script>
</c:if>
<style>
.hb_rec_1 {
	float: left;
	display: inline-block;
	width: 820px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.hb_rec_2 {
	display: inline-block;
	float: right;
	width: 254px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.hb_rec_3 {
	align-items: center;
	text-align: center;
	display: inline-block;
	width: 122px;
	height: 60px;
	padding: 0px 0px 0px 0px;
	margin: 0px 21px 0px 21px;
}

.hb_rec_4 {
	display: inline-block;
	width: 100%;
	height: 180px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px;
}
/* <섹션 종류> */
.hb_section_total {
	width: 1100px;
	height: 100%;
	padding-top: 35px;
}

.hb_section_1 {
	padding: 5px 0px 5px 0px;
	display: inline-block;
	width: 800px;
	height: 70px;
	margin-top: 15px;
	margin-bottom: 15px;
}

.hb_section_2 {
	display: inline-block;
	width: 1100px;
	height: 400px;
}

.hb_section_3 {
	display: inline-block;
	width: 300px;
	height: 70px;
	margin-top: 15px;
		margin-bottom: 15px;
	
}

.hb_section_4 {
	display: inline-block;
	width: 1100px;
}

.hb_section_4>div:first-child{ 
	margin-left: 0;
}

.hb_section_5 {
	margin-top:35px;
	display: inline-block;
	width: 1100px;
}
/* <인라인블럭 왼쪽 고정> */
.margin_left_0 {
	float: left;
	margin-left: 0px;
}
/* <인라인블럭 왼쪽 고정> */
.margin_right_0 {
	float: right;
	margin-right: 0px;
}

.hb_table_1 {
    padding: 15px 15px 15px 0px;
    float: left;
    display: inline-block;
    width: 25%;
}

.hb_textbox_1 {
	display: inline-block;
	width: 100%;
}

#hb_textbox_2 {
	display: inline-block;
	width: 100%;
	height: 20px;
	margin-top: 10px;
}

#hb_textbox_3 {
	display: inline-block;
	width: 100%;
	height: 30px;
	margin-top: 10px;
}

#form_width_center {
	text-align: center;
}

#h1_left {
	text-align: left;
	font-size: 25px;
	margin-bottom: 15px;
    font-weight: 600;
    color: #747474;
}
/* <a 태그 부모 태그 전체 확장> */
#hb_a_main {
	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 0;
	border-radius: 20px;
	transform: scale(1);
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transition: all 0.3s ease-in-out; 
}
#hb_a_main:hover{
	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 auto;
	border-radius: 20px;
	transform: scale(1.05);
  -webkit-transform: scale(1.05);
  -moz-transform: scale(1.05);
  -ms-transform: scale(1.05);
  -o-transform: scale(1.05);

}
#hb_a_main_text {
	text-decoration: none;
	text-align:left;
	display: block;
	font-size: 15px;
	font-weight: 600;
	color: black;
	margin: 0 auto;
	overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis; /*글자 말줄임 처리*/
}

#hb_a_main_profile {
	text-decoration: none;
	display: inline-block;
	width: 30px;
	height: 30px;
	font-size: 15px;
	font-weight: 600;
	color: black;
	margin: 0 auto;
	border-radius: 70%;
	float: left;
}

#hb_a_main_text:visited {
	text-decoration: none;
	display: block;
	height: 100%;
	font-size: 15px;
	font-weight: 600;
	color: black;
	margin: 0 auto;
	float: left;
}

#hb_a_main_nav {
	font-weight: 550;
	font-size: 16px;
	line-height: 20px;
	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 auto;
	border-radius: 20px;
	background-color: white;
	color: rgb(252, 96, 143);
	opacity: 100%;
	border: 1px solid rgb(252, 96, 143);
}

#hb_a_main_nav:hover {
	font-weight: 550;
	font-size: 16px;
	line-height: 20px;
	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 auto;
	border-radius: 20px;
	background-color: rgb(252, 96, 143);
	color: white;
	opacity: 100%;
}

#hb_main_profile_image {
	width: 30px;
	height: 30px;
	border-radius: 70%;
	overflow: hidden;
}

#hb_main_profile_name {
	text-decoration: none;
	display: inline-block;
	margin-top: 5px;
	margin-left: 8px;
	height: 30px;
	font-size: 12px;
	font-weight: 580;
	color: black;
	float: left;
}

.slider_option {
	position: relative;
	margin: 10px auto;
	width: 160px;
	font-size: 18px;
}

#slider {
	position: relative;
	overflow: hidden;
	margin: 0px auto 0 auto;
	border-radius: 4px;
}

#slider ul {
	position: relative;
	margin: 0;
	padding: 0;
	height: 200px;
	list-style: none;
}

#slider ul li {
	position: relative;
	display: block;
	float: left;
	margin: 0;
	padding: 0;
	width: 820px;
	height: 400px;
	background: #ccc;
	text-align: center;
	line-height: 0px;
	z-index: 1;
}

a.control_prev, a.control_next {
	position: absolute;
	top: 40%;
	z-index: 999;
	display: block;
	padding: 4% 3%;
	width: auto;
	height: auto;
	background: none;
	color: #fff;
	text-decoration: none;
	font-weight: 600;
	font-size: 30px;
	opacity: 0.6;
	cursor: pointer;
}

a.control_prev:hover, a.control_next:hover {
	opacity: 1;
	-webkit-transition: all 0.2s ease;
}

a.control_prev {
	border-radius: 0 2px 2px 0;
}

a.control_next {
	right: 0;
	border-radius: 2px 0 0 2px;
}

#slider_1 {
	position: relative;
	overflow: hidden;
	margin: 0px auto 0 auto;
	border-radius: 4px;
}

#slider_1 ul {
	position: relative;
	margin: 0;
	padding: 0;
	height: 200px;
	list-style: none;
}

#slider_1 ul li {
	position: relative;
	display: block;
	float: left;
	margin: 0;
	padding: 0;
	width: 252px;
	height: 398px;
	background: #ccc;
	text-align: center;
	line-height: 0px;
}

a.control_prev_1, a.control_next_1 {
	position: absolute;
	top: 46%;
	z-index: 999;
	display: block;
	padding: 4% 5%;
	width: auto;
	height: auto;
	background: none;
	color: #fff;
	text-decoration: none;
	font-weight: 600;
	font-size: 30px;
	opacity: 0.6;
	cursor: pointer;
}

a.control_prev_1:hover, a.control_next_1:hover {
	opacity: 1;
	-webkit-transition: all 0.2s ease;
}

a.control_prev_1 {
	border-radius: 0 2px 2px 0;
}

a.control_next_1 {
	right: 0;
	border-radius: 2px 0 0 2px;
}
#hb_main_p{
	position:absolute;
	top:85%;
	left:5%;
	color:white;
	font-size:30px;
	z-index:1;
	font-weight: 600;
	z-index: 1;
	text-shadow : 1px 1px 3px black;

}

#hb_main_p_1{
	position:absolute;
	top:94%;
	left:10%;
	color:white;
	font-size:13px;
	z-index:1;
	font-weight: 600;
	text-shadow : 1px 1px 3px black;

}

#hb_a_main_profile_1{
	text-decoration: none;
	position: absolute;
	width: 30px;
	height: 30px;
	font-size: 15px;
	font-weight: 600;
	color: black;
	margin: 0 0;
	border-radius: 70%;
	float: left;
	top:90%;
	left:5%;
}

#hb_main_profile_image_1{
position:absolute;
left:0%;
color:white;
font-size:13px;
z-index:1;
font-weight: 600;
	width: 30px;
	height: 30px;
	border-radius: 70%;
	overflow: hidden;
}
#hb_main_text03{
position:absolute;
top:83%;
left:80%;
color:white;
width:80px;
height:50px;
font-size:14px;
z-index:1;
font-weight: 650;
line-height:45px;
border: 2px solid white;
border-radius: 5px;
opacity: 100%;
text-shadow : 1px 1px 3px black;
}

#hb_main_text03:hover{
position:absolute;
top:82%;
left:80%;
color:rgb(250,100,145);
width:80px;
height:50px;
font-size:14px;
z-index:1;
font-weight: 700;
line-height:45px;
border: 2px solid white;
border-radius: 5px;
opacity: 100%;
background-color:  white;
text-shadow : 1px 1px 3px white;

}
.hitStyle{
 color: white;
    right: 5%;
    top: 85%;
    font-weight:550;
    font-size:14px;
    position: absolute;
    text-shadow : 1px 1px 3px black;
}
.hit_image{
padding:6px 0px 0px 0px;
width:18px; 
height:18px;

}

.hitStyle_slider{
 color: white;
    right: 5%;
    top: 5%;
    font-weight:500;
    font-size:17px;
    position: absolute;
    text-shadow : 1px 1px 3px black;
}

.hit_image_slider{
padding:6px 0px 0px 0px;
width:25px; 
height:25px;
text-shadow : 1px 1px 3px black;
}

.btn_pageNum_main {
	width: 30px;
	color: black;
	text-decoration: none;
	font-size: 22px;
	font-weight: 600;
}

.btn_pageNum_main_clicked {
	width: 30px;
	color: rgb(250, 100, 145);
	text-decoration: none;
	font-size: 22px;
	font-weight: 600;
}
.page_wrap{
margin-top:20px;
padding:10px;
border-bottom: 2px solid #CCCCCC;
border-top: 2px solid #CCCCCC;

}
</style>

</head>
<body>

	<section class="hb_section_total">
	


		<!-- <메인 게시글 사진 및 베너> -->
		<section class="hb_section_2">

			<div class="hb_rec_1">



				<div id="slider">
					<a href="#" class="control_next" onclick="return false">></a> <a
						href="#" class="control_prev" onclick="return false"><</a>
					<ul>
								<c:forEach var="item" items="${comunityList_best}" end="3" varStatus="membersNum">
					
						<li><p id="hb_main_p">${item.bigTitle }</p><p id="hb_main_p_1">${item.h_name }</p>
						<a id="hb_a_main_profile_1"href="#"><img id="hb_main_profile_image_1"
							src="${contextPath}/resources/image/dog_profile.PNG"></a>
							<a id="hb_main_text03" href="${contextPath}/board/boardArticle.do?cmnNum=${item.cmnNum }&room_code=${item.room_code }">보러가기</a>
						<a id="hb_a_main"
							href="${contextPath}/board/boardArticle.do?cmnNum=${item.cmnNum }&room_code=${item.room_code }"><img id="hb_mainpage_image"
								src="${contextPath}/host/community/download2.do?room_code=${item.room_code}&fileName=${item.cmn_image}"
								style="width: 100%; height: 100%; border-radius: 10px; float:left;"><i class="hitStyle_slider">
						<img class="hit_image"src="${contextPath}/resources/image/icons/hit_icon.png"/> ${item.hit}</i></a></li>
							
</c:forEach>
					</ul>
				</div>
				<!-- 
				<div class="slider_option">
					<input  type="checkbox" id="checkbox" checked="checked">
					<label for="checkbox"></label>
				</div> -->



			</div>

			<div class="hb_rec_2">
				<div id="slider_1">
					<a href="#" class="control_next_1" onclick="return false">></a> <a
						href="#" class="control_prev_1" onclick="return false"><</a>
					<ul>
						<li><a id="hb_a_main"
							href="${contextPath}/board/boardArticle.do"><img
								src="${contextPath }/resources/image/banner1.png"
								style="width: 100%; height: 100%; border-radius: 10px;"></a></li>

						<li><a id="hb_a_main"
							href="${contextPath}/board/boardArticle.do"><img
								src="${contextPath }/resources/image/banner1.png"
								style="width: 100%; height: 100%; border-radius: 10px;"></a></li>
								
						<li><a id="hb_a_main"
							href="${contextPath}/board/boardArticle.do"><img
								src="${contextPath }/resources/image/banner1.png"
								style="width: 100%; height: 100%; border-radius: 10px;"></a></li>
								
								
								
						<li><a id="hb_a_main"
							href="${contextPath}/board/boardArticle.do"><img
								src="${contextPath }/resources/image/banner1.png"
								style="width: 100%; height: 100%; border-radius: 10px;"></a></li>
								
								
								

					</ul>
				</div>

			</div>
		</section>

		<section class="hb_section_5">
			<h1 id="h1_left">베스트 스토리</h1>
		</section>
		<!-- <여러 게시글 1> -->
		<section class="hb_section_4">
			<!-- hb_table_1 -->
			
			
			
					<c:forEach var="item" items="${comunityList_best}" begin="4" end="7" varStatus="membersNum">
				
						
		
			<div class="hb_table_1">
				<div class="hb_rec_4">
					<a id="hb_a_main" href="${contextPath}/board/boardArticle.do?cmnNum=${item.cmnNum }&room_code=${item.room_code }"><img
						src="${contextPath}/host/community/download2.do?room_code=${item.room_code}&fileName=${item.cmn_image}"
						style="width: 100%; height: 100%; border-radius: 20px;"><i class="hitStyle">
						<img class="hit_image"src="${contextPath}/resources/image/icons/hit_icon.png"/> ${item.hit}</i></a>
				</div>
				<!-- 	<텍스트 상자> -->
				<div class="hb_textbox_1">

					<div id="hb_textbox_2">
						<a id="hb_a_main_text" href="#">${item.bigTitle }</a>
					</div>
					<div id="hb_textbox_3">
						<a id="hb_a_main_profile" href="#"><img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG"></a> <a
							id="hb_main_profile_name" href="#">${item.h_name }</a>
					</div>
				</div>
			</div>
			
			
			</c:forEach>
			
			
		</section>

	<section class="hb_section_5">
			<h1 id="h1_left">최신 스토리</h1>
		</section>

		<section class="hb_section_4">
			<c:forEach var="item" items="${comunityList_newest}" begin="0" varStatus="membersNum">
				
						
		
			<div class="hb_table_1">
				<div class="hb_rec_4">
					<a id="hb_a_main" href="${contextPath}/board/boardArticle.do?cmnNum=${item.cmnNum }&room_code=${item.room_code }"><img
						src="${contextPath}/host/community/download2.do?room_code=${item.room_code}&fileName=${item.cmn_image}"
						style="width: 100%; height: 100%; border-radius: 20px;"><i class="hitStyle">
						<img class="hit_image"src="${contextPath}/resources/image/icons/hit_icon.png"/> ${item.hit}</i></a>
				</div>
				<!-- 	<텍스트 상자> -->
				<div class="hb_textbox_1">

					<div id="hb_textbox_2">
						<a id="hb_a_main_text" href="#">${item.bigTitle }</a>
					</div>
					<div id="hb_textbox_3">
						<a id="hb_a_main_profile" href="#"><img id="hb_main_profile_image"
							src="${contextPath}/resources/image/dog_profile.PNG"></a> <a
							id="hb_main_profile_name" href="#">${item.h_name }</a>
					</div>
				</div>
			</div>
			
			
			</c:forEach>
			
		</section>
<c:choose>
 <c:when test="${not empty comunityList_newest }">	
   <DIV id="page_wrap" class="page_wrap">

		 <c:forEach   var="page" begin="1" end="${cnt}" step="1" >
		         <c:if test="${section >1 && page==1 }">
		          <a class="btn_pageNum_main" style="width:50px;"href="${contextPath}/main/main.do?section=${section-1}&pageNum=${(section-1)*8 +1 }">&nbsp;이전 &nbsp;</a>
		         </c:if>
		          <a class="btn_pageNum_main" id="page_${page }"href="${contextPath}/main/main.do?section=${section}&pageNum=${page}">${(section-1)*8 +page } </a>
		         <c:if test="${page ==10 }">
		          <a class="btn_pageNum_main" style="width:50px;"href="${contextPath}/mainmain.do?section=${section+1}&pageNum=${section*8+1}">&nbsp; 다음</a>
		         </c:if> 
	      </c:forEach> 
	</DIV>	
 </c:when>
</c:choose>

		<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>




	</section>
</body>
<script>
	jQuery(document).ready(function() {
		setInterval(function() {
			moveRight();
		}, 5000);

		var slideCount = $('#slider ul li').length;
		var slideWidth = $('#slider ul li').width();
		var slideHeight = $('#slider ul li').height();
		var sliderUlWidth = slideCount * slideWidth;

		$('#slider').css({
			width : slideWidth,
			height : slideHeight
		});

		$('#slider ul').css({
			width : sliderUlWidth,
			marginLeft : -slideWidth
		});

		$('#slider ul li:last-child').prependTo('#slider ul');

		function moveLeft() {
			$('#slider ul').animate({
				left : +slideWidth
			}, 800, function() {
				$('#slider ul li:last-child').prependTo('#slider ul');
				$('#slider ul').css('left', '');
			});
		}
		;

		function moveRight() {
			$('#slider ul').animate({
				left : -slideWidth
			}, 800, function() {
				$('#slider ul li:first-child').appendTo('#slider ul');
				$('#slider ul').css('left', '');
			});
		}
		;

		$('a.control_prev').click(function() {
			moveLeft();
		});

		$('a.control_next').click(function() {
			moveRight();
		});

	});
	jQuery(document).ready(function() {

		setInterval(function() {
			moveRight1();
		}, 5000);
		var slideCount1 = $('#slider_1 ul li').length;
		var slideWidth1 = $('#slider_1 ul li').width();
		var slideHeight1 = $('#slider_1 ul li').height();
		var sliderUlWidth1 = slideCount1 * slideWidth1;

		$('#slider_1').css({
			width : slideWidth1,
			height : slideHeight1
		});

		$('#slider_1 ul').css({
			width : sliderUlWidth1,
			marginLeft : -slideWidth1
		});

		$('#slider_1 ul li:last-child').prependTo('#slider_1 ul');

		function moveLeft1() {
			$('#slider_1 ul').animate({
				left : +slideWidth1
			}, 200, function() {
				$('#slider_1 ul li:last-child').prependTo('#slider_1 ul');
				$('#slider_1 ul').css('left', '');
			});
		}
		;

		function moveRight1() {
			$('#slider_1 ul').animate({
				left : -slideWidth1
			}, 300, function() {
				$('#slider_1 ul li:first-child').appendTo('#slider_1 ul');
				$('#slider_1 ul').css('left', '');
			});
		}
		;

		$('a.control_prev_1').click(function() {
			moveLeft1();
		});

		$('a.control_next_1').click(function() {
			moveRight1();
		});

	});
</script>

</html>
