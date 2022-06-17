
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>오나주</title>
<head>
<style>

.footer {
  background-color: #414141;
  width: 100%;
  text-align: left;
  font-family: sans-serif;
  font-size: 14px;
  padding: 35px 0;
}

.footer .foot_wrap {
	max-width: 1100px;
	margin: 0 auto;
}

.footer .footer-left,
.footer .footer-center,
.footer .footer-right {
  display: inline-block;
  vertical-align: top;
}

.footer .footer-center .f_txt {
	margin-bottom: 5px;
	font-size: 13px;
}

.footer .footer-center .f_txt svg{ 
	color: #afafaf;
}


/* footer left*/

.footer .footer-left {
  width: 33%;
  padding-right: 15px;
}

.footer .about {
  line-height: 20px;
  color: #ffffff;
  font-size: 13px;
  font-weight: normal;
  margin: 0;
}

.footer .about span {
  display: block;
  color: #ffffff;
  font-size: 14px;
  font-weight: bold;
  margin-bottom: 20px;
}

.footer .icons {
  margin-top: 25px;
}

.footer .icons a {
  display: inline-block;
  width: 35px;
  height: 35px;
  cursor: pointer;
  background-color: #33383b;
  border-radius: 2px;
  font-size: 20px;
  color: #ffffff;
  text-align: center;
  line-height: 35px;
  margin-right: 3px;
  margin-bottom: 5px;
}


/* footer center*/

.footer .footer-center {
  width: 30%;
}

.footer .footer-center i {
  background-color: #33383b;
  color: #ffffff;
  font-size: 25px;
  width: 38px;
  height: 38px;
  border-radius: 50%;
  text-align: center;
  line-height: 42px;
  margin: 10px 15px;
  vertical-align: middle;
}

.footer .footer-center i.fa-envelope {
  font-size: 17px;
  line-height: 38px;
}

.footer .footer-center p {
  display: inline-block;
  color: #ffffff;
  vertical-align: middle;
  margin: 0;
}

.footer .footer-center p span {
  display: block;
  font-weight: normal;
  font-size: 14px;
  line-height: 2;
}

.footer .footer-center p a {
  color: rgb(214,62,132);
  text-decoration: none;
}


/* footer right*/

.footer .footer-right {
  width: 35%;
}

.footer h2 {
  color: #ffffff;
  font-size: 36px;
  font-weight: normal;
  margin: 0;
}

.footer h2 span {
  color: rgb(214,62,132);
}

.footer .menu {
  color: #ffffff;
}

.footer .menu a {
  display: inline-block;
  line-height: 1.8;
  text-decoration: none;
  color: inherit;
}

.footer .menu a:hover {
  color: rgb(214,62,132);
}

.footer .name {
  color: rgb(214,62,132);
  font-size: 14px;
  font-weight: normal;
  margin: 0;
}

@media (max-width: 767px) {
  .footer {
    font-size: 14px;
  }
  .footer .footer-left,
  .footer .footer-center,
  .footer .footer-right {
    display: block;
    width: 100%;
    margin-bottom: 40px;
    text-align: center;
  }
  .footer .footer-center i {
    margin-left: 0;
  }
}

</style>


</head>
<body>
 
<footer class="footer">
	<div class="foot_wrap">
		  <div class="footer-left col-md-4 col-sm-6">
		    <p class="about">
		      <span> About 오나주</span> 5조 오나주 [이한빈, 박종설, 이정아, 이다민]
		    </p>
		    <div class="icons">
		      <a href="#"><i class="fa fa-facebook"></i></a>
		      <a href="#"><i class="fa fa-twitter"></i></a>
		      <a href="#"><i class="fa fa-linkedin"></i></a>
		      <a href="#"><i class="fa fa-google-plus"></i></a>
		      <a href="#"><i class="fa fa-instagram"></i></a>
		    </div>
		  </div>
		  <div class="footer-center col-md-4 col-sm-6">
		    <div class="f_txt">
		      <i class="fa fa-map-marker"></i>
		      <p><span> 대전광역시 서구 대덕대로</span> 그린컴퓨터학원</p>
		    </div>
		    <div class="f_txt">
		      <i class="fa fa-phone"></i>
		      <p> (+82) 042 476 2111</p>
		    </div>
		    <div class="f_txt">
		      <i class="fa fa-envelope"></i>
		      <p><a href="#"> dlgksqls7218@naver.com</a></p>
		    </div>
		  </div>
		  <div class="footer-right col-md-4 col-sm-6">
		    <h2> O<span> NAJU</span></h2>
		    <p class="menu">
		      <a href="${contextPath}/main/main.do"> 홈페이지</a> |
		      <a href="#"> 소개</a> |
		      <a href="${contextPath}/customerService/Question.do"> 고객센터</a> |
		      <a href="${contextPath}/customerService/siteMap.do"> 사이트맵</a> |
		      <a href="${contextPath}/customerService/noticeBoard.do"> 공지사항</a> |
		      <a href="${contextPath}/customerService/qnaList.do"> 문의사항</a>
		    </p>
		    <p class="name"> 오나주 &copy; 2022</p>
		  </div>
	</div> 
</footer>



</body>
</html>
