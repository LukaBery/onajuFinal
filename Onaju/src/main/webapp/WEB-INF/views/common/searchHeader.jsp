<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<meta name="description" content="Colrolib Templates">
<meta name="author" content="Colrolib">
<meta name="keywords" content="Colrolib Templates">

<title>오나주</title>

<style>

#header_center {
	width: 1100px;
	margin-top: 13px;
}

.navbar-brand {
	color: black;
}

.nav-link {
	position: relative;
	padding: 10px 0px;
	
	width: 140px;
	margin-top: 25px;
	height: 40px;
	border: 1.5px solid #DDDDDD;
	background-color: white;
	border-radius: 30px;
}

.nav-link #main_font_i, .nav-link #main_user_icon{
	
	color:black;
	opacity:70%;
	
}

.nav-link:hover , .nav-link:focus {
	z-index: 5000;
color:black;
box-shadow: 0 2px 4px rgba(0,0,0,0.18);
	width: 140px;
	margin-top: 25px;
	height: 40px;
	border-radius: 30px;
	opacity:100%;
}

.nav-link:hover #main_font_i,.nav-link:hover #main_user_icon .nav-link:focus #main_font_i, .nav-link:hover #main_user_icon{	
color:black;
	opacity:100%;
}


#samsun{
    width: 60%;
    height: 1px;
    border-radius: 20px;
    border: 1px solid black;
    display: inline-block;
    float: left;
    margin: 1px 0px;
    opacity:50%;
        transition: 0.5s;
    
}

.nav-link:hover #samsun, .nav-link:focus #samsun{
    width: 60%;
    height: 1px;
    
    border-radius: 20px;
    border: 1px solid black;
    display: inline-block;
    float: left;
    margin: 1px 0px;
    opacity:80%;
        transition: 0.5s;
    
}
/* .nav-link:visited {
	color: rgb(252, 78, 130);
}
 */
.btn-link {
	color: rgb(252, 78, 130);
}
/* 
#navbarDropdown {
	
}

#navbarDropdown:hover {
	
} */
#main_fixed {
	line-height: 50px;
	display: inline-block;
	text-align: center;
	width: 1100px;
	height: 100px;
}

#main_td {
	text-align: center;
	float: left;
}

#main_a_life {
	text-decoration: none;
	font-weight: 570;
	text-align: center;
	opacity: 70%;
	color: #f94b4b;
	font-size: 21px;
}

#main_a_life:hover {
	text-decoration: none;
	opacity: 100%;
	font-weight: 600;
	font-size: 21px;
	text-align: center;
}

#main_a {
	text-decoration: none;
	color: rgb(178, 178, 178);
	font-weight: 570;
	font-size: 18px;
	text-align: center;
}

#main_a:hover {
	text-decoration: none;
	color: black;
	font-weight: 590;
	font-size: 18px;
	text-align: center;
}
#main_font_i {
        font-family: inherit;
    margin: 0px;
    font-size: 12px;
    font-weight: 550;
    float: left;
    width: 47%;
    height: 100%;
    padding: 10px 0px 10px 5px;
    text-align: left;
}

</style><script>

	function fn_joinform_check() {
		var people_num = $("#people_num").val();

		alert(people_num);
	}
</script>
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6e6e34573e04bd152c20de74d0647457&libraries=services,clusterer"></script>


</head>

<section id="main_fixed">
	<div align="center" id="">
		<table style="text-align: center" id="header_center">
			<tr>

				<td width="80px" style="text-align: right;" id="main_td"><a
					href="${contextPath}/main/main.do"><img
						src="${contextPath}/resources/image/onajulogo.png" width="80px"
						height="57px" style="margin-top: 12px;"></a> <!-- Sidebar Toggle--></td>


				<td width="100px"
					style="padding: 18px 0px 0px 0px; margin-left: 10px;" id="main_td"><a
					id="main_a_life" class="  " href="${contextPath}/main/main.do">&nbsp;<b>LifeStyle</b>
				</a> <!-- Sidebar Toggle--></td>
				
				<td width="150px"
					style="padding: 20px 0px 0px 0px; margin-left: 0px;" id="main_td"><a
					id="main_a" class="" href="${contextPath}/host/goods/searchGoodsMap.do">숙소 예약하기&nbsp;</a> <!-- Sidebar Toggle--></td>
				<!-- Navbar Search-->

				<td width="565px"
					style="padding: 18px 10px 0px 10px; line-height: 18px;" id="main_td">
							<form class="form" name="search_from_map"method="POST" action="${contextPath}/host/goods/searchGoodsMap.do"
								>
								<div class="input-group input--large">
									<label class="label">장소</label> <input id="keyword"class="input--style-1"
										type="text" placeholder=" 목적지" name="going" autocomplete='off'value="${searchKeyword.going }">
										<input type="hidden" name="search_longitude" id="search_longitude">
										<input type="hidden" name="search_latitude" id="search_latitude">
								</div>
								<div class="input-group input--medium">
									<label class="label">체크인</label> <input class="input--style-1"
										type="text" name="checkin" placeholder="      월/일/년"value="${searchKeyword.checkin }"
										id="input-start" autocomplete='off'>
								</div>
								<div class="input-group input--medium">
									<label class="label">체크 아웃</label> <input
										class="input--style-1" type="text" name="checkout"value="${searchKeyword.checkout }"
										placeholder="      월/일/년" id="input-end" autocomplete='off'>
								</div>
								<div class="input-group input--small" style="width: 100px;">
									<label class="label">인원</label>
									<div class="input-group-icon js-number-input" autocomplete='off'>
										<div class="icon-con ">
											<span class="plus">+</span> <span class="minus">-</span>
										</div>
										<input class="input--style-1 quantity" type="text" id="people_num"
											name="guests" value="1 명" autocomplete='off'>
									</div>

								</div>
								<button class="btn-submit" type="button" onClick="searchPlaces(); return false"
									style="margin-top: 5px;">검색</button>
							</form>
				</td>
				<td width="130px"
					style="padding: 0px 0px 0px 15px; margin-left: 5px; line-height: 18px;"
					id="main_td">
					<!-- Navbar-->
					
					<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4 ">
						<li class="nav-item dropdown"><a style="padding: 0px 0px;"
							class="nav-link" id="navbarDropdown" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false"> <c:choose>
									<c:when test="${not empty isLogOn and not empty memberInfo }">
										<img src="${contextPath}/profileShow.do?u_id=${memberInfo.u_id}&fileName=${memberInfo.u_imageName}" onerror="this.onerror=null; this.src='${contextPath}/resources/image/noImage.svg';"
										style="border-radius:70%; border:1px solid #CCCCCC;width:30px;height:30px;float: left;margin: 3px 5px 3px 6px;">
									</c:when>
									<c:otherwise>
									<i
										style="border-radius:70%;padding:5px 0px 5px 5px; width:30px;height:30px;float: left;margin: 4px 5px 4px 6px;">
										<i class="fas fa-user fa-fw" id="main_user_icon"></i></i>
									</c:otherwise>
								</c:choose> 
								<c:choose>
									<c:when test="${not empty isLogOn and not empty memberInfo }">
										<i id="main_font_i" class=" fa-fw">${memberInfo.u_name}</i>
									</c:when>
									<c:when test="${not empty isLogOn and not empty userInfo }">
										<i id="main_font_i" class=" fa-fw">${userInfo.s_name}</i>
									</c:when> 
									<c:when
										test="${not empty isLogOn and not empty nonmemberInfo }">
										<i id="main_font_i" class=" fa-fw">${nonmemberInfo.u_name}</i>
									</c:when>
									<c:otherwise>
										<i id="main_font_i" class=" fa-fw">로그인</i>

									</c:otherwise>
								</c:choose> <i style="width: 20%; padding: 13px 0px 12px 0px;height: 100%; float: left; display: inline-block;">
								<i id="samsun"></i>
<i id="samsun"></i>
<i id="samsun"></i>
								</i>


						</a>

							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="navbarDropdown">


								<c:choose>

									<c:when test="${not empty isLogOn and not empty memberInfo}">
					
										<li><a class="dropdown-item"
											href="${contextPath}/mypage/mypageMain.do">마이페이지</a></li>
										<li><a class="dropdown-item"
											href="${contextPath}/mypage/myCart.do">장바구니</a></li>
										<li><hr class="dropdown-divider" /></li>
										<li><a class="dropdown-item"
											href="${contextPath}/host/h_joinForm.do">호스트가입</a></li>
									
										<li><a class="dropdown-item"
											href="${contextPath}/cs/noticeBoard.do">고객센터</a></li>
										<li><a class="dropdown-item"
											href="${contextPath}/member/logout.do">로그아웃</a></li>
									</c:when>
									
									<c:when test="${not empty isLogOn and not empty userInfo}">
					
										<li><a class="dropdown-item"
											href="${contextPath}/mypage/mypageMain.do">마이페이지</a></li>
										<li><a class="dropdown-item"
											href="${contextPath}/mypage/myCart.do">장바구니</a></li>
										<li><hr class="dropdown-divider" /></li>
										<li><a class="dropdown-item"
											href="${contextPath}/host/h_joinForm.do">호스트가입</a></li>
									<li><a class="dropdown-item"
											 href="https://kauth.kakao.com/oauth/logout?client_id=2520c8e17541628f34b1475ac21d1840&logout_redirect_uri=http://localhost:8080/Onaju/member/kakaoLogout">로그아웃</a></li>
										<li><a class="dropdown-item"
											href="${contextPath}/cs/noticeBoard.do">고객센터</a></li>
										
									</c:when>
									<c:when test="${not empty isLogOn and not empty nonmemberInfo}">
					<li><a class="dropdown-item"
											href="${contextPath}/member/joinForm.do">회원가입</a></li>
										
										<li><a class="dropdown-item"
											href="${contextPath}/mypage/myCart.do">장바구니</a></li>
										<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item"
											href="${contextPath}/member/logout.do">로그아웃</a></li>			
							
										<li><a class="dropdown-item"
											href="${contextPath}/cs/noticeBoard.do">고객센터</a></li>
										
									</c:when>


									<c:otherwise>
										<li><a class="dropdown-item"
											href="${contextPath}/member/loginForm.do">로그인</a></li>
										<li><a class="dropdown-item"
											href="${contextPath}/member/joinForm.do">회원가입</a></li>
										<li><a class="dropdown-item"
											href="${contextPath}/host/h_joinForm.do">호스트가입</a></li>
										<li><hr class="dropdown-divider" /></li>
								
										<li><a class="dropdown-item"
											href="${contextPath}/cs/noticeBoard.do">고객센터</a></li>
										<li><a class="dropdown-item" href="#">도움말</a></li>

									</c:otherwise>






								</c:choose>










							</ul></li>
					</ul>










				</td>


			</tr>

		</table>

	</div>

	<!-- 	</nav> -->











</section>


<script>
var ps = new kakao.maps.services.Places();  



function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        var placePosition = new kakao.maps.LatLng(data[1].y, data[1].x)
        // 페이지 번호를 표출합니다
      
    	  document.getElementById('search_longitude').setAttribute('value',data[1].y); 
      	  document.getElementById('search_latitude').setAttribute('value',data[1].x); 

document.search_from_map.submit();
    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

</script>




</html>

