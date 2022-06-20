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
</head>
<body>


<script type="text/javascript">
$(document).on('click', '#btnReplySave', function(){
	var replyContent = $('#content').val();
	var replyReg_id = $('#reg_id').val();
	var paramData = JSON.stringify({"content": replyContent, "reg_id": replyReg_id, "bid":'${boardContent.bid}'});				
	var headers = {"Content-Type" : "application/json", "X-HTTP-Method-Override" : "POST"};
	$.ajax({			
		url: "${saveReplyURL}", 
		headers : headers, 
		data : paramData,
		type : 'POST',
		dataType : 'text',
		success: function(result){
			showReplyList();
			$('#content').val('');
			$('#reg_id').val('');
		}, 
		error: function(error){
			console.log("에러 : " + error);
		}
	});	
});
</script>
</body>
</html>