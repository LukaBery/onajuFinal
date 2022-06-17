<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.onaju-header{
	width: 1140px; 
	height: 70px;
	display: flex;
	align-items: center; 
	justify-content: space-between;
}
.onajuMainName{
	display: flex;
	width: 400px;
	height: 35px;
	color: #666666;
	align-items: center; 
}
.onajuMainName div a{
	display: flex;
	text-decoration: none;
}
.onajuMainName div{
	margin-left: 20px;
}
.onajuMainName div div button{
	width: 130px;
	height: 30px;
	color: #fff;
	background-color: #000033;
	border: none;
	appearance: none;
	font-size: 1em;
	border-radius: 5px;
}
.onaju-memberbox{
	display: flex;
	width: 300px;
	height: 40px;
	color: #666666;
	align-items: center; 
}
.onaju-member div button{
	width: 130px; 
	height: 35px;
	color:#fff;
	background-color:#000033;
	border: none;
	border-radius: 5px;
	font-size: 1em;
	box-shadow: 0 2px 10px rgb(0, 0, 255, 0.5);
	margin: 3px 3px 3px 3px;
}
.onaju-logOut div a{
	display:block; 
	width:130px; 
	line-height:35px; 
	text-align:center;
	border: none; 
	border-radius: 5px;  
	text-decoration: none;
	background-color: #ff3333;
	color: #fff;
	box-shadow: 0 2px 10px rgba(255, 0, 130, 0.5);
	margin: 3px 3px 3px 3px;
}
</style>
</head>
<body>
<header>
	<div class="onaju-header">
		<div class="onajuMainName"><div><a href="${contextPath }/admin/main.do"><h3 style="color:#D43584;">오나주</h3><h3>관리자 페이지</h3></a></div></div>
		<div class="onaju-memberbox">
			<div class="onaju-member"><div><button>${adminInfo.a_name }님</button></div></div>
			<div class="onaju-logOut"><div><a href="${contextPath }/admin/loginForm.do">로그아웃</a></div></div>
        </div>
	</div>
</header>
</body>
</html>