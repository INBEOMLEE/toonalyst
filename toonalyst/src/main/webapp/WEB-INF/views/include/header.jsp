<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<link rel="stylesheet" href="${path}/resources/css/header.css?v=1">
<title>TOONALYST</title>
</head>
<body>
	<header class="header">
		<div class="header_outline">
			<div class="header_inline">
				<a href="${path}/" class="toonalyst_logo">T O O N A L Y S T</a>
				<ul class="header_menu">
					<c:choose>
						<c:when test="${empty sessionScope.loginUser}">
							<li><a href="${path}/member/login">로그인</a></li>
							<li><a href="${path}/member/join">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="${path}/member/logout">로그아웃</a></li>
							<li><a href="${path}/member/mypage">마이페이지</a></li>
						</c:otherwise>
					</c:choose>
					<li class="dropbox_btn"><a href="#">고객센터<span class="caret"></span></a>
						<ul class="header_dropbox">
							<li><a href="${path}/board/boardlist">공지사항</a></li>
							<li><a href="#">DROPBOX</a></li>
							<li><a href="#">DROPBOX</a></li>
							<li><a href="#">DROPBOX</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div class="header_logo_outline">
			<h1 class="header_logo">
				<a href="${path}/">T O O N A L Y S T</a>
			</h1>
		</div>
		<div class="nav_outline">
			<div class="nav_inline">
				<div class="wrap_inner">
					<ul class="category">
						<li>
							<a href="#">Navigation</a>
							<div class="nav_dropdown">
								<a href="#"><span><span>Nav DROPDOWN</span></span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
							</div>
						</li>
						<li><a href="#">Genre Rank</a>
							<div class="nav_dropdown">
								<a href="${path}/genre/naver"><span>Naver</span></a>
								<a href="${path}/genre/lezhin"><span>Lezhin</span></a>
								<a href="${path}/genre/daum"><span>Daum</span></a>
								<a href="${path}/genre/kakao"><span>Kakao</span></a>
							</div>
						</li>
						<li><a href="#">Navigation</a>
							<div class="nav_dropdown">
								<a href="#"><span>Nav DROPDOWN</span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
							</div>
						</li>
						<li><a href="#">Navigation</a>
							<div class="nav_dropdown">
								<a href="#"><span>Nav DROPDOWN</span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
							</div>
						</li>
						<li><a href="#">Navigation</a>
							<div class="nav_dropdown">
								<a href="#"><span>Nav DROPDOWN</span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
								<a href="#"><span>Nav DROPDOWN</span></a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<div class="empty_box"></div>
	<aside>
		<button id="topBtn">
			<i class="fas fa-arrow-up"></i>
		</button>
	</aside>
	<script type="text/javascript">
		$(document).ready(function(){
			var flag = 0;
			$('.dropbox_btn').click(function(){
				if(flag == 0) {
					$('.header_dropbox').css("display", "block");
					flag = 1;
				} else {
					$('.header_dropbox').css("display", "none");
					flag = 0;
				}
			});
			
			$(window).scroll(function() {
				var scrollValue = $(this).scrollTop();
				if(scrollValue > 120) {
					$('#topBtn').fadeIn();
					$('.toonalyst_logo').css('top', '0');
					$('.header_logo_outline').css('height', '0');
				} else {
					$('#topBtn').fadeOut();
					$('.toonalyst_logo').css('top', '-35px');
					$('.header_logo_outline').css('height', '157px');
				}
			});
			$('#topBtn').click(function(){
				$('html, body').animate({scrollTop : 0}, 800);
			});
			
			$('.index_header').hover(function(){
				$(this).css('transition', '0.7s').css('opacity', '1');
			});
		});
	</script>
</body>
</html>