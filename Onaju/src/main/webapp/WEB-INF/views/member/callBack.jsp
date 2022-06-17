
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>

<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script>
	var naverLogin = new naver.LoginWithNaverId({
		clientId: "cwdVeGhLyV8ZpeAvjTHM", // 본인걸로 수정, 띄어쓰기 금지.
		callbackUrl: "${contextPath}/member/login.do",
		isPopup: false,
		callbackHandle: true
	});
	naverLogin.init();

	window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {

	if (status) {
		 var id = naverLogin.user.getId();
		var email = naverLogin.user.getEmail();
		var str = email.split("@");
        var mail1 = str[0];
        var mail2 = str[1];
        console.log('################'+str[0]+','+str[1]);
		var name = naverLogin.user.getName();

		$.ajax({
			type: 'post',
			url: '${contextPath}/member/naverSave',
			data: {'s_email1':mail1,'s_email2':mail2, 's_id':id, 's_name':name},
			dataType: 'text',
			success: function(result) {
				if(result=='ok') {
					console.log('성공')
					location.replace("${contextPath}/main/main.do") 
				} else if(result=='no') {
					console.log('실패')
					location.replace("${contextPath}/member/login.do")
				}
			},
			error: function(result) {
				console.log('오류 발생')
			}
		})

	} else {
		console.log("callback 처리에 실패하였습니다.");
	}
	});
});
</script>
</body>
</html>