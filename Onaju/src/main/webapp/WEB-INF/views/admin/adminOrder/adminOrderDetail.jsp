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
<style type="text/css">
.mem-item1{
	width: 1140px; 
	height: 50px; 
	display:flex; 
	align-items: center;
	border-bottom: 1px solid #000033;
}
.mem-item2{
	border-radius: 5px;
}
.mem-item2-chil{
	display: flex;
}
.mem-item2-chil-1{
	width: 200px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
	border-bottom: none;
}
.mem-item2-chil-2{
	width: 370px;
	height: 50px;
	display:flex; 
	align-items: center;
	border-bottom: 1px solid #E6E6E6; 
	
}
.mem-item2-chil-3{
	width: 940px;
	height: 50px;
	display:flex; 
	align-items: center;
	border-bottom: 1px solid #E6E6E6; 
}
.mem-item2-chil-4{
	width: 200px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
}
.mem-item2-chil-5{
	width: 370px;
	height: 50px;
	display:flex; 
	align-items: center;
	border-bottom: 1px solid #E6E6E6; 	
}
.mem-item2-chil-1 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
}
.mem-item2-chil-2 div{
	margin-left: 20px;
}
.mem-item2-chil-3 div{
	margin-left: 20px;
}
.mem-item2-chil-4 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
}
.mem-item2-chil-5 div{
	margin-left: 20px;
}
.mem-item2-chil-6{
	width: 200px;
	height: 400px;
	display:flex; 
	align-items: center;
	border: 1px solid #000033; 
	background-color: #000033;
}
#hostmap{
	width: 940px; 
	height: 400px;
}
.mem-item2-chil-7{
	width: 940px;
	height: 400px;
	align-items: center;
	border: 1px solid #000033; 
	background-color: #000033;
}
.mem-item2-chil-6 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
}
.mem-item5{
	width: 1140px;
	display: flex;
	justify-content: center;
	margin: 40px 0 40px 0;
}
.mem-item5 div{
	margin: 0px 10px 0px 10px;
}
.a1{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	border-radius: 5px; 
	border: none; 
	text-decoration: none;
	background: #ff3333;
	color: #ffffff;	
}
.a2{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	border-radius: 5px; 
	border: 1px solid #666666; 
	text-decoration: none;
	background: #ffffff;
	color: #666666;	
}
.a3{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	border-radius: 5px; 
	border: none; 
	text-decoration: none;
	background: #000033;
	color: #ffffff;	
}

</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e860fe5b0789947d9b32c332867dedc4&libraries=services,clusterer"></script>

</head>
<body>
		<div class="mem-item1"><div><h3>주문 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>주문번호</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.order_code }</div></div>
				<div class="mem-item2-chil-1"><div>예약자아이디</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.u_id }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>예약자명</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.order_name }</div></div>
				<div class="mem-item2-chil-1"><div>예약자 이메일</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.order_email1 }${orderVO.order_email2 }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>예약자 전화번호</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.order_phone }</div></div>
				<div class="mem-item2-chil-1"><div>예약 기간</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.checkIn_date } ~ ${orderVO.checkOut_date }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>예약 인원</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.people_count }</div></div>
				<div class="mem-item2-chil-1"><div>결제 상태</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.pay_state }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>결제 방식</div></div>
				<div class="mem-item2-chil-5"><div>${orderVO.pay_type }</div></div>
				<div class="mem-item2-chil-4"><div>결제 금액</div></div>
				<div class="mem-item2-chil-5"><div>${orderVO.total }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>주문 상태</div></div>
				<div class="mem-item2-chil-5"><div>${orderVO.reservation_state }</div></div>
				<div class="mem-item2-chil-4"><div>숙소 이용 정보</div></div>
				<div class="mem-item2-chil-5"><div>이용전</div></div>
			</div>
		</div>
		
		<div class="mem-item1"><div><h3>숙소 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>예약 숙소명</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.hostInfo_name }</div></div>
				<div class="mem-item2-chil-1"><div>예약 숙소타입</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.host_type }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>예약 호실</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.room_number }</div></div>
				<div class="mem-item2-chil-1"><div>예약 호실 타입</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.room_type }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>숙소 전화번호</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.deputy_phone }</div></div>
				<div class="mem-item2-chil-1"><div>숙소 이메일</div></div>
				<div class="mem-item2-chil-2"><div>${orderVO.h_email1 }${orderVO.h_email2 }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>예약 숙소 주소</div></div>
				<div class="mem-item2-chil-3"><div>${orderVO.zipcode }${orderVO.roadAddress }${orderVO.numberAddress }${orderVO.restAddress }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>체크인 시간</div></div>
				<div class="mem-item2-chil-5"><div>${orderVO.able_checkIn }</div></div>
				<div class="mem-item2-chil-4"><div>체크아웃 시간</div></div>
				<div class="mem-item2-chil-5"><div>${orderVO.able_checkOut }</div></div>
			</div>
		</div>
		
		<div class="mem-item1"><div><h3>숙소 위치</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-6"><div>숙소 위치</div></div>
				<div class="mem-item2-chil-7"><div id="hostmap">지도api</div></div>
			</div>
		</div>
		
		<div class="mem-item1"><div><h3>취소 및 환불 요청 정보</h3></div></div>
		<div class="mem-item2">
			<div>
				<div>
				</div>
			</div>
		</div>
		<div class="mem-item5">
			<div><button class="a2" type="submit" id="goodsList" data-oper="list">돌아가기</button></div>
			<div><button class="a3" value='<c:out value="${orderVO.order_code }" />'>수정하기</button></div>
			<div><a class="a1">취소하기</a></div>
			
		</div>
		<form id="operForm" action="${contextPath }/admin/orderList.do" method="get">
			<input type="hidden" name="pageNum" value="${cri.pageNum }" />
			<input type="hidden" name="amount" value="${cri.amount }" />
			<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
			<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }"/>' >
			<input type="hidden" name="pay_state2" value='<c:out value="${cri.pay_state2 }"/>'>
			<input type="hidden" name="u_name2" value='<c:out value="${cri.u_name2 }"/>'>
			<input type="hidden" name="u_id2" value='<c:out value="${cri.u_id2 }"/>'>
			<input type="hidden" name="order_code2" value='<c:out value="${cri.order_code2 }"/>'>
		</form>
<script>
var container = document.getElementById('hostmap'); 
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};
var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${orderVO.roadAddress}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">숙소 위치</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
<script type="text/javascript">
$('.a1').click(function(){
	var order_code = ${orderVO.order_code};
	$.ajax({
		url:'${contextPath}/admin/orderCancel.do',
		type: 'post',
		data:{"order_code": order_code},
		success:function(data = 1){
			alert("취소 완료");
		},
		error:function(data, textstatus){
			alert("에러 발생");
		}
	})
})



</script>
<script type="text/javascript">

$(document).ready(function(){
	var operForm = $("#operForm");
	$(".a2").on("click",function(e){
		
		e.preventDefault();
		var operation = $(this).data("oper");
		operForm.attr("action", "${contextPath}/admin/orderList.do").attr("method","get");

		alert("리스트로");
		operForm.submit();
	});
});

</script>

<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form");
	
	$("#deleteHost").on("click", function(e){
		e.preventDefault();
		var operation = $(this).data("oper");
		alert(operation);
		if(operation == 'remove'){
			formObj.attr("action","${contextPath}/admin/goodsDetail.do").attr("method","get");
			
			var pageNumTag = $("input[name='pageNum']").clone();
			var amountTag = $("input[name='amount']").clone();
			var join_startDateTag = $("input[name='join_startDat']").clone();
			var join_endDateTag = $("input[name='join_endDate']").clone();
			var u_id2Tag = $("input[name='u_id2']").clone();
			var pay_state2Tag = $("input[name='pay_state2']").clone();
			var u_name2Tag = $("input[name='u_name2']").clone();
			var order_code2Tag = $("input[name='order_code2']").clone();
			
			formObj.empty();
			
			formObj.append(pageNumTag);
			formObj.append(amountTag);
			formObj.append(join_startDateTag);
			formObj.append(join_endDateTag);
			formObj.append(u_id2Tag);
			formObj.append(pay_state2Tag);
			formObj.append(u_name2Tag);
			formObj.append(order_code2Tag);
			
		}
		formObj.submit();
	});
});
</script>

<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
$(".a3").on("click",function(e){
	alert("수정수정");
	e.preventDefault();
	operForm.append("<input type='hidden' name='order_code' value='"+$(this).attr("value")+"'>");
	operForm.attr("action", "${contextPath}/admin/orderModify.do");
	operForm.submit();
	});
});
</script>
</body>
</html>