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
					html += "<div class='reply_box'>";
					html += "<div class='reply_box_chil'><div><strong>"+data[i].a_id+"</strong></div>";
					html += "<div>"+ data[i].creDate + "</div></div><br>";
					html += "<div>"+ data[i].re_contents;
					html += "</div>";
					html += "</div>";
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
</body>
</html>