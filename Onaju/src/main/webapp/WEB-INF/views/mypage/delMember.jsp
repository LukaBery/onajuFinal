
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
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
<script type="text/javascript">
function fn_delete_member() {

	document.frm_del_member.submit(); 
}	
</script>

</head>
<body>
	<section class="hb_section_total">

		<section class="hb_section_order_title">
			<a href="${contextPath}/main/main.do"> <img
				src="${contextPath}/resources/image/onajulogo.png" width="150px"
				height="100px"></a>
		</section>

	<form name="frm_del_member" action="${contextPath}/mypage/deleteMember.do" method="post" >

			<div class="hb_rec_order_1" >
				<p id="h1_order_title">회원 탈퇴</p>
				<div class="order_divider"></div>

	<span class="inputWrap_order"> <input type="text" name="u_id"
					id="u_id" value="${memberInfo.u_id }" tabindex="1" placeholder="아이디">
				</span> <span class="inputWrap_order"> <input type="password"
					 id="u_pw" tabindex="1" placeholder="비밀번호"name="u_pw" >
					
				</span> 
		
				<span class="hb_order_a"> 정말로 회원 탈퇴 하시겠습니까?

				</span> 
				<a class="hb_order_submit"  style="background-color: rgb(252, 96, 143); color: white;" href="${contextPath}/main/main.do">돌아가기</a>
				 <a class="hb_order_submit" style="background-color:white; color:rgb(252, 96, 143);"  href="javascript:fn_delete_member();">회원 탈퇴</a>
				 	

			</div>
			</form>
		</section>

</body>

</html>
