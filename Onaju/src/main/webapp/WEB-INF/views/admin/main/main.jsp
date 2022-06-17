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
<meta charset="utf-8" />
<title>관리자 메인 페이지</title>
<style type="text/css">
body{
 background: white;
 height: 100vh;

} 
.card-margin{
margin-bottom: 1.875rem;
}

  
.card {
    border: 0;
    box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
    -webkit-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
    -moz-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
    -ms-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
}
.card {
    position: relative;
    /* display: flex; */
    /* flex-direction: column; */
    min-width: 0;
    word-wrap: break-word;
    background-color: #ffffff;
    background-clip: border-box;
    border: 1px solid #e6e4e9;
    border-radius: 8px;
}
.card .card-header .no-border {
border: 0;
}

.card .card-header {
    background: none;
    padding: 0 0.9375rem;
    font-weight: 500;
    display: flex;
    align-items: center;
    min-height: 50px;
}
.card-header:first-child {
    border-radius: calc(8px - 1px) calc(8px - 1px) 0 0;
}

.widget-49 .widget-49-title-wrapper {
  display: flex;
  align-items: center;
  margin-left: 10px;
} 

.widget-49 .widget-49-title-wrapper .widget-49-date-primary {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  background-color: #edf1fc;
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
  
}

.widget-49 .widget-49-title-wrapper .widget-49-date-primary .widget-49-date-day {
  color: #4e73e5;
  font-weight: 500;
  font-size: 1.5rem;
  line-height: 1;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-primary .widget-49-date-month {
  color: #4e73e5;
  line-height: 1;
  font-size: 1rem;
  text-transform: uppercase;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-secondary {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  background-color: #fcfcfd;
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-secondary .widget-49-date-day {
  color: #dde1e9;
  font-weight: 500;
  font-size: 1.5rem;
  line-height: 1;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-secondary .widget-49-date-month {
  color: #dde1e9;
  line-height: 1;
  font-size: 1rem;
  text-transform: uppercase;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-success {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  background-color: #e8faf8;
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-success .widget-49-date-day {
  color: #17d1bd;
  font-weight: 500;
  font-size: 1.5rem;
  line-height: 1;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-success .widget-49-date-month {
  color: #17d1bd;
  line-height: 1;
  font-size: 1rem;
  text-transform: uppercase;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-info {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  background-color: #ebf7ff;
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-info .widget-49-date-day {
  color: #36afff;
  font-weight: 500;
  font-size: 1.5rem;
  line-height: 1;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-info .widget-49-date-month {
  color: #36afff;
  line-height: 1;
  font-size: 1rem;
  text-transform: uppercase;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-warning {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  background-color: floralwhite;
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
}
.widget-49 .widget-49-title-wrapper .widget-49-date-warning .widget-49-date-day {
  color: #FFC868;
  font-weight: 500;
  font-size: 1.5rem;
  line-height: 1;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-warning .widget-49-date-month {
  color: #FFC868;
  line-height: 1;
  font-size: 1rem;
  text-transform: uppercase;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-danger {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  background-color: #feeeef;
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
}
.widget-49 .widget-49-title-wrapper .widget-49-date-danger .widget-49-date-day {
  color: #F95062;
  font-weight: 500;
  font-size: 1.5rem;
  line-height: 1;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-danger .widget-49-date-month {
  color: #F95062;
  line-height: 1;
  font-size: 1rem;
  text-transform: uppercase;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-light {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  background-color: #fefeff;
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
}
.widget-49 .widget-49-title-wrapper .widget-49-date-light .widget-49-date-day {
  color: #f7f9fa;
  font-weight: 500;
  font-size: 1.5rem;
  line-height: 1;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-light .widget-49-date-month {
  color: #f7f9fa;
  line-height: 1;
  font-size: 1rem;
  text-transform: uppercase;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-dark {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  background-color: #ebedee;
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-dark .widget-49-date-day {
  color: #394856;
  font-weight: 500;
  font-size: 1.5rem;
  line-height: 1;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-dark .widget-49-date-month {
  color: #394856;
  line-height: 1;
  font-size: 1rem;
  text-transform: uppercase;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-base {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  background-color: #f0fafb;
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-base .widget-49-date-day {
  color: #68CBD7;
  font-weight: 500;
  font-size: 1.5rem;
  line-height: 1;
}

.widget-49 .widget-49-title-wrapper .widget-49-date-base .widget-49-date-month {
  color: #68CBD7;
  line-height: 1;
  font-size: 1rem;
  text-transform: uppercase;
}

.widget-49 .widget-49-title-wrapper .widget-49-meeting-info {
  display: flex;
  flex-direction: column;
  margin-left: 1rem;
}

.widget-49 .widget-49-title-wrapper .widget-49-meeting-info .widget-49-pro-title {
  color: #3c4142;
  font-size: 14px;
}

.widget-49 .widget-49-title-wrapper .widget-49-meeting-info .widget-49-meeting-time {
  color: #B1BAC5;
  font-size: 13px;
}

.widget-49 .widget-49-title-wrapper .widget-49-meeting-info .widget-49-pro-title {
  color: #3c4142;
  font-size: 18px;
}

.widget-49 .widget-49-title-wrapper .widget-49-meeting-info .widget-49-meeting-time {
  color: #B1BAC5;
  font-size: 13px;
}

.widget-49 .widget-49-meeting-points {
  font-weight: 400;
  font-size: 13px;
  margin-top: .5rem;
  list-style: none;
}

.widget-49 .widget-49-meeting-points .widget-49-meeting-item {
  display: list-item;
  color: #727686;	
}

.widget-49 .widget-49-meeting-points .widget-49-meeting-item span {
  margin-left: .5rem;
}

.widget-49 .widget-49-meeting-action {
  text-align: right;
}

.widget-49 .widget-49-meeting-action a {
  text-transform: uppercase;
  text-decoration: none;
  color: #666666;
  margin: 0px 10px 10px 0px;
}

        </style>
</head>
<body>
<div>
                <main>
                    <div style="display: inline-block;">
                        <h1 class="mt-4" style=" margin: 15px 0px 15px 0px;"><strong style="color:#007FFF;">관리자</strong>님 환영합니다.</h1>
                        <div style="display: inline-block;">
                        	
                        	<div style="width: 275px; height: 220px; display: inline-block; float: left; margin: 5px 5px 5px 5px;">
        						<div class="card card-margin">
            					<div class="card-header no-border">
                					<h5 class="card-title">회원 관리</h5>
            					</div>
            					<div class="card-body pt-0">
                					<div class="widget-49">
                    					<div class="widget-49-title-wrapper">
                        					<div class="widget-49-date-primary">
                            					<i style="color:#007FFF" class="fa-solid fa-user"></i>
                        					</div>
                        					<div class="widget-49-meeting-info">
                            					<span class="widget-49-pro-title">오나주 회원 관리</span>
                            					<span class="widget-49-meeting-time">12:00 to 13.30 Hrs</span>
                        					</div>
                    					</div>
                    					<ol class="widget-49-meeting-points">
                        					<li class="widget-49-meeting-item"><span>회원 정보 리스트</span></li>
                        					<li class="widget-49-meeting-item"><span>회원 상세 정보</span></li>
                        					<li class="widget-49-meeting-item"><span>회원 정보 수정 및 삭제</span></li>
                    					</ol>
                    					<div class="widget-49-meeting-action">
                        					<a href="#" class="btn btn-sm btn-flash-border-primary">이동 하기</a>
                    					</div>
                					</div>
            					</div>
        						</div>
    						</div> 
    						
    						<div style="width: 275px; height: 220px;; display: inline-block; float: left; margin: 5px 5px 5px 5px;">
        <div class="card card-margin" style="margin-bottom: 1.875rem;">
            <div class="card-header no-border">
                <h5 class="card-title">사업주 관리</h5>
            </div>
            <div class="card-body pt-0">
                <div class="widget-49">
                    <div class="widget-49-title-wrapper">
                        <div class="widget-49-date-warning">
                            <i style="color:#FFB366" class="fa-solid fa-building-user"></i>
                        </div>
                        <div class="widget-49-meeting-info">
                            <span class="widget-49-pro-title">오나주 사업자 관리</span>
                            <span class="widget-49-meeting-time">12:00 to 13.30 Hrs</span>
                        </div>
                    </div>
                    <ol class="widget-49-meeting-points">
                        <li class="widget-49-meeting-item"><span>사업주 정보 리스트</span></li>
                        <li class="widget-49-meeting-item"><span>사업주 상세 정보</span></li>
                        <li class="widget-49-meeting-item"><span>사업주 매출/정산 정보</span></li>
                    </ol>
                    <div class="widget-49-meeting-action">
                        <a href="#" class="btn btn-sm btn-flash-border-warning">이동 하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div style="width: 275px; height: 220px; display: inline-block; float: left; margin: 5px 5px 5px 5px;">
        <div class="card card-margin" style="margin-bottom: 1.875rem;">
            <div class="card-header no-border">
                <h5 class="card-title">상품 관리</h5>
            </div>
            <div class="card-body pt-0">
                <div class="widget-49">
                    <div class="widget-49-title-wrapper">
                        <div class="widget-49-date-success">
                            <i style="color:#80FFCC" class="fa-solid fa-folder-closed"></i>
                        </div>
                        <div class="widget-49-meeting-info">
                            <span class="widget-49-pro-title">오나주 상품 관리</span>
                            <span class="widget-49-meeting-time">12:00 to 13.30 Hrs</span>
                        </div>
                    </div>
                    <ol class="widget-49-meeting-points">
                        <li class="widget-49-meeting-item"><span>상품 리스트</span></li>
                        <li class="widget-49-meeting-item"><span>상품 등록 및 승인</span></li>
                        <li class="widget-49-meeting-item"><span>상품 정보 수정 및 삭제</span></li>
                    </ol>
                    <div class="widget-49-meeting-action">
                        <a href="#" class="btn btn-sm btn-flash-border-warning">이동 하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div style="width: 275px; height: 220px; display: inline-block; float: left; margin: 5px 5px 5px 5px;">
        <div class="card card-margin" style="margin-bottom: 1.875rem;">
            <div class="card-header no-border">
                <h5 class="card-title">주문 관리</h5>
            </div>
            <div class="card-body pt-0">
                <div class="widget-49">
                    <div class="widget-49-title-wrapper">
                        <div class="widget-49-date-danger">
                            <i style="color:#FF550D" class="fa-solid fa-cart-shopping"></i>
                        </div>
                        <div class="widget-49-meeting-info">
                            <span class="widget-49-pro-title">오나주 주문 관리</span>
                            <span class="widget-49-meeting-time">12:00 to 13.30 Hrs</span>
                        </div>
                    </div>
                    <ol class="widget-49-meeting-points">
                        <li class="widget-49-meeting-item"><span>전체 주문 리스트</span></li>
                        <li class="widget-49-meeting-item"><span>주문 상세 정보</span></li>
                        <li class="widget-49-meeting-item"><span>주문 정보 수정 및 삭제</span></li>
                    </ol>
                    <div class="widget-49-meeting-action">
                        <a href="#" class="btn btn-sm btn-flash-border-warning">이동 하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div style="width: 275px; height: 220px; display: inline-block; float: left; margin: 5px 5px 5px 5px;">
        <div class="card card-margin" style="margin-bottom: 1.875rem;">
            <div class="card-header no-border">
                <h5 class="card-title">정산/통계 관리</h5>
            </div>
            <div class="card-body pt-0">
                <div class="widget-49">
                    <div class="widget-49-title-wrapper">
                        <div class="widget-49-date-info">
                            <i style="color:#80EAFF"  class="fa-solid fa-chart-simple"></i>
                        </div>
                        <div class="widget-49-meeting-info">
                            <span class="widget-49-pro-title">오나주 정산/통계 관리</span>
                            <span class="widget-49-meeting-time">12:00 to 13.30 Hrs</span>
                        </div>
                    </div>
                    <ol class="widget-49-meeting-points">
                        <li class="widget-49-meeting-item"><span>오나주 매출 통계</span></li>
                        <li class="widget-49-meeting-item"><span>오나주 가입자 추이</span></li>
                        <li class="widget-49-meeting-item"><span>오나주 주문 추이</span></li>
                    </ol>
                    <div class="widget-49-meeting-action">
                        <a href="#" class="btn btn-sm btn-flash-border-warning">이동 하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div style="width: 275px; height: 220px; display: inline-block; float: left; margin: 5px 5px 5px 5px;">
        <div class="card card-margin" style="margin-bottom: 1.875rem;">
            <div class="card-header no-border">
                <h5 class="card-title">게시판 관리</h5>
            </div>
            <div class="card-body pt-0">
                <div class="widget-49">
                    <div class="widget-49-title-wrapper">
                        <div class="widget-49-date-dark">
                            <i style="#4D4D4D" class="fa-solid fa-paste"></i>
                        </div>
                        <div class="widget-49-meeting-info">
                            <span class="widget-49-pro-title">오나주 게시판 관리</span>
                            <span class="widget-49-meeting-time">12:00 to 13.30 Hrs</span>
                        </div>
                    </div>
                    <ol class="widget-49-meeting-points">
                        <li class="widget-49-meeting-item"><span>공지사항 리스트</span></li>
                        <li class="widget-49-meeting-item"><span>고객센터 리스트</span></li>
                        <li class="widget-49-meeting-item"><span>공지사항, 고객센터 정보 수정 및 삭제</span></li>
                    </ol>
                    <div class="widget-49-meeting-action">
                        <a href="#" class="btn btn-sm btn-flash-border-warning">이동 하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div style="width: 275px; height: 220px; display: inline-block; float: left; margin: 5px 5px 5px 5px;">
        <div class="card card-margin" style="margin-bottom: 1.875rem;">
            <div class="card-header no-border">
                <h5 class="card-title">디자인 관리</h5>
            </div>
            <div class="card-body pt-0">
                <div class="widget-49">
                    <div class="widget-49-title-wrapper">
                        <div style="background-color:#FCFFE3" class="widget-49-date-success">
                            <i style="color:#999900" class="fa-solid fa-palette"></i>
                        </div>`
                        <div class="widget-49-meeting-info">
                            <span class="widget-49-pro-title">오나주 디자인 관리</span>
                            <span class="widget-49-meeting-time">12:00 to 13.30 Hrs</span>
                        </div>
                    </div>
                    <ol class="widget-49-meeting-points">
                        <li class="widget-49-meeting-item"><span>디자인 정보</span></li>
                        <li class="widget-49-meeting-item"><span>배너 정보</span></li>
                        <li class="widget-49-meeting-item"><span>팝업 정보</span></li>
                    </ol>
                    <div class="widget-49-meeting-action">
                        <a href="#" class="btn btn-sm btn-flash-border-warning">이동 하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
    <div style="width: 275px; height: 220px; display: inline-block; float: left; margin: 5px 5px 5px 5px;">
        <div class="card card-margin" style="margin-bottom: 1.875rem;">
            <div class="card-header no-border">
                <h5 class="card-title">직원 관리</h5>
            </div>
            <div class="card-body pt-0">
                <div class="widget-49">
                    <div class="widget-49-title-wrapper">
                        <div style="background-color:#E5CCFF" class="widget-49-date-success">
                            <i style="color:#B266FF" class="fa-solid fa-people-roof"></i>
                        </div>
                        <div class="widget-49-meeting-info">
                            <span class="widget-49-pro-title">오나주 직원 관리</span>
                            <span class="widget-49-meeting-time">12:00 to 13.30 Hrs</span>
                        </div>
                    </div>
                    <ol class="widget-49-meeting-points">
                        <li class="widget-49-meeting-item"><span>전체 직원 리스트</span></li>
                        <li class="widget-49-meeting-item"><span>직원 가입 승인</span></li>
                        <li class="widget-49-meeting-item"><span>직원 정보 수정 및 삭제</span></li>
                    </ol>
                    <div class="widget-49-meeting-action">
                        <a href="#" class="btn btn-sm btn-flash-border-success">이동 하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
                            
                        </div>                                               
                    </div>
                </main>
            </div>                 
                            
                            



</body>
</html>