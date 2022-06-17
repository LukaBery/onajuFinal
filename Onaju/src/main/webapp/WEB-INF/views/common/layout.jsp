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
<meta name="description" content="Colrolib Templates">
<meta name="author" content="Colrolib">
<meta name="keywords" content="Colrolib Templates">

<title>오나주</title>
<link  type="text/css"  href="${contextPath}/resources/css/mypage.css?ver=1" rel="stylesheet" />

<link type="text/css" 
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link  type="text/css"  href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<link href="${contextPath}/resources/css/main.css" type="text/css" rel="stylesheet"
	media="all">

<link href="${contextPath}/resources/css/heart.css?ver=1" type="text/css" rel="stylesheet"
	media="all">
	<link href="${contextPath}/resources/css/icons.css?ver=2" type="text/css" rel="stylesheet"
	media="all">



<link href="${contextPath}/resources/vendor/select2/select2.min.css" type="text/css" 
	rel="stylesheet" media="all">
<link
	href="${contextPath}/resources/vendor/datepicker/daterangepicker.css?ver=3"
	rel="stylesheet" type="text/css"  media="all">

<!-- Main CSS-->
<link href="${contextPath}/resources/css/main.css" type="text/css" rel="stylesheet"
	media="all">
	
<link href="${contextPath}/resources/css/order.css" type="text/css" rel="stylesheet"
	media="all">
<script type="text/javascript">

if(!confirm("등록하시겠습니까?")){
		return false;
} 
	
$.LoadingOverlay("show", {
	background       : "rgba(0, 0, 0, 0.5)",
	image            : "",
	maxSize          : 60,
	fontawesome      : "fa fa-spinner fa-pulse fa-fw",
	fontawesomeColor : "#FFFFFF",
});

</script>
<head>
<style>
#container {
	width: 100%;
	margin: 0px auto;
	text-align: center;
	border: 0px solid #bcbcbc;
}

#header {
	background-color: white;
	margin-top: 0px;
	z-index: 6000;
	position: fixed;
	width: 100%;
	height: 100px;
	
	text-align: center;
	border: 1px solid rgb(208, 208, 208, 0.5);
	flex-direction: column;
	align-items: center;
	margin-top: 0px;
}

#sidebar-left {
	z-index: 5000;
	width: 225px;
	height: 100%;
	padding: 0px;
	float: left;
	margin-right: 5px;
	margin-bottom: 5px;
	border: 0px solid #bcbcbc;
	font-size: 10px;
	position: fixed;
}
#div____d{
height:100%;
}
.div_clear {
	clear: both;
	height: 100px;
}

#content {
	z-index: 5000;
	display: block;
	margin-top: 0px;
	padding: 0px 0px 0px 0px;
	min-height: 700px;
	height: auto;
}

#footer {
	z-index: 1000;
	text-align: center;
	clear: both;
	margin-top: 30px;
	border: 0px solid #bcbcbc;
}
</style>
<title><tiles:insertAttribute name="title" /></title>
</head>
<body>

	<div id="container">

		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>
		<div class="div_clear"></div>
		<div id="sidebar-left">
			<tiles:insertAttribute name="side" />
		</div>
		<div id="content">
			<div align="center" id="div____d">
				<tiles:insertAttribute name="body" />
			</div>

		</div>

		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
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
	<script type="text/javascript"
		src="${contextPath}/resources/js/loadingoverlay.min.js"></script>

	<!-- Main JS-->
	<script src="${contextPath}/resources/js/global.js"></script>
	<script src="${contextPath}/resources/js/global2.js?ver=1"></script>


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