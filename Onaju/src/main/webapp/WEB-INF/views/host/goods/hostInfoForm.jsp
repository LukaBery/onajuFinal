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
<title>사업장 정보 등록하기</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script>
		window.onload = function() {
			getCurrentPosBtn();
		}

		
</script>
<script type="text/javascript">
	function execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('roadAddress').value = fullRoadAddr;
						searchMap(fullRoadAddr)
      document.getElementById('numberAddress').value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						

					}
				}).open();
	}
</script>



<style>
@charset "utf-8";

table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.host_notice {
	width: 850px;
	padding: 0 auto;
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
}

#noticeBoard-search .noticeSearch-window {
	padding: 15px 0;
	background-color: #f9f7f9;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 564px;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap input {
	height: 28px;
	width: 100%;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #cbdea6;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap input:focus
	{
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap .noticeBtn {
	position: absolute;
	right: -30px;
	top: 0;
	bottom: 0;
	width: 108px;
	padding: 0;
	font-size: 16px;
}

.board-table {
	color: #403e3f;
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

.roomSelect {
	border: 1px solid #7f9b75;
	font-size: 15px;
	height: 28px;
	padding: 1px;
	width: 180px;
	text-align: left;
}

.search_button {
	font-size: 10pt;
	color: #666;
	text-decoration: none;
	display: inline-block;
	width: 150px;
	height: 25px;
	border: 1px solid #cfcfcf;
	background: #dedede;
	color: #626262;
	text-align: center;
}

.board-table th {
	text-align: left;
}

.td-date-writer {
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
	padding: 10px 0px 10px 20px;
	border-top: 1px solid #cbdea6;
}

.th-content {
	min-height: 250px;
}

.th-image {
	min-height: 80px;
}

.noticeBtn2 {
	width: 108px;
	padding: 0;
	font-weight: 400;
}

.noticeBtn2 {
	display: inline-block;
	padding: 5px 30px;
	margin: 30px 10px 30px 10px;
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

.noticeBtn2Box {
	width: 850px;
	margin-left: 600px;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.host_contai {
	width: 850px;
	margin: 50px 0px 50px 0px;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

.file_input {
	margin: 5px;
	font-size: 13px;
}

.hb_rec_13 {
	float: right;
	width: 300px;
	height: 270px;
	border-radius: 10px;
	border: 1px solid #cccccc;
	text-align: center;
}

#Info_tr {
	width: 100%;
	height: 46px;
	border-bottom: 1px solid #cbdea6;
	font-weight: 550;
	font-weight: 550;
	padding:10px 0px 10px 20px;
}
</style>
</head>

<body>
	
<!-- 바디 시작 -->
	<section class="host_notice">
				<form name="addNewhostInfo" action="${contextPath}/host/goods/addHostInfo.do" method="post">
					<div class="host-title">
						<div class="host_contai">
							<h3>사업자 정보 등록</h3>
						</div>
					</div>
					<!-- board list area -->
					<div id="host_notice-list">
						<div class="host_contai">
							<table class="board-table">
								<colgroup>
						            	<col width="25%"/>
										<col width="25%"/>
										<col width="25%"/>
										<col width="25%"/>
								</colgroup>
								<thead>
									<tr>
										<th class="th-title">사업장 상호명</th>
										<td class="notice_title" colspan="3"><input type="text" name="hostInfo_name" id="#"></td>
									</tr>
									<tr>
										<th class="th-title">사업장 타입</th>
										<td class="notice_title">
											<select	class="roomSelect" name="host_type" id="#">
												<option class="roomOption" selected>선택</option>
												<option class="roomOption" value="호텔">호텔</option>
												<option class="roomOption" value="모텔">모텔</option>
												<option class="roomOption" value="펜션">펜션</option>
												<option class="roomOption" value="숙박">숙박</option>
											</select></td>
										<th class="th-title">방 개수</th>
										<td class="notice_title"><input type="text" name="room_count" id="#"></td>
									</tr>
									<tr>
										<th class="th-title">사업자 등록번호</th>
										<td class="notice_title" colspan="2">
											<input type="text" name="" id="sellerNum">
											<input type="hidden" name="h_sellerNum"  id="h_sellerNum" /> 
										</td>
										<td class="notice_title" >
											<input type="button" class="search_button" id="h_sellerNumch" value="등록번호 확인" onclick="h_sellerNumCheck()">
										</td>
									</tr>
									<tr>
										<th class="th-title">계좌번호</th>
										<td class="notice_title" colspan="2"><input type="text" name="h_accountNum" id="h_accountNum">
										</td>
										<td class="notice_title" >
											<input type="button" class="search_button" value="계좌번호 확인" onclick="f()">
										</td>
									</tr>
								</thead>
								</table>
								<div style="width:60%;height:100%; float:left; display:inline-block;">
								<div id="Info_tr">
									<div style="width:30%;height:25px;display:inline-block;">우편 번호</div>
									<div style="width:38%;height:20px;display:inline-block;margin-top:5px;"><input type="text" id="zipcode" name="zipcode" style="font-size:14px;" disabled></div>
									<div style="width:30%;height:25px;display:inline-block;" ><input type="button" class="search_button" value="우편번호 검색" onclick="execDaumPostcode()"></div>
								</div>
								<div id="Info_tr">
									<div style="width:30%;height:25px;display:inline-block;">도로명 주소</div>
									<div style="width:68%;height:20px;display:inline-block;margin-top:5px;"><input type="text" name="roadAddress" id="roadAddress" style="font-size:14px;"disabled
									><input type="hidden" name="longitude" id="longitude"><input type="hidden" name="latitude" id="latitude"></div>
									
								</div>
								<div id="Info_tr">
									<div style="width:30%;height:25px;display:inline-block;">지번 주소</div>
									<div style="width:68%;height:20px;display:inline-block;margin-top:5px;"><input type="text" name="numberAddress" id="numberAddress" style="font-size:14px;"disabled></div>
								</div>
								<div id="Info_tr">
									<div style="width:30%;height:25px;display:inline-block;">나머지 주소</div>
									<div style="width:68%;height:20px;display:inline-block;margin-top:5px;"><input type="text" name="restAddress" id="restAddress"style="font-size:14px;"></div>
								</div>
								</div>
								<div class="hb_rec_13" id="map">지도API</div>			
						</div> 
					</div>
					<div class="noticeBtn2Box">
						<button type="button" class="noticeBtn2 btn-dark2" onclick="location.href='${contextPath}/host/goods/hostInfoList.do'">목록</button>
						<button type="button" class="noticeBtn2 btn-dark2" onClick="addHostInfo()">등록</button>
					</div>		
				</form>
		</section>
</body>
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6e6e34573e04bd152c20de74d0647457&libraries=services,clusterer"></script>

<script>
function addHostInfo(){
	document.getElementById('zipcode').disabled = false;
	document.getElementById('roadAddress').disabled = false;
	document.getElementById('numberAddress').disabled = false;

	
	document.addNewhostInfo.submit();
}

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 2// 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 
//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//지도 타입 변경 컨트롤을 생성한다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도에 확대 축소 컨트롤을 생성한다
var zoomControl = new kakao.maps.ZoomControl();

// 지도의 우측에 확대 축소 컨트롤을 추가한다
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
//주소로 좌표를 검색합니다



function searchMap(kkAddress){
	/* var address = $(kkAddress).val(); */

	
geocoder.addressSearch(kkAddress, function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
    document.getElementById('longitude').setAttribute('value',result[0].y);
    document.getElementById('latitude').setAttribute('value',result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: coords
    });
    mapOption = {
    	    center: new kakao.maps.LatLng(result[0].y, result[0].x), // 지도의 중심좌표
    	    level: 2 // 지도의 확대 레벨
    	};  


    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:6px 0;">사업장 위치</div>'
    });
    infowindow.open(map, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
  
} 
});    
}


function locationLoadSuccess(pos) {
	// 현재 위치 받아오기
	var currentPos = new kakao.maps.LatLng(pos.coords.latitude,
			pos.coords.longitude);

	// 지도 이동(기존 위치와 가깝다면 부드럽게 이동)
	map.panTo(currentPos);

	
};

function locationLoadError(pos) {
	alert('위치 정보를 가져오는데 실패했습니다.');
};

function getCurrentPosBtn() {
	navigator.geolocation.getCurrentPosition(locationLoadSuccess,
			locationLoadError);
};


</script>
<script type="text/javascript">
	
	function h_sellerNumCheck() {
		
		if (sellerNum.value == "") {
			alert("사업자등록번호를 입력하세요.");
			sellerNum.focus();
			return false;
		}
		
		var h_sellerNum = $("#sellerNum").val();
		console.log(h_sellerNum); //삭제 해도 됨
		
		var data = {
			    "b_no": [h_sellerNum] // 사업자번호 "xxxxxxx" 로 조회 시,
			   }; 
			   
			$.ajax({
			  url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=m0zx%2F%2FY%2BDSPQUNE32DxF3BNpij0cZStqPAKXzov8MO6aGGgaDqEUge0myZpY7hwyJfKf9LUfDlssT3BEedT7Jg%3D%3D",  // serviceKey 값을 xxxxxx에 입력
			  type: "POST",
			  data: JSON.stringify(data), // json 을 string으로 변환하여 전송
			  dataType: "JSON",
			  contentType: "application/json",
			  accept: "application/json",
			  success: function(result) {
				      console.log(result);
				      _b_no = result["data"]["0"].b_no;
				      _tax_type = result["data"]["0"].tax_type;  
			     if (_tax_type == '국세청에 등록되지 않은 사업자등록번호입니다.') {
			    	 alert("등록되지 않은 사업자등록번호입니다.");
					}
			     else {
			    	 alert("사용 가능한 사업자 등록번호입니다.");
			    	 $('#h_sellerNumch').prop("disabled", true);
					 $('#sellerNum').prop("disabled", true);
					 $('#h_sellerNum').val(_b_no);
			     }		      
			  },
			  error: function(result) {
			      console.log(result.responseText); //responseText의 에러메세지 확인
			      alert("에러가 발생했습니다.");
			  }
			});
		
	}
		
</script>
</html>