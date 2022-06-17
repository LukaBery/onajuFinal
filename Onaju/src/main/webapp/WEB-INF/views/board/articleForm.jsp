<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("UTF-8");%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="" />
<title>Insert title here</title>
<style type="text/css">
.hb_section_total {
	width: 1100px;
    height: 100%;
}
.articleWriteForm{
	width: 1100px;
	height: 800px;
}
</style>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
   function readURL(input) {
      if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#articlePreview').attr('src', e.target.result);
          }
         reader.readAsDataURL(input.files[0]);
      }
  }  
  function backToList(obj){
    obj.action="${contextPath}/main/main.do";
    obj.submit();
  }
  
  var cnt=1;
  function fn_addFile(){
	  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
	  cnt++;
  }  

</script>
</head>
<body>
	<section class="hb_section_total">

	<form name="articleForm" method="post"   action="${contextPath}/goods/goodsInformation_1.do"   enctype="multipart/form-data">
    <div class="articleWriteForm" border="0" align="center">
    	<div>
    		<h3>글쓰기</h3>
    	</div>
        <div style="display: flex;">
			<div style="width: 100px; height: 25px; float:left;"><span>작성자 :&nbsp;</span></div>
			<div>
				<input type="text" size="20" maxlength="100"  name="${member.name}" style="float:left; width:400px; height:25px; border-radius: 10px; border: 1px solid #cccccc;"/>
			</div>
		</div>
	     <div style="display: flex;">
			<div style="width: 100px; height: 25px; float:left;"><span>글제목 :&nbsp;</span></div>
			  <div>
			   	<input type="text" size="67"  maxlength="500" name="title" style="float:left; width:800px; height:25px; border: 1px solid #cccccc; border-radius: 10px;" />
			  </div>
		 </div>
	 	<div style="display: flex;">
			<div style="width: 100px; height: 25px; float:left;"><span>글내용 :&nbsp;</span></div>
				<div>
				<textarea name="content" rows="10" cols="65" maxlength="4000" style="float:left; width:800px; height:400px; border: 1px solid #cccccc; border-radius: 10px;"></textarea> 
				</div>
     	</div>
     	<div style="display: flex;">
			  <div style="width: 400px; height: 200px; float: left;">
			  <div style="width: 100px; height: 25px; float:left;"><span>image 첨부:&nbsp;</span></div>
			  <div> <input type="file" name="imageFileName"  onchange="readURL(this);" style="width:300px; height:35px;float:left; border: 1px solid #cccccc; border-radius: 10px;" /></div>
			  <div> <input type="button" value="파일 추가" onClick="fn_addFile()" style="width: 93px; height: 30px; margin-right: 105px; border: 1px solid #cccccc; border-radius: 10px;"/></div>
			  </div>
			  <div style="width: 400px; height: 100px; float: right;  margin-left: 100px; border-radius: 10px; "><img id="articlePreview" src="#" style="width: 200px; height: 200px; float: right; border-radius: 10px;" /></div> 
	    </div>
	   <div>
	      <div><div id="d_file"></div></div>
	   </div>
	    
	    
	    <div style="width: 1100px; height: 50px; display:inline-block; margin-top: 10px; padding-right: 190px;">
	       <div  style="width: 100px; height: 50px; margin-right: 10px; float: right;"><input type="submit" value="글쓰기" style="float: right; background-color: rgb(252,78,130); color:white; border-radius: 10px;" /></div>
	       <div  style="width: 100px; height: 50px; margin-right: 10px; float: right;"><input type=button value="목록보기"onClick="backToList(this.form)" style="float: right; background-color: rgb(252,78,130); color:white; border-radius: 10px;" /></div>
	    </div>
    </div>
  </form>
</section>
</body>
</html>