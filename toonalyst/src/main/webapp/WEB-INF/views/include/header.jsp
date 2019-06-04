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
	<header>
		<div class="header_outline">
			<div class="header_inline">
				<ul class="header_menu">
					<li><a href="#">로그인</a></li>
					<li><a href="#">회원가입</a></li>
					<li class="dropbox_btn"><a href="#">고객센터<span class="caret"></span></a>
						<ul class="header_dropbox">
							<li><a href="#">DROPBOX</a></li>
							<li><a href="#">DROPBOX</a></li>
							<li><a href="#">DROPBOX</a></li>
							<li><a href="#">DROPBOX</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<h1 class="header_logo">
			<a href="#">T O O N A L Y S T</a>
		</h1>
		<div class="nav_outline">
			<div class="nav_inline">
				<div class="wrap_inner">
					<ul class="catogory">
						<li><a href="#">Navigation</a></li>
						<li><a href="#">Navigation</a></li>
						<li><a href="#">Navigation</a></li>
						<li><a href="#">Navigation</a></li>
						<li><a href="#">Navigation</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
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
		});
	</script>
</body>
</html>