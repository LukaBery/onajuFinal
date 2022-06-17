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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(function() {
	$("h3").click(function() {
		$(this).next().toggle(100, function() {

		});
	});
});

</script>
<style>


h2{
	margin:0px;
}

.title-area {
  text-align: center;
  padding: 50px 0;
}
.s1 {
  background-color: #white;
  border-bottom: 1px solid #ccc;
  padding: 10px 20px;
  position: relative;
}
.s1 ul {
  margin-top: 20px;
}
.s1 ul li {
  border-bottom: 1px solid #e0e0e0;
  padding-bottom: 10px;
  margin-bottom: 20px;
}
.s1 ul li h3 {
  font-size: 16px;
}
.question_toggleA {
  display: none;
}



* {
  list-style: none;
  text-decoration: none;
}


 .hb_section_total {
        width: 1100px;
        height: 100%;
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
      .one-on-one-notice {
  /* padding: 80px 0; */
  width: 800px;
  /* margin: 0 auto; */
  position: inherit;
  display: inline-block;
}
</style>

</head>
<body>
<section class="hb_section_total">

<div class="customer-help-sidebar"> <!-- 사이드바 -->
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
<div class="one-on-one-notice">
  <section class="s1">
    <div class="title-area">
      <h1>자주하는 질문</h1>
    </div>
    <nav>
      <ul>
        <li>
          <h3 class="question_toggle">Q 예약 취소는 어떻게 해야 되나요?</h3>
          <p class="question_toggleA">
             A : 에약 취소의 답변입니다.
          </p>
        </li>
        <li>
          <h3 class="question_toggle">Q 숙박 예약을 변경하고 싶어요.</h3>
          <p class="question_toggleA">
             A : 숙박 예약 변경의 답변입니다.
          </p>
        </li>
        <li>
          <h3 class="question_toggle">Q 회원 가입을 해야지만 예약할 수 있나요?</h3>
          <p class="question_toggleA">
             A : 오나주는 회원가입을 해야지만 예약할 수 있습니다.
          </p>
        </li>
        <li>
          <h3 class="question_toggle">Q ID와 패스워드가 기억나지 않아요.</h3>
          <p class="question_toggleA">
             A : ID 또는 패스워드가 기억나지 않을 경우에는 로그인페이지의 "아이디 찾기" 또는 "비밀번호 찾기" 버튼을 이용하기시 바랍니다.
          </p>
        </li>
        <li>
          <h3 class="question_toggle">Q 질문 +</h3>
          <p class="question_toggleA">
             A : 답변
          </p>
        </li>
        <li>
          <h3 class="question_toggle">Q 질문 +</h3>
          <p class="question_toggleA">
             A : 답변
          </p>
        </li>
      </ul>
    </nav>
  </section>
 
</div>
</section>
</body>
</html>