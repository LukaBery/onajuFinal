<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    
    
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <title>layout</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>       
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
	user-select: none;
	box-sizing: border-box;
	font-family: 'roboto', sans-serif;
}
.asidesize{
 background-color: white;
 width: 300px;
 height: 1800px;
 float: left;
 box-shadow: 0 1px 3px rgb(224, 224, 224, 0.5);
}
.headersize{
	width: 1140px;
	 height:70px;
	 background-color: white;
	 float:right;
	 display: inline-block;
	 box-shadow: 0 1px 3px rgb(224, 224, 224, 0.5);
}
.articlesize{
	display:inline-block;
	background-color: white;
	width: 1140px;
	height: 100%;
	float:right;
	
}
.footersize{
	width:100%;
	height:45px;
	bottom:0;

}
.Ohnaju-layout{
	width: 1440px;
	height: 1800px;
	margin: auto;
}
</style>



</head>
<body>
<c:choose>
<c:when test="${isLogOn== 'admin'  and not empty adminInfo }">
<div class="Ohnaju-layout">
		<div>
		<!-- 헤더부분 -->
			<header class="headersize">
				   <tiles:insertAttribute name="header" />
			</header>
			
			<!-- 사이드부분 -->
			<aside class="asidesize">
				 <tiles:insertAttribute name="side" />
			</aside>
			<!-- 바디 -->
			<section class="articlesize">
			 	<tiles:insertAttribute name="body" />
			</section>		
		</div>		
    </div>
    		<!-- 후터 부분 -->
			<footer class="footersize">
        		<tiles:insertAttribute name="footer" />
        	</footer>
</c:when>
<c:otherwise>
<%
session.invalidate();
response.sendRedirect(request.getContextPath() + "/admin/loginForm.do");
%>
</c:otherwise>
</c:choose>
</body>
</html>