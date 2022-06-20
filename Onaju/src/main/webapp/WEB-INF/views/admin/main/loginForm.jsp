<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<c:if test='${not empty message }'>
<script>
		window.onload = function() {
			result();
		}

		function result() {
			alert("${message}");
		}
	</script>
</c:if>
<style type="text/css">
*{
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
}
body, html{
    height: 100%;
    font-family: 'Poppins',sans-serif;
    font-weight: 400;
}
.ohnaju-Main-container{
    width: 100%;
    margin: 0 auto;
}
.ohnaju-container-login{
    width: 100%;
    min-height: 100vh;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    padding: 15px;
	
}
.wrap-login{
    width: 960px;
    background: #fff;
    border-radius: 10px;
    overflow: hidden;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 177px 130px 33px 95px;
    border:1px solid #666666;
}
.login-pic{
    width: 316px;
}
.login-pic img{
    max-width: 100%;
}
.login-form{
    width: 290px;
}
.login-form-title{
    font-family: 'poppins', sans-serif;
    font-size: 24px;
    color: #333333;
    line-height: 1.2;
    text-align: center;
    font-weight: 700;
    width: 100%;
    display: block;
    padding-bottom: 54px;
}
.wrap-input{
    position: relative;
    width: 100%;
    z-index: 1;
    margin-bottom: 10px;
}
.input{
    font-family: 'Poppins' , sans-serif;
    font-size: 15px;
    font-weight: 500;
    line-height: 1.5;
    color: #666666;
    outline: none;
    border: none;
    display: block;
    width: 100%;
    background: #e6e6e6;
    height: 50px;
    border-radius: 10px;
    padding: 0 30px 0 68px;
}
.focus-input{
    display: block;
    position: absolute;
    border-radius: 25px;
    bottom: 0;
    left: 0;
    z-index: -1;
    width: 100%;
    height: 100%;
    box-shadow: 0px 0px 0px 0px;
    color: rgba(87, 184,70, 0.8);
}


.symbol-input{
    font-size: 15px;
    display: flex;
    align-items: center;
    position: absolute;
    border-radius: 25px;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 100%;
    padding-left: 35px;
    pointer-events: none;
    color: #666666;
    transition: all 0.4s
}


.login-form-btn-container{
    width: 100%;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding-top: 20px;
}
.login-form-btn{
    font-family:'poppins',sans-serif ;
    font-size: 15px;
    line-height: 1.5;
    color: #fff;
    background: #007FFF;
    text-transform: uppercase;
    width: 100%;
    height: 50px;
    border-radius: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0 25px ;
    transition: all 0.4s;
    border: none;

}
.login-form-btn:hover{
    background: #333333;
}
.text-center{
    text-align: center;
}
.txt1{
    font-family: 'poppins';
    font-size: 13px;
    line-height: 1.5;
    color: #666666;
}
.txt2{
    font-family: 'poppins';
    font-size: 13px;
    line-height: 1.5;
    color: #666666;
}
.p-t-1{
    padding-top: 12px;
}
.p-t-2{
    padding-top: 136px;
}

a{
    font-family: 'poppins', sans-serif;
    font-size: 14px;
    line-height: 1.7;
    color: #666666;
    margin: 0px;
    transition: all 0.4s;
    text-decoration: none;
    font-weight: 400;
}
a:focus{
    outline: none !important;
}
a:hover{
    color: #57b846;
}
button{
    outline: none !important;
    border: none;
    background: transparent;
}
button:hover{
    cursor: pointer;
}


</style>
</head>
<body>
    <div class="ohnaju-Main-container">
        <div class="ohnaju-container-login">
            <div class="wrap-login">

                <div class="login-pic">
                    <img src="../resources/assets/img/ohnaju.png" alt="IMG">
                </div>

                <form class="login_form" id="login-form" name="login_form" action="${contextPath }/admin/adminLogin.do" method="post" >
                    <span class="login-form-title">Login</span>
					<div id="err" style="color: red;"></div>
                    <div class="wrap-input">
                        <input type="text" class="input" name="a_id" placeholder="ID 입력" required>
                        <span class="focus-input"></span>
                        <span class="symbol-input">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input">
                        <input type="password" class="input" name="a_pw" placeholder="Password 입력" required>
                        <span class="focus-input"></span>
                        <span class="symbol-input">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="login-form-btn-container">
                        <button class="login-form-btn" type="submit" >Login</button>
                    </div>

                  <div class="text-center p-t-1">
                      <span class="txt1">Forgot</span>
                      <a href="#" class="txt2"> 아이디 / 비밀번호를 잊어버리셨습니까? ?</a>
                  </div>
                  <div class="text-center p-t-2">
                      <a href="${contextPath }/admin/joinForm.do" class="txt2"> 회원가입 하기 <i class="fa fa-long-arrow-right " aria-hidden="true"></i></a>
                  </div>

                </form>

            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
    $(document).ready(function(){
    	$(".login-form-btn").click(function(){
    		var id = document.getElementById('a_id').value;
    		var pwd = document.getElementById('a_pw').value;
    		if (id == '') {
    			alert("아이디를 입력하세요");

    			return false;
    		}
    		if (pwd == '') {
    			alert("비밀번호를 입력하세요");

    			return false;
    		}
    		document.login_form.submit();
    	});
    });
    
    </script>
    
</body>
</html>