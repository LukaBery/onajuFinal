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

<style>


table {
  border-collapse: collapse;
  border-spacing: 0;
}
.one-on-one-notice {
  /* padding: 80px 0; */
  width: 800px;
  /* margin: 0 auto; */
  position: inherit;
  display: inline-block;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

#board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrap {
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 80%;
  max-width: 564px;
}
#board-search .search-window .search-wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board-search .search-window .search-wrap .btn {
  position: absolute;
  right: 0;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board-table a:hover {
  text-decoration: underline;
}
.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

.btn_0 {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn_0-dark {
  background: #FC4E82;
  color: #fff;
}

.btn_0-dark:hover, .btn_0-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn_0-dark {
  background: #FC4E82;
  color: #fff;
}

.btn_0-dark:hover, .btn_0-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
 .one-on-one-container {
      padding:30px 0px;
  width: 800px;
  position: relative;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}



버튼 css 수정할 것
.btn42 {
  width: 108px;
  background: #FC4E82;
  color: #fff;  
  font-size: 15px;
  font-weight: 400px;
  text-align: center;
  border: 1px solid transparent;
  float:right;
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
 .hb_section_total {
        width: 1100px;
        height: 100%;
      }
      
.styled-table{

border-bottom:1px solid #CCCCCC;
border-top:1px solid #CCCCCC;
    border-collapse: separate;
      font-size:13px;
      border-spacing: 0 10px;
 text-align:center;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0 0.15); 
	width: 100%;
	
}

</style>
</head>
<body>
<section class="hb_section_total">
	<div class="customer-help-sidebar">
          <div class="customer-notice">
            <a href="${contextPath}/cs/noticeBoard.do"
              ><button class="customer-help-side-button">공지사항</button></a
            >
          </div>
       
          <div class="customer-one-on-one">
            <a href="${contextPath }/cs/qnaList.do" 
              ><button class="customer-help-side-button">1:1 문의</button></a
            >
          </div>
        </div>
<section class="one-on-one-notice">
        <div class="one-on-one-container">
            <h2>1:1 문의</h2>
        </div>


    <!-- board seach area -->
    
   	<table class="styled-table">
		<colgroup>
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:34%">
			<col style="width:10%">
			<col style="width:16%">
			<col style="width:10%">
		</colgroup>
		<thead>
 			<tr  style="font-weight: bold;">
				<td >번호</td>
				<td >답변 여부</td>
     			<td >질문 번호</td>  
     			<td >제목</td>            
     			<td >작성자</td>
     			<td >작성일</td>
     			<td >조회수</td>			
  			</tr>
		</thead>
		<c:choose>
  			<c:when test="${empty enquireList}" >
    			<tr  height="10">
      				<td colspan="7">
         				<p align="center">
            				<b><span style="font-size:9pt;">조회된 결과가 없습니다.</span></b>
        				</p>
      				</td>  
    			</tr>
  			</c:when>
  			<c:when test="${!empty enquireList}" >
    			<c:forEach  var="enquire" items="${enquireList }" varStatus="reviewNum" >
     				<tr style="cursor: pointer;" onclick="location.href='${contextPath}/cs/enquireDetail.do?enquire_NO=${enquire.enquire_NO}'">
						<td >${reviewNum.count}</td>
						<td>${enquire.reply_yn}</td>
						<td>${enquire.enquire_NO }</td>
						<td>${enquire.title }</td>
						<td>${enquire.u_id }</td>
						
						<fmt:setLocale value="en_US" scope="session" />
								<fmt:parseDate var="creDate_" value="${enquire.creDate}"
									pattern="yyyy-MM-dd hh:mm:ss.SSS" />
								<fmt:formatDate var="creDate" value="${creDate_}"
									pattern="yyyy년 MM월 dd일" />
						<td>${creDate}</td>   
						<td>${enquire.hit_cnt }</td>      								  
					</tr>
    			</c:forEach>
     		</c:when>  		
    	</c:choose>
    </table>

	</section>
	</section>
</body>
</html>