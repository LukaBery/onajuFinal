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
	height: 100px
}

.navbar-brand {
	color: black;
}

.nav-link {
	position: relative;
	padding: 10px 0px;
	color: rgb(127, 155, 117);
}

.nav-link:hover {
	z-index: 5000;
	color: white;
}

.nav-link:visited {
	color: rgb(252, 78, 130);
}

.btn-link {
	color: rgb(127, 155, 117);
}

#navbarDropdown {
	width: auto;
	margin-top: 20px;
	height: 40px;
	border: 1px solid rgb(127, 155, 117);
	background-color: white;
	border-radius: 30px;
}

#navbarDropdown:hover {
	width: auto;
	margin-top: 20px;
	height: 40px;
	border: 1px solid rgb(127, 155, 117);
	background-color: rgb(127, 155, 117);
	border-radius: 30px;
	color: white;
}

#main_fixed {
	padding: 15px 0 15px 0;
	line-height: 50px;
	display: block;
	text-align: center;
	width: 1100px;
	margin: 0 auto;
	height: 100px;
	overflow: hidden;
}

#main_fixed .host_title {
	float: left;
}

#main_fixed .host_title a {
	display: inline-block;
	vertical-align: bo
}

#main_fixed .host_title b {
	font-size: 25px;
	color: #486889;
	display: inline-block;
}

#main_fixed .host_title {
	float: left;
}

#main_fixed .host_menu {
	float: right;
	list-style: none;
	margin-top: 23px;
}

#main_fixed .host_menu li {
	display: inline-block;
	width: 110px;
}

#main_fixed .host_menu li a {
	display: block;
	font-size: 13px;
	font-weight: bold;
	line-height: 30px;
	padding: 0px 15px;
	color: #537190;
	background: #fff;
	border-radius: 20px;
	border: 1px solid #537190;
	overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
	
}

#main_fixed .host_menu li a:hover {
	background: #537190;
	color: #edbc40;
}

</style>

<script type="text/javascript">

function() {
  var w = window;
  if (w.ChannelIO) {
    return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
  }
  var ch = function() {
    ch.c(arguments);
  };
  ch.q = [];
  ch.c = function(args) {
    ch.q.push(args);
  };
  w.ChannelIO = ch;
  function l() {
    if (w.ChannelIOInitialized) {
      return;
    }
    w.ChannelIOInitialized = true;
    var s = document.createElement('script');
    s.type = 'text/javascript';
    s.async = true;
    s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
    s.charset = 'UTF-8';
    var x = document.getElementsByTagName('script')[0];
    x.parentNode.insertBefore(s, x);
  }
  if (document.readyState === 'complete') {
    l();
  } else if (window.attachEvent) {
    window.attachEvent('onload', l);
  } else {
    window.addEventListener('DOMContentLoaded', l, false);
    window.addEventListener('load', l, false);
  }
})();
ChannelIO('boot', {
  "pluginKey": "cacc290a-7e9b-4fcf-b766-74fe3b4a2b91"
});


</script>
</head>

<section id="main_fixed">
	<div align="center" id="">
		<h1 class="host_title">
			<a href="${contextPath}/host/main/main.do"> <img
				src="${contextPath}/resources/image/onajulogo.png" width="80px"
				height="57px" style="margin-top: 5px;">
			</a> <b>호스트 페이지</b>
		</h1>
		<ul class="host_menu">
			<li><a href="${contextPath}/host/mypage/hostMypageDetail.do"> <i
					class="fas fa-user fa-fw"></i> <c:choose>
						<c:when test="${not empty isLogOn and not empty hostInfo }">
							<i id="main_font_i" class=" fa-fw">${hostInfo.h_id}</i>
						</c:when>
						<c:otherwise>
							<i id="main_font_i" class=" fa-fw">로그인</i>
						</c:otherwise>
					</c:choose>
			</a></li>
			<li><a href="${contextPath}/host/h_logout.do"> <i
					class="fa-solid fa-arrow-right-from-bracket"></i>&nbsp;로그아웃
			</a></li>
			<li><a href="${contextPath}/host/h_logout.do"><i
					class="fa-solid fa-house-user"></i>&nbsp;오나주홈</a></li>
		</ul>
	</div>
</section>

</html>

