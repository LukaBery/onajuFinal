<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">


<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<meta name="author" content="Colrolib">


<title>오나주</title>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>       
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<link  type="text/css"  href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
	
<link type="text/css" 
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="${contextPath}/resources/css/main.css" type="text/css" rel="stylesheet"
	media="all">

<head>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
	user-select: none;
	box-sizing: border-box;
	font-family: 'roboto', sans-serif;
}

#body_wrap {
	width: 1100px;
	margin: 0 auto;
	min-height:700px; /*최소높이(이정아 늘림)*/
}

#body_wrap::after { 
	display: block;
	content:'';
	clear: both;
}

.asidesize{
 width: 200px;
 float: left;

}
.headersize{
	width: 100%;
	 height:100px;
	 display: block;
	 border-bottom: 1px solid #ddd;
	 background: #fcfcfc;
	
}
.articlesize{
	display:inline-block;
	background-color: white;
	width: 900px;
	float:right;
} 
.footersize{
	width:100%;
}
.Ohnaju-layout{
	width: 100%;
	margin: auto;
}
</style>
<title><tiles:insertAttribute name="title" /></title>
</head>
<body>

<div class="Ohnaju-layout">
		<div>
		<!-- 헤더부분 -->
			<header class="headersize">
				   <tiles:insertAttribute name="header" />
			</header>
			<div id="body_wrap">
				<!-- 사이드부분 -->
				<aside class="asidesize">
					 <tiles:insertAttribute name="side" />
				</aside>
				<!-- 바디 -->
				 <section class="articlesize">
				 
				 	 <tiles:insertAttribute name="body" /> 
				</section> 
			</div>
			
			<!-- 후터 부분 -->
			
		</div>
		<footer class="footersize">
        		<tiles:insertAttribute name="footer" />
        	</footer>
		
    </div>

<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/js/chart-area-demo.js"></script>
	<script src="${contextPath}/resources/js/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/js/datatables-simple-demo.js"></script>





<script src="js/jquery-3.3.1.min.js"></script>
	<script src="${contextPath}/resources/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>

	<script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>

	<!-- Vendor JS-->
	<script src="${contextPath}/resources/vendor/select2/select2.min.js"></script>
	<script
		src="${contextPath}/resources/vendor/jquery-validate/jquery.validate.min.js"></script>
	<script
		src="${contextPath}/resources/vendor/bootstrap-wizard/bootstrap.min.js"></script>
	<script
		src="${contextPath}/resources/vendor/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
	<script src="${contextPath}/resources/vendor/datepicker/moment.min.js"></script>
	<script
		src="${contextPath}/resources/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="${contextPath}/resources/js/global.js"></script>


<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "cacc290a-7e9b-4fcf-b766-74fe3b4a2b91"
  });
</script>

<!-- End Channel Plugin -->

</body>
</html>