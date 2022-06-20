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
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
.notice-box5{
	width: 1000px;
	height: 250px;
	justify-content: space-around;
	align-items: center;
	border-top : 1px solid #666666;
	border-bottom: 1px solid #EEEEEE;
	background-color: #eeeeee;
	color: #666666;
}
.reply_submit{
	display:block; 
	width:130px; 
	line-height:40px; 
	text-align:center; 
	border-radius: 5px; 
	border: 1px solid #EEEEEE; 
	text-decoration: none;
	background: #000033;
	color: #ffffff;	
}
#reply{
	width:900px; 
	height:100px; 
	border: 1px solid #cccccc;
}
.reply_box{
	width:1000px;
	height:70px;
	border-bottom: 1px solid #EEEEEE;
	margin: 10px 0px 0px 0px;
}
.reply_box_chil{
	display: flex;
	justify-content: space-between;
}
.reply_box_chil div{
	display: flex;
}
</style>
</head>
<body>
<div class="notice-box5">
	<form id="replyForm" name="replyForm" method="post">
		
		<div>
			<span><strong>댓글</strong><span id="reply_cnt"></span></span>
			<br><br>
		</div>
		<div>
			<table class="table">
				<tr>
					<td>
						<textarea rows="3" cols="30" id="reply" name="re_contents" placeholder="댓글을 입력하세요"></textarea>
						<br>
						<br>
						<div>
							<a href="#" onclick="fn_reply('${enquireDetail[0].enquire_NO}')" class="reply_submit">등록</a>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<input type="hidden" id="enquire_NO" name="enquire_NO" value="${enquireDetail[0].enquire_NO }" />
	</form>
</div>
<div>
	<form id="replyListForm" name="replyListForm" method="post">
		<div id="replyList">
		</div>
	</form>
</div>

<script type="text/javascript">
function fn_reply(code){
	$.ajax({
		type:'post',
		url: '${contextPath}/admin/newReply.do',
		data: $('#replyForm').serialize(),
		success: function(data){
			if(data=="success"){
				getReplyList();
				$("#reply").val("");
			}
		},
		error:function(request, status, error){
			
		}
	});
}

$(function(){
	getReplyList();
});


function getReplyList(){
	$.ajax({
		type:'get',
		url:'${contextPath}/admin/enquireReplyList.do',
		dataType:"json",
		 data:$("#replyForm").serialize(),
	
		success: function(data) {
			var html ="";
			var cCnt = data.length;
			
			if(data.length > 0){
				for(i=0; i<data.length; i++){
					html += "<form id='replyVO"+data[i].re_NO+"'>";
					html += "<div class='reply_box'>";
					html += "<div class='reply_box_chil'><div><strong>"+data[i].a_id+"</strong><div><button type='button' id='upreplyForm' value='"+data[i].re_NO+"'>수정</button></div><div><button type='button' id='delreply' onclick='deleteRe("+data[i].re_NO+")'>삭제</button></div></div>";
					html += "<div>"+ data[i].creDate + "</div></div><br>";
					html += "<div id='re_contents'>"+ data[i].re_contents;
					html += "<input type='hidden' name='re_NO' value='"+data[i].re_NO+"' />";
					html += "</div>";
					html += "</div>";
					html += "</form>";
				}
			} else {
				html += "<div>";
                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
				
			}
			$("#reply_cnt").html(cCnt);
            $("#replyList").html(html);
			
		},
		error:function(request,status,error){
		}
		
	});
}
</script>
<script type="text/javascript">
$(document).ready(function(){
	$("#upreplyForm").click(function(){
		$("#replyModifyForm").show();
		$("#re_contents").hide();
	})
})
</script>
<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
$("#upreply").on("click",function(e){
	alert("수정수정");
	e.preventDefault();
	operForm.append("<input type='hidden' name='room_code' value='"+$(this).attr("value")+"'>");
	operForm.attr("action", "${contextPath}/admin/replyModify.do");
	operForm.submit();
	});
});
</script>
<script type="text/javascript">
function deleteRe(obj){
	var enquire_NO = ${enquireDetail[0].enquire_NO};
	var re_NO = obj;
	alert("삭제삭제");
	$.ajax({
		url:"${contextPath}/admin/replyDelete.do",
		type:"get",
		data: {re_NO,enquire_NO},
		dataType: "text",
		success: function(data){
			if(message = "success"){
				alert("댓글 삭제");
				location.href="${contextPath}/admin/enquireDetail.do?enquire_NO=${enquireDetail[0].enquire_NO}&pageNum=${cri.pageNum}&amount=${cri.amount}&join_startDat=${cri.join_startDate}&join_endDate=${cri.join_endDate}&reply_yn=${cri.reply_yn}&title=${cri.title}";	
			}else{
				alert("삭제 실패");
				location.href="${contextPath}/admin/enquireDetail.do?enquire_NO=${enquireDetail[0].enquire_NO}&pageNum=${cri.pageNum}&amount=${cri.amount}&join_startDat=${cri.join_startDate}&join_endDate=${cri.join_endDate}&reply_yn=${cri.reply_yn}&title=${cri.title}";
			}
			
		},
		error: function(request,status,error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
};



/* $(document).ready(function(){
$("#delreply").on("click",function(e){
	var re_NO = $(this).val();
	alert("삭제삭제");
	$.ajax({
		url:"${contextPath}/admin/replyDelete.do",
		type:"post",
		data:re_NO,
		success: function(data){
			alert("댓글 삭제");
			location.href="${contextPath}/admin/enquireDetail.do";
		},
		error: function(data){
			alert("통신 실패");
		}
	})
	
	});
}); */
</script>
</body>
</html>