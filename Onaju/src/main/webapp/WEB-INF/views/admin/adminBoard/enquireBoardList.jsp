<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%> 
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<style type="text/css">
.noticeBoard-row{
	display: flex;
}
.noticeBoard-row-2{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.noticeBoard-row-3{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.noticeBoard-row-col1{
	width: 200px; 
	height: 50px; 
	color: #ffffff;
	border: 1px solid #000033;
	border-bottom: 1px solid #ffffff; 
	background-color: #000033; 
	display:flex; 
	align-items: center;
}
.noticeBoard-row-col2{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.noticeBoard-row-col3{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
	border-bottom: none;
}
.noticeBoard-row-col1 div{
	margin-left: 20px;
}
.noticeBoard-row-col2 div{
	margin-left: 20px;
}
.noticeBoard-row-col2 div input{
	width: 330px;
}
.noticeBoard-row-2 div{
	width: 150px; 
	height: 50px; 
	margin: 5px 5px 5px 5px;
}
.noticeBoard-row-2 div a{
	display:block; 
	width:130px; 
	line-height:45px; 
	text-align:center; 
	border-radius: 5px; 
	border: 1px solid #000033; 
	text-decoration: none;
	background-color: #000033;
	color: white;
}
.noticeBoard-row-2 div input{
	width: 130px; 
	height: 45px; 
	border-radius: 5px; 
	border: none; 
	background-color: #FF3333; 
	color: white;
}
.noticeBoard-row-3 div button{
	width: 100px; 
	height: 40px; 
	border-radius: 5px; 
	border: none; 
	background-color: #ff3333; 
	color: white;
}
.noticeBoard-row-col2 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.noticeBoard-row-col2 div select{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.noticeBoard-row-col3 div input{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.styled-table{
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0 0.15); 
	width: 100%;
	
}
.styled-table thead tr{
	background-color: #000033;
	color: #ffffff;
	text-align: left;
}
.styled-table thead tr td{
	font-size: 14px;
}
.styled-table th, .styled-table td {
	padding: 12px 15px;
}
.styled-table tbody tr{
	border-bottom: 1px solid #dddddd;
	font-size: 13px;
}
.styled-table tbody tr:nth-of-type(even){
	background-color: #f3f3f3;
}
.styled-table tbody tr:nth-of-type{
	border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row{
	font-weight: bold;
	color: #009879;
}
.noticeBoard-row-col3 div button{
	width: 75px;
	height: 30px;
	border-radius: 15px; 
	border: none;
	background-color: #f6f6f6; 
	color: #666666;
	margin: 0px 5px 0px 5px;
	cursor: pointer;
}
</style>
</head>
<body>
<section>
	<div class="container-fluid px-4" style="margin: 15px 0px 15px 0px;">
		<article><h3 class="mt-4"><strong>1:1 질문 관리</strong></h3></article>
	</div>
	<article>
		<form id="searchVO" action="${contextPath }/admin/enquireBoard.do" method="get">	
			<div class="noticeBoard-row">
				<div class="noticeBoard-row-col1"><div>일자</div></div>
				<div class="noticeBoard-row-col3">
				<div>
					<label for="startDate">시작날짜&nbsp;:&nbsp;</label><input class="datepicker" id="startDate" name="join_startDate" autocomplete=off value='<c:out value="${pageMaker.cri.join_startDate }" />'>&emsp;
					<label for="endDate">종료날짜&nbsp;:&nbsp;</label><input class="datepicker" id="endDate" name="join_endDate" autocomplete=off value='<c:out value="${pageMaker.cri.join_endDate }" />'>&emsp; 
			
					<button type="button" id="settingDate1" value="yesterday">어제</button>
					<button type="button" id="settingDate2" value="today">오늘</button>
					<button type="button" id="settingDate3" value="month">1개월</button>
					<button type="button" id="settingDate4" value="reset">사용안함</button>
				</div></div>
			</div>
			<div class="noticeBoard-row">
				<div class="noticeBoard-row-col1"><div>답변 여부</div></div>
				<div class="noticeBoard-row-col2">
					<div>
						<select name="reply_yn">
							<option value="">답변 여부</option>
							<option value="Y" <c:out value="${pageMaker.cri.reply_yn eq 'Y'?'selected':'' }" />>답변</option>
							<option value="N"<c:out value="${pageMaker.cri.reply_yn eq 'N'?'selected':'' }" />>미답변</option>
						</select>
					</div>
				</div>
				<div class="noticeBoard-row-col1"><div>검색</div></div>
				<div class="noticeBoard-row-col2"><div><input type="search" name="title" value='<c:out value="${pageMaker.cri.title }" />'></div></div>
			</div>
			<div class="noticeBoard-row-3">
				<div><button class="searchButton">조회</button></div>
			</div>
		</form>
	
		<div align="right">
			<div>드롭다운박스</div>
		</div>
	</article>
</section>
<section>
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
 			<tr>
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
     				<tr style="cursor: pointer;" class="move" value='<c:out value="${enquire.enquire_NO }" />'>
						<td>${reviewNum.count}</td>
						<td>${enquire.reply_yn}</td>
						<td>${enquire.enquire_NO }</td>
						<td>${enquire.title }</td>
						<td>${enquire.u_id }</td>
						<td>${enquire.creDate }</td>   
						<td>${enquire.hit_cnt }</td>      								  
					</tr>
    			</c:forEach>
     		</c:when>  		
    	</c:choose>
    </table>
</section>
<section>
	<div class="pull-right">
		<ul class="pagination">
			<c:if test="${pageMaker.prev }">
				<li class="paginate_button previous"><a href="${pageMaker.startPage - 1 }">Previous</a></li>
			</c:if>
			
			<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<li class="paginate_button ${pageMaker.cri.pageNum == num ? 'active' : '' }"><a href="${num }">${num }</a></li>
			</c:forEach>
			
			<c:if test="${pageMaker.next }">
				<li class="paginate_button next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
			</c:if>
		</ul>
		<form id="actionForm" action="${contextPath }/admin/enquireBoard.do" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }" />
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }" />
			<input type="hidden" name="join_startDate" value='<c:out value="${pageMaker.cri.join_startDate }" />'>
			<input type="hidden" name="join_endDate" value='<c:out value="${pageMaker.cri.join_endDate }"/>' >
			<input type="hidden" name="reply_yn" value='<c:out value="${pageMaker.cri.reply_yn }"/>'>
			<input type="hidden" name="title" value='<c:out value="${pageMaker.cri.title }"/>'>
		</form>
	</div>
</section>

<div class="noticeBoard-row-2">
	<div><a class="a1" href="${contextPath}/admin/noticeForm.do">글쓰기</a></div>
	<div><input class="a2" type="submit" value="선택삭제"></div>
</div>

<script type="text/javascript">
// 날짜 기간 설정 (Jquery datepicker 이용)
$( function() {
    var dateFormat = "yyyy-MM-dd";
      from = $( "#startDate" )
        .datepicker({
          defaultDate: "+1W",
          changeMonth: true,
          numberOfMonths: 1,
          maxDate : "+0M +0D",
          format:"yyyy-MM-dd"
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = $( "#endDate" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 1,
        maxDate : "+0M +0D",
        format:"yyyy-MM-dd"
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });
 
    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }
 
      return date;
    }
});

// 기간이 설정된 버튼 클릭 시 datepicker에 값을 넣는 방식
$(function(){
	var setdate1 = $("#settingDate1").val();
	var setdate2 = $("#settingDate2").val();
	var setdate3 = $("#settingDate3").val();
	var setdate4 = $("#settingDate4").val();
	
	$.datepicker.regional['ko'] = {
	        closeText: '닫기',
	        prevText: '이전달',
	        nextText: '다음달',
	        monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
	        '7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
	        monthNamesShort: ['1월','2월','3월','4월','5월','6월',
	        '7월','8월','9월','10월','11월','12월'],
	        dayNames: ['일','월','화','수','목','금','토'],
	        dayNamesShort: ['일','월','화','수','목','금','토'],
	        dayNamesMin: ['일','월','화','수','목','금','토'],
	        weekHeader: 'Wk',
	        dateFormat: 'yy-mm-dd',
	        firstDay: 0,
	        isRTL: false,
	        showMonthAfterYear: true,
	        yearSuffix: '',
	        changeMonth: true,
	        changeYear: true,
	        showButtonPanel: true,
	        yearRange: 'c-99:c+99',
	};
	$.datepicker.setDefaults($.datepicker.regional['ko']);
	
	var from = $("#startDate").datepicker();
	var to = $("#endDate").datepicker();
	$("#settingDate1").click(function(){
		
		switch(setdate1){
		case "yesterday" :
			from = $("#startDate").datepicker("setDate", "-1D");
			to = $("#endDate").datepicker("setDate", "-1D");
		break
		}
	});
	$("#settingDate2").click(function(){
		
		switch(setdate2){
		case "today" :
			 
			from = $("#startDate").datepicker("setDate", "today");
			to = $("#endDate").datepicker("setDate", "today");
		break
		}
	});
	$("#settingDate3").click(function(){
		
		switch(setdate3){
		case "month" :
			from = $("#startDate").datepicker("setDate", "-1M");
			to = $("#endDate").datepicker("setDate", "today");
		break
		}
	});
	$("#settingDate4").click(function(){
		
		switch(setdate4){
		case "reset" :
			from = $("#startDate").datepicker("setDate", null);
			to = $("#endDate").datepicker("setDate", null);
		break
		}
	});
});
</script>
<script type="text/javascript">
$(document).ready(function(){
	var actionForm = $("#actionForm");
$(".move").on("click",function(e){
	alert("상세");
	e.preventDefault();
	actionForm.append("<input type='hidden' name='enquire_NO' value='"+$(this).attr("value")+"'>");
	actionForm.attr("action", "${contextPath}/admin/enquireDetail.do");
	actionForm.submit();
});
});

var searchVO = $("#searchVO");

$(".searchButton").on("click", function(e){
	alert("클릭");
	searchVO.find("input[name='pageNum']").val("1");
	
	searchVO.submit();
});
var actionForm = $("#actionForm");

$(".paginate_button a").on("click", function(e){
	e.preventDefault();
	console.log('click');
	
	actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	actionForm.submit();
});
</script>
</body>
</html>