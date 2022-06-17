
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
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('roadAddress').value = fullRoadAddr;
						document.getElementById('numberAddress').value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						

					}
				}).open();
	}

	function fn_overlapped() {
		var _id = $("#_u_id").val();
		if (_id == '') {
			alert("ID를 입력하세요");
			return;
		}
		$.ajax({
			type : "post",
			async : false,
			url : "${contextPath}/member/overlapped.do",
			dataType : "text",
			data : {
				id : _id
			},
			success : function(data, textStatus) {
				if (data == 'false') {
					alert("사용할 수 있는 ID입니다.");
					$('#btnOverlapped').prop("disabled", true);
					$('#_u_id').prop("disabled", true);
					$('#u_id').val(_id);
				} else {
					alert("사용할 수 없는 ID입니다.");
				}
			},
			error : function(data, textStatus) {
				alert("에러가 발생했습니다.");
				ㅣ
			},
			complete : function(data, textStatus) {
				//alert("작업을완료 했습니다");
			}
		}); //end ajax	 
	}

	function fn_modify_member_info(attribute) {
		var value;
		/* 	 alert(member_id); */
		// alert("mod_type:"+mod_type);
		var frm_mod_u = document.join_form1;
		if (attribute == 'u_pw') {
			value = frm_mod_u.u_pw.value;
			alert("u_pw:" + value);
		} else if (attribute == 'u_gender') {
			var u_gender = frm_mod_u.u_gender;
			for (var i = 0; u_gender.length; i++) {
				if (u_gender[i].checked) {
					value = u_gender[i].value;
					break;
				}
			}

		}

		else if (attribute == 'u_name') {
			value = frm_mod_u.u_name.value;

		} else if (attribute == 'u_birth') {
			var u_birth_y = frm_mod_u.u_birth_y;
			var u_birth_m = frm_mod_u.u_birth_m;
			var u_birth_d = frm_mod_u.u_birth_d;

			for (var i = 0; u_birth_y.length; i++) {
				if (u_birth_y[i].selected) {
					value_y = u_birth_y[i].value;
					break;
				}
			}
			for (var i = 0; u_birth_m.length; i++) {
				if (u_birth_m[i].selected) {
					value_m = u_birth_m[i].value;
					break;
				}
			}

			for (var i = 0; u_birth_d.length; i++) {
				if (u_birth_d[i].selected) {
					value_d = u_birth_d[i].value;
					break;
				}
			}

			//alert("수정 년:"+value_y+","+value_m+","+value_d);

			//alert("생년 양음년 "+value_gn);
			value = +value_y + "," + value_m + "," + value_d;
		} else if (attribute == 'u_phone') {
			value = frm_mod_u.u_phone.value;

		} else if (attribute == 'u_email') {
			var email1 = frm_mod_u.u_email1;
			var email2 = frm_mod_u.u_email2;

			value_email1 = email1.value;
			value_email2 = email2.value;
			value = value_email1 + "," + value_email2;
			//alert(value);
		} else if (attribute == 'address') {
			alert(attribute);
			var zipcode = frm_mod_u.zipcode;
			var roadAddress = frm_mod_u.roadAddress;
			var numberAddress = frm_mod_u.numberAddress;
			var restAddress = frm_mod_u.restAddress;

			value_zipcode = zipcode.value;
			value_roadAddress = roadAddress.value;
			value_jibunAddress = numberAddress.value;
			value_namujiAddress = restAddress.value;
			value = value_zipcode + "," + value_roadAddress + ","
					+ value_jibunAddress + "," + value_namujiAddress;
		}
		console.log(attribute);

		$.ajax({
			type : "post",
			async : false, //false인 경우 동기식으로 처리한다.
			url : "${contextPath}/mypage/modifyMyInfo.do",
			data : {
				attribute : attribute,
				value : value,
			},
			success : function(data, textStatus) {
				if (data.trim() == 'mod_success') {
					alert("회원 정보를 수정했습니다.");
				} else if (data.trim() == 'failed') {
					alert("다시 시도해 주세요.");
				}

			},
			error : function(data, textStatus) {
				alert("에러가 발생했습니다." + data);
			},
			complete : function(data, textStatus) {
				//alert("작업을완료 했습니다");

			}
		}); //end ajax
	}

	function fn_delete_member() {
		var frm_mod_u = document.frm_mod_u;
		var _u_id = frm_mod_u.u_id.value;
		var _u_pw_delete = frm_mod_u.u_pw_delete.value;
		var _u_pw = frm_mod_u.u_pw.value;

		if (_u_pw != _u_pw_delete) {
			alert("비밀번호가 일치하지 않습니다.");
			return;
		}

		$.ajax({
			type : "post",
			async : false,
			url : "${contextPath}/mypage/deleteMember.do",
			dataType : "text",
			data : {
				u_id : _u_id,
			},
			success : function(data, textStatus) {
				alert("회원 탈퇴했습니다.");
			},
			error : function(data, textStatus) {
				alert("에러가 발생했습니다." + data);

			},
			complete : function(data, textStatus) {

			}

		});

	}
	/* //아이디 중복체크 팝업창(현재 공백문서)
	function id_check() {
	  //window.open("팝업될 문서 경로", "팝업될 문서 이름", "옵션");
	  window.open("", "", "width=600, height=200, left=200, top=100");
	} */

	//이메일 옵션 선택후 주소 자동 완성
	function change_email() {
		var email_add = document.getElementById("email_add");
		var email_sel = document.getElementById("email_sel");

		//지금 골라진 옵션의 순서와 값 구하기
		var idx = email_sel.options.selectedIndex;
		var val = email_sel.options[idx].value;

		email_add.value = val;
	}

	//우편번호 검색 팝업창(현재 공백문서)
	function search_address() {
		window.open("", "b", "width=600, height=300, left=200, top=100");
	}
</script>
<script>
var code = "";
$("#emailChk").click(function(){
	var sm_email = $("#sm_email").val();
	$.ajax({
        type:"GET",
        url:"member/mailCheck?sm_email=" + sm_email,
        cache : false,
        success:function(data){
        	if(data == "error"){
        		alert("이메일 주소가 올바르지 않습니다. 유효한 이메일 주소를 입력해주세요.");
				$("#sm_email").attr("autofocus",true);
				$(".successEmailChk").text("유효한 이메일 주소를 입력해주세요.");
				$(".successEmailChk").css("color","red");
        	}else{	        		
				alert("인증번호 발송이 완료되었습니다.\n입력한 이메일에서 인증번호 확인을 해주십시오.");
        		$("#sm_email2").attr("disabled",false);
        		$("#emailChk2").css("display","inline-block");
        		$(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.");
        		$(".successEmailChk").css("color","green");
        		code = data;
        	}
        }
    });
});

</script>


<c:if test='${ not empty message }'>

	<script>
	window.onload=function()
	{
	  result1();
	}

	function result1(){
		alert('${message}');
	}
	</script>
</c:if>
<script>



function readURL(input) {
	  
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('preview').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('preview').src = "";
	  }
	
	}
	
	function submitFrofile(){
		
		
		document.addProfile.submit();
	}
</script>
</head>
<body>

	<section class="hb_section_total">
	
	
	
	
	<div class="hb_nav_box1">
		<!-- <상위 네비게이션>-->
		<div class="hb_nav_section_1 margin_left_0">

			<div class="hb_nav_btn" >
				<a class="hb_nav_btn_a"  href="${contextPath}/mypage/mypageMain.do">이용내역조회</a>
			</div>
			<div class="hb_nav_btn">
				<a class="hb_nav_btn_a" href="${contextPath}/mypage/myCart.do">장바구니</a>
			</div>
			<div class="hb_nav_btn"style="border: 2px solid #CCCCCC;">
				<a class="hb_nav_btn_a hb_nav_shadow" href="${contextPath}/mypage/Mypage3.do">회원정보수정</a>
			</div>
			
			<div class="hb_nav_btn">
				<a class="hb_nav_btn_a" href="${contextPath}/board/review/myReviewList.do">내 리뷰 내역</a>
			</div>
					
			<div class="hb_nav_btn">
				<a class="hb_nav_btn_a" href="${contextPath}/mypage/delMember.do">회원 탈퇴</a>
			</div>

		</div>
		
		</div>


		<section class="hb_section_mypagemain">
			<div
				style="width: 100%; height: 140px; border: 1px solid #CCCCCC; border-radius: 12px; float: right;">

				<form action="${contextPath}/member/uploadProfile.do" method="post"
					name="addProfile" enctype="multipart/form-data">
					<div
						style="width: 20%; height: 138px; border-right: 1px solid #CCCCCC; float: left;">
						<a href="#"
							style="width: 80px; margin-top: 10px; height: 80px;  border-radius: 70%; display: block;">
							<img id="preview"
							style="width: 100%; height: 100%; overflow: hidden; z-index: 9999; border-radius: 70%; border: 0px;"
							onclick="onclick=document.all.u_imageName.click()"
							src="${contextPath}/profileShow.do?u_id=${memberInfo.u_id}&fileName=${memberInfo.u_imageName}">

						</a><input type="hidden" name="u_id" value="${memberInfo.u_id }">
						<div style="width: 80%; height: 30px; margin-top: 8px;">
							<input type="hidden" name="imageName" id="imageName"> <input
								type='file' name='u_imageName' id='u_imageName'
								style="display: none;" onChange="readURL(this)" />
							<div
								style="border: 1px solid #CCCCCC; cursor: pointer; width: 60%; font-size: 12px; border-radius: 10px; padding: 3px 10px; display: inline-block;"
								onclick="onclick=document.all.u_imageName.click()"><strong>프로필 선택</strong>
								</div>

							<div
								style="border: 1px solid #CCCCCC; border-radius: 10px; padding: 3px 10px; margin-top: 3px; width: 35%; display: inline-block; cursor: pointer; font-size: 12px;"
								onClick="submitFrofile()"><strong>등록</strong></div>

						</div>
					</div>
				</form>


							<div class="mypage_user_info_grade">
				<div class="mypage_user_info_grade_2">
						
						<c:choose>
						<c:when test="${memberInfo.u_grade.equals('vip') }">
				<img src="${contextPath}/resources/image/icons/user_grade_vip.svg">
				
				<div class="mypage_user_info_grade_logo"><strong style="font-size: 12px; color:rgb(238,50,86);">VIP 등급</strong></div>
				</c:when>
				
				
				<c:when test="${memberInfo.u_grade.equals('gold')}">
				
				<img src="${contextPath}/resources/image/icons/user_grade_gold.svg">
				<div class="mypage_user_info_grade_logo"><strong style="font-size: 12px; color:rgb(255,187,5);">GOLD </strong>등급</div>
				</c:when>
				
					<c:when test="${memberInfo.u_grade.equals('silver') }">
				
				<img src="${contextPath}/resources/image/icons/user_grade_silver.svg">
				<div class="mypage_user_info_grade_logo"><strong style="font-size: 12px;color:rgb(113,203,211);">SILVER 등급</strong></div>
				</c:when>
				
				</c:choose>
				
				
				
				</div>	
				</div>
				

			</div>


			<section class="hb_section_title">
				<h1 id="h1_left_title">회원정보 수정</h1>
			</section>




			<form name="join_form1">


				<div class="wrap wd668">
					<div class="form_box">
						<div class="form_txtInput">

							<div class="join_form">
								<table>
									<colgroup>
										<col width="30%" />
										<col width="auto" />
									</colgroup>
									<tbody>
										<tr>
											<th><span>아이디</span></th>
											<td><input type="text" name="_u_id" id="_u_id"
												placeholder="" value="${memberInfo.u_id }" disabled>
												<input type="hidden" name="u_id" id="u_id" />
										</tr>
										<tr>
											<th><span>이름</span></th>
											<td><input type="text" name="u_name" id="u_name"
												value="${memberInfo.u_name }" style="" placeholder=""></td>
										</tr>
										<tr>
											<th><span>비밀번호</span></th>
											<td><input type="password" name="u_pw" id="u_pw"
												placeholder="영문자+숫자+특수조합(8이상)"></td>
										</tr>
										<tr>
											<th><span>비밀번호 확인</span></th>
											<td><input type="password" name="u_repwd" id="u_repwd"
												placeholder="영문자+숫자+특수조합(8이상)"></td>
										</tr>
										<tr>
											<th><span>법정생년월일</span></th>
											<td><select class="birth_select" name="u_birth_y"
												id="u_birth_y">
													<c:forEach var="i" begin="1" end="102">
														<c:choose>
															<c:when test="${memberInfo.u_birth_y==1920+i }">
																<option value="${ 1920+i}" selected>${ 1920+i}
																</option>
															</c:when>
															<c:otherwise>
																<option value="${ 1920+i}">${ 1920+i}</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
											</select><span class="u_birth"></span><strong class="txt_label">년</strong>
												<select class="birth_select" name="u_birth_m" id="u_birth_m">
													<c:forEach var="i" begin="1" end="12">
														<c:choose>
															<c:when test="${memberInfo.u_birth_m==i }">
																<option value="${i }" selected>${i }</option>
															</c:when>
															<c:otherwise>
																<option value="${i }">${i}</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
											</select><span class="u_birth"></span><strong class="txt_label">월</strong>
												<select class="birth_select" name="u_birth_d" id="u_birth_d">
													<c:forEach var="i" begin="1" end="31">
														<c:choose>
															<c:when test="${memberInfo.u_birth_d==i }">
																<option value="${i}" selected>${i}</option>
															</c:when>
															<c:otherwise>
																<option value="${i}">${i}</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
											</select><span class="u_birth"></span><strong class="txt_label">일</strong>
												<!-- <input type="radio" name="member_birth_gn" value="2"> 
										<span class="member_birth"></span><strong
									class="txt_label">양력</strong> <input type="radio"
									name="member_birth_gn" value="1" checked /> <span
									class="member_birth"></span><strong class="txt_label">&nbsp;음력</strong>  -->
											</td>
										</tr>
										<tr>
											<th><span>핸드폰 번호</span></th>
											<td><input type="text" class="moblie" name="u_phone"
												id="u_phone" value="${memberInfo.u_phone }"> <input
												type="hidden" name="_moblie_check" id="_moblie_check" /> <!-- <a href="javascript:;" class="btn_confirm">인증번호 발송</a></td> -->
										</tr>

										<tr class="email">
											<th><span>이메일</span></th>
											<td><input type="text" class="email_input"
												name="u_email1" id="email_id"
												value="${memberInfo.u_email1 }"><span class="mar10">@</span>
												<input type="text" value="${memberInfo.u_email2 }"
												class="email_input" name="u_email2" id="email_add">
												<select name="email_sel"
												style="margin-left: 0px; width: 115px; float: right;"
												class="email_sel" id="email_sel" onchange="change_email();">
													<option value="">직접입력</option>
													<option value="gmail.com">gmail</option>
													<option value="naver.com">naver</option>
													<option value="nate.com">nate</option>
											</select> <!-- <input type="text" name="email_id" class="email" id="email_id"><span class="mar10">@</span> -->
												<!-- <input type="text" name="member_email2"  class="email email2" placeholder=""> -->
											</td>
										</tr>
										<tr>
											<th><span class="none_important">주소</span></th>
											<td><input type="text" id="zipcode" name="zipcode"
												value="${memberInfo.zipcode }"><input type="button"
												class="zipcode_search" value="우편번호검색"
												onclick="execDaumPostcode()"><br> <br>
												<div>
													<span class=""></span><strong class="txt_label">도로명
														주소 :</strong> <input type="text" id="roadAddress"
														name="roadAddress" value="${memberInfo.roadAddress }">
												</div>
												<div>
													<span class=""></span><strong class="txt_label">지번
														주소 :</strong> <input type="text" id="numberAddress"
														value="${memberInfo.numberAddress }" name="numberAddress">
												</div>
												<div>
													<span class=""></span><strong class="txt_label">나머지
														주소 :</strong> <input type="text" name="restAddress"
														value="${memberInfo.restAddress }" />
												</div></td>
										</tr>
										<tr>
											<th><span class="none_important">추천인 아이디</span></th>
											<td><input type="text" name="proposer"
												value="${memberInfo.proposer }"></td>
										</tr>
									</tbody>
								</table>

								<div class="exform_txt"></div>
							</div>







						</div>
						<!-- form_txtInput E -->

					</div>
					<!-- content E-->

				</div>
				<div class="wrap wd669">
					<div class="btn_wrap2"></div>
					<button type="button" class="btn_wrap1"
						onClick="fn_modify_member_info('u_name')">이름 수정하기</button>
					<div class="btn_wrap2"></div>

					<button type="button" class="btn_wrap1"
						onClick="fn_modify_member_info('u_pw')">비밀번호 수정하기</button>
					<div class="btn_wrap2" style="height: 30px;"></div>


					<button type="button" class="btn_wrap1"
						onClick="fn_modify_member_info('u_phone')">전화번호 수정하기</button>
					<button type="button" class="btn_wrap1"
						onClick="fn_modify_member_info('u_email')">이메일 수정하기</button>
					<div class="btn_wrap2" style="height: 118px;"></div>

					<button type="button" class="btn_wrap1"
						onClick="fn_modify_member_info('address')">주소 수정하기</button>



				</div>
			</form>

		</section>


	</section>

















</body>

</html>
