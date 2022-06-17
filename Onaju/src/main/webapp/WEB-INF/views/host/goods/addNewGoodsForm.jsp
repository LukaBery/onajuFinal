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
<title>상품 등록</title>

<script>

function hostFn(){
	var h_code = $("#h_code").val();
 
	$.ajax({
		type : "get",
		async : false, //false인 경우 동기식으로 처리한다.
		url : "${contextPath}/host/goods/hostInfoChange.do",
		data : {h_code : h_code},
		success : function(data) {
			console.log(data); // 출력됨
			hostInfoVO = data.hostInfoVO; 
			_hostInfo_name = hostInfoVO.hostInfo_name;
			_zipcode = hostInfoVO.zipcode;
			_roadAddress = hostInfoVO.roadAddress;
			_numberAddress = hostInfoVO.numberAddress;
			_restAddress = hostInfoVO.restAddress;
			_host_type = hostInfoVO.host_type;
			document.getElementById("hostInfo_name").innerHTML=_hostInfo_name;
			document.getElementById("zipcode").innerHTML=_zipcode;
			document.getElementById("roadAddress").innerHTML=_roadAddress;
			document.getElementById("numberAddress").innerHTML=_numberAddress;
			document.getElementById("restAddress").innerHTML=_restAddress;
			document.getElementById("host_type").innerHTML=_host_type;			
			
		},
		error : function(data) {
			alert("에러가 발생했습니다."+data);
		},
		complete : function(data) {
			//alert("작업을완료 했습니다");
			
		}
	}); //end ajax	
}

</script>

<c:if test='${not empty message }'>
<script>


window.onload=function()
{
  result();
}

function result(){
	alert("${message}");
}
</script>
</c:if>
<script type="text/javascript">


var cnt=0;
function fn_addFile(){
	  if(cnt == 0){
		  $("#d_file").append("<br>"+"<input  type='file' name='main_image' id='f_main_image' />");	  
	  }else{
		  $("#d_file").append("<br>"+"<input  type='file' name='detail_image"+cnt+"' />");
	  }
	
	cnt++;
}

 function fn_add_new_goods(obj){
		 fileName = $('#f_main_image').val();
		 if(fileName != null && fileName != undefined){
			 obj.submit();
		 }else{
			 alert("메인 이미지는 반드시 첨부해야 합니다.");
			 return;
		 }
		 
	}		
	
</script>




<style>

*{
	margin:0; padding:0;
	font-size:15px; 
}

/* 테이블쪽 디자인 */
table {
	border-collapse: collapse;
	border-spacing: 0;
} 

section.host_notice {
	width : 900px;
	padding: 0 auto;
	height: 1000px;
	margin-left: 50px;
}

.page-title {
	margin-bottom: 60px;
}

.host-title h3 {
	font-size: 30px;
	color: #7f9b75;
	font-weight: 570;
	text-align: center;
	margin: 50px 0 50px 0;
}

.board-table {
	color:#403e3f;
	font-size: 14px;
	width: 100%;
	border-top: 1px solid #cbdea6;;
	border-bottom: 1px solid #cbdea6;;
}

.board-table a {
	color: #403e3f;
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
	
	/* width: 100px; */
	text-align: center;
}



.board-table th, .board-table td {
	padding: 5px 0 5px 5px;
	border : 1px solid #cbdea6;
}

.board-table tbody td {
	border-top: 1px solid #cbdea6;
	text-align: center;
}

.board-table tbody th {
	padding-left: 28px;
	padding-right: 14px;
	border-top: 1px solid #cbdea6;
	text-align: left;
}

.board-table tbody th p {
	display: none;
}

.noticeBtn {
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

.btn-dark {
	background: #7f9b75;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #cbdea6;
	border-color: #cbdea6;
	color: #fff;
}

.noticeBtn2 {
	width: 108px;
	padding: 0;
	font-weight: 400;
}
.noticeBtn2 {
	display: inline-block;
	padding: 5px 30px;
	margin: 30px 0 30px 650px;
	font-size: 16px;
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

.btn-dark2 {
	background: #7f9b75;
	color: #fff;
}

.btn-dark2:hover, .btn-dark2:focus {
	background: #cbdea6;
	border-color: #cbdea6;
	color: #fff;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.host_contai {
	width: 750px;
	margin: 0 auto;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

/* 테이블쪽 디자인 */


ul{list-style:none;}

.tabmenu{ 
	max-width:800px; 
	margin: 0 auto; 
	position:relative; 
}
.tabmenu ul li{
	display:  inline-block;
	width:33.3%; 
	float:left;  
	text-align:center; 
	background :#f9f9f9;
	line-height:40px;
}

.tabmenu input {
	font-size: 15px;
	
	}

.tabmenu .tabSelect{
	display:none;
	}

.tabCon{
	width:800px;
	display:none; 
	text-align:left; 
	padding: 20px;
	position:absolute; 
	left:0; top:40px; 
 	box-sizing: border-box; 
	border : 5px solid #f9f9f9;
}

.tabmenu .tabRoom{
	display:block;
	width:100%; 
	height:40px;
	line-height:40px;
	border: 1px solid #f9f9f9;
	background: #cbdea6;
	color:#403e3f;
  
}
.tabmenu .tabSelect:checked ~ .tabRoom{
	background:#7f9b75;
	color: #fff;
	border: 1px solid #fff;
}
.tabmenu .tabSelect:checked ~ .tabCon{
	display:block;
}

.tabmenu .roomSelect {
	border: 1px solid #7f9b75;
    font-size: 15px;
    height: 28px;
    padding: 1px;
    width: 160px;
    float: left;
    text-align: left;

}
.tabmenu #content {
	min-height:150px;
	font-size:15px;
	
}

.option_check {
	background: #fff;
    color:#403e3f;
    width: 15px;
    margin-right: 10px;

}


.noticeBtn2Box {
	float: right;
}


.image_button {
	width:70px;
	}


#kingpreview {
	border:0px;
	width:400px;
	height:200px;
}



</style>

</head>
<body>

<section class="host_notice">
					<div class="host-title">
						<div class="host_contai">
							<h3>객실 등록</h3>
						</div>
					</div>
					
	<form name="addNewGoods" action="${contextPath}/host/goods/addNewGoods.do" method="post"  enctype="multipart/form-data">
	<input type="hidden" name="h_id" value="${hostInfo.h_id }">
		<div class="tabmenu">
			<ul>
				<li id="tab1" class="btnCon">
					<input type="radio" class="tabSelect" checked name="tabmenu" id="tabmenu1"> 
					<label for="tabmenu1" class="tabRoom">객실 기본 정보</label>
						<div class="tabCon">
							 <table class="board-table">
								<colgroup>
					            	<col width="25%"/>
									<col width="25%"/>
									<col width="25%"/>
									<col width="25%"/>
								</colgroup>
								<thead>
									<tr>
										<th class="th-date">제목</th>
										<td class="td-date-writer" colspan="3"><input type="text"  name="title" id="title" placeholder="객실에 대한 간략한 소개글" ></td>
									</tr>
									<tr>
										<th class="th-date">개실 타입</th>
										<td class="td-date-writer"><input type="text" name="room_type" id="#"></td>
										<th class="th-date">객실 번호</th>
										<td class="td-date-writer"><input type="number" name="room_number" id="#" placeholder="숫자를 입력해주세요."></td>
									</tr>
									<tr>
										<th class="th-date">기본 입실 시간</th>
										<td class="td-date-writer"><input type="time" value="15:00" name="able_checkIn" id="#"></td>
										<!-- 다민시 작성 <input type="time" name="able_checkIn" id="#"> -->
										<th class="th-date">기본 퇴실 시간</th>
										<td class="td-date-writer"><input type="time" value="11:00" name="able_checkOut" id="#"></td>
									</tr>
									<tr>
										<th class="th-date">객실요금</th>
										<td class="td-date-writer">
											<input type="text" placeholder="요금을 입력해주세요." name="room_fee" id="recycle_result_amt" value="" onkeyup="inputNumberFormat(this)" />
										</td>
										<th class="th-date">객실 사용 여부</th>
										<td class="td-date-writer">
											<select	class="roomSelect" name="room_status">
												<option class="roomOption" value="Y">활성</option>
												<option class="roomOption" value="N">비활성</option>
											</select>	
										</td>
									</tr>
									<tr>
										<th class="th-date">사업장 일련번호</th>
										<td class="td-date-writer" colspan="">
											<select class="roomSelect" id="h_code" name="h_code" onchange="hostFn()">
												<option class="roomOption"  value="">선택</option>
												<c:forEach var="list" items="${hostInfoFormList }"> 
													<option class="roomOption"  value="${list.h_code}">${list.h_code}	
													</option>
											   </c:forEach>
											</select>
										</td> 
										<th class="th-date">사업장 타입</th>
										<td class="td-date-writer">
											<p id="host_type"></p>									
										</td>
									</tr>
									<tr>
										<th class="th-date">사업장 상호명</th>
										<td class="td-date-writer" colspan="3">
											<p id="hostInfo_name"></p>
										</td>
									</tr>
									<tr>
										<th class="th-date">우편 번호</th>
										<td class="td-date-writer" colspan="3">
											<p id="zipcode"></p>
										</td>
									</tr>
									<tr>
										<th class="th-date">도로명 주소</th>
										<td class="td-date-writer" colspan="3">
											<p id="roadAddress"></p>
										</td>
									</tr>
									<tr>
										<th class="th-date">지번 주소</th>
										<td class="td-date-writer" colspan="3">
											<p id="numberAddress"></p>
										</td>
									</tr>
									<tr>
										<th class="th-date">나머지 주소</th>
										<td class="td-date-writer" colspan="3">
											<p id="restAddress"></p>
										</td>
									</tr>
								</thead>
							</table>
								
							<div class="noticeBtn2Box">
								<button type="button" class="noticeBtn2 btn-dark2" onClick="">등록</button>
							</div>
						</div>
				</li>
				<li id="tab2" class="btnCon">
					<input type="radio" class="tabSelect" name="tabmenu" id="tabmenu2"> 
					<label for="tabmenu2"  class="tabRoom">객실 상세 정보</label>
						 <div class="tabCon">
							<table class="board-table">
								<colgroup>
					            	<col width="25%"/>
									<col width="25%"/>
									<col width="25%"/>
									<col width="25%"/>
								</colgroup>
							<thead>
								<tr>
									<th class="th-title">최소 인원</th>
									<td class="notice_title"><input type="text" name="min_number" id="#"></td>
									<th class="th-title">최대 인원</th>
									<td class="notice_title"><input type="text" name="max_number" id="#"></td>
								</tr>
								<tr>
									<th class="th-title">침대 사이즈</th>
									<td class="notice_title">
										<select	class="roomSelect" name="bed_type" id="#">
											<option class="roomOption">선택</option>
											<option class="roomOption" value="싱글">싱글</option>
											<option class="roomOption" value="더블">더블</option>
											<option class="roomOption" value="퀸">퀸</option>
											<option class="roomOption" value="킹">킹</option>
											<option class="roomOption" value="라지킹">라지킹</option>
										</select></td>
									<th class="th-title">침대 개수</th>
									<td class="notice_title"><input type="text" name="bed_count" id="#"></td>
								</tr>
								<tr>
									<th class="th-title">욕실 개수</th>
									<td class="notice_title"><input type="text" name="bath_count" id="#"></td>
									<th class="th-title"></th>
									<td class="notice_title"></td>
								</tr>
								<tr>
									<th class="th-title" rowspan="7">옵션 사항</th> 
									<td class="notice_title">	
										<label>
											<input type="checkbox" class="option_check"  name="tv" value="Y" id="tv" checked> 
												TV
										</label>
									</td>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="kitchen" value="Y" id="kitchen" checked> 
											주방
										</label>
									</td>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="pickup" value="Y" id="pickup" checked> 
											픽업 가능 여부
										</label>	
									</td>
								</tr>
								<tr>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="wifi" value="Y" id="wifi" checked> 
											무선 인터넷
										</label>
									</td>
										
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="elevator" value="Y" id="elevator" checked> 
											엘레베이터
										</label>	
									</td>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="party_check" value="Y" id="party_check" checked> 
											파티 가능 여부
										</label>
									</td>
								</tr>	
								<tr>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="refrigerator" value="Y" id="refrigerator" checked> 
											냉장고
										</label>
									</td>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="barbecue" value="Y" id="barbecue" checked> 
											바베큐
										</label>
									</td>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="pet" value="Y" id="pet" checked> 
											반려동물
										</label>
									</td>
								</tr>
								<tr>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="hairdryer" value="Y" id="hairdryer" checked> 
											드라이기
										</label>
									</td>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="pool" value="Y" id="pool" checked> 
											수영장
										</label>
									</td>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="smoking" value="Y" id="smoking" checked> 
											흡연 가능 여부
										</label>
									</td>
								</tr>
								<tr>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="dryer" value="Y" id="dryer" checked> 
											건조기
										</label>
									</td>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="washer" value="Y" id="washer" checked> 
											세탁기
										</label>
									</td>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="parking" value="Y" id="parking" checked> 
											주차 가능 여부
										</label>
									</td>
								</tr>
								<tr>
									<td class="notice_title">
										<label>
											<input type="checkbox" class="option_check"  name="aircon" value="Y" id="aircon" checked> 
										에어컨
										</label>
									</td>
									<td class="notice_title"></td>
									<td class="notice_title"></td>
								</tr>
								<tr>
									<td class="notice_title">
										
										<label>
											<input type="checkbox" class="option_check"  name="heater" value="Y" id="heater" checked> 
										난방
										</label>
									</td>
									<td class="notice_title"></td>
									<td class="notice_title"></td>
								</tr>
								<tr>
									<th class="th-date">숙소 설명</th>
									<td class="td-date-writer" colspan="3">
										<textarea name="content" id="content" placeholder="객실 소개글을 작성해 주세요"></textarea> 
									</td>
								</tr>
							</thead>					
						</table>
						<div class="noticeBtn2Box">
							<button type="button" class="noticeBtn2 btn-dark2" onClick="">등록</button>
						</div>
					</div> 
				</li>
				<li id="tab3" class="btnCon">
					<input type="radio" class="tabSelect" name="tabmenu" id="tabmenu3"> 
					<label for="tabmenu3" class="tabRoom">이미지 정보</label>
					<div class="tabCon">
						<table class="board-table">
							<colgroup>
					            <col width="25%" />
					    		<col width="auto" />
							</colgroup>
							<thead>
								<tr>
									<th class="th-date">이미지
										<input class="image_button" type="button"  value="파일 추가" onClick="fn_addFile()"/>
									</th>
									<td class="td-date-writer" colspan="6">
										<div id="d_file"> </div>
									</td>
								</tr>
							</thead>
						</table>
						<div class="noticeBtn2Box">
							<button type="submit" class="noticeBtn2 btn-dark2"  onClick="fn_add_new_goods(this.form)">등록</button>
						</div>
					</div> 
				</li>
			</ul>
		</div>
	</form>
</section>
</body>
</html>