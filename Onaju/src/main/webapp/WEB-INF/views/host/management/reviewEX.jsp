<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 리뷰 관리</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">
$(function () {
    var tab_Btn = $(".tab_btn > ul > li");
    var tab_Cont = $(".tab_cont > ul");
    tab_Cont.hide().eq(0).show();
    tab_Btn.click(function (e) {
         e.preventDefault();
         var target = $(this);
         var index = target.index();
         tab_Btn.removeClass("active");
         target.addClass("active");
         tab_Cont.hide();
         tab_Cont.eq(index).show();
    });
});

</script>


<style>
body {
	padding: 0;
	margin: 0;
}

a, span {
	text-decoration: none;
	font-size: 16px;
	color: #666;
}

ul, li {
	list-style: none;
}

em {
	font-style: normal;
	font-weight: normal;
}

.tab_btn {
	position: relative;
	width: 400px;
}

.tab_btn a.more {
	position: absolute;
	right: 0;
	top: 13px;
	font-size: 13px;
}

.tab_btn ul {
	display: flex;
	padding-left: 0;
	margin: 0;
}

.tab_btn ul li {
	width: 120px;
	text-align: center;
	border: 1px solid #ccc;
	padding: 10px 0;
	box-sizing: border-box;
	margin-left: -1px;
	transition: all 0.5s;
}

.tab_btn ul li:hover, .tab_btn ul li:active {
	background: #ddd;
}

.tab_cont {
	margin-top: -1px;
}

.tab_cont ul {
	border: 1px solid #ccc;
	width: 400px;
	padding: 15px;
	box-sizing: border-box;
	margin: 0;
}

.tab_cont ul li {
	position: relative;
	width: 400px;
	height: 30px;
	line-height: 30px;
	box-sizing: border-box;
}

.tab_cont ul li::before {
	content: '';
	position: absolute;
	left: 0;
	top: 50%;
	transform: translateY(-50%);
	width: 3px;
	height: 3px;
	background: #999;
}

.tab_cont ul li em a {
	margin-left: 10px;
	float: left;
	width: 64%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.tab_cont ul li span a {
	float: right;
	width: 31.5%;
}

.tab_menu a {
	display: block;
	transition: all 0.5s;
}

.tab_menu a:hover {
	color: orangered;
}
</style>

</head>
<body>
 <div class="tab_menu">
          <div class="tab_btn">
               <ul>
                    <li class="active"><a href="#">공지사항</a></li>
                    <li><a href="#">자유게시판</a></li>
               </ul>
               <a href="#" class="more">더보기</a>
          </div>
          
          
          <div class="tab_cont">
               <ul class="active">
                    <li>
                         <em><a href="#">공지사항 테스트입니다. 공지사항 테스트입니다.</a></em>
                         <span><a href="#">[2020-08-31]</a></span>
                    </li>
                    <li>
                         <em><a href="#">공지사항 테스트입니다. 공지사항 테스트입니다.</a></em>
                         <span><a href="#">[2020-08-31]</a></span>
                    </li>
                    <li>
                         <em><a href="#">공지사항 테스트입니다. 공지사항 테스트입니다.</a></em>
                         <span><a href="#">[2020-08-31]</a></span>
                    </li>
                    <li>
                         <em><a href="#">공지사항 테스트입니다. 공지사항 테스트입니다.</a></em>
                         <span><a href="#">[2020-08-31]</a></span>
                    </li>
                    <li>
                         <em><a href="#">공지사항 테스트입니다. 공지사항 테스트입니다.</a></em>
                         <span><a href="#">[2020-08-31]</a></span>
                    </li>
               </ul>
               <ul>
                    <li>
                         <em><a href="#">자유게시판 테스트입니다. 자유게시판 테스트입니다.</a></em>
                         <span><a href="#">[2020-08-31]</a></span>
                    </li>
                    <li>
                         <em><a href="#">자유게시판 테스트입니다. 자유게시판 테스트입니다.</a></em>
                         <span><a href="#">[2020-08-31]</a></span>
                    </li>
                    <li>
                         <em><a href="#">자유게시판 테스트입니다. 자유게시판 테스트입니다.</a></em>
                         <span><a href="#">[2020-08-31]</a></span>
                    </li>
                    <li>
                         <em><a href="#">자유게시판 테스트입니다. 자유게시판 테스트입니다.</a></em>
                         <span><a href="#">[2020-08-31]</a></span>
                    </li>
                    <li>
                         <em><a href="#">자유게시판 테스트입니다. 자유게시판 테스트입니다.</a></em>
                         <span><a href="#">[2020-08-31]</a></span>
                    </li>
               </ul>
          </div>
     </div>
</body>
</html>