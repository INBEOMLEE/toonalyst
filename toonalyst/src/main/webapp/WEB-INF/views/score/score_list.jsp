<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONALYST</title>
</head>
<body>
	<div class="webtoon_reply_list">
		<div class="webtoon_reply_user">
			<img alt="이미지" src="${path}/resources/img/level/50.gif">
			<span id="user_id">user01</span>
			<span>작성한 게시글 수 : 50개</span>
			<span>작성한 댓글 수 : 50개</span>
		</div>
		<div class="webtoon_reply_content">
			<div class="webtoon_score_icon">
				<i class="fas fa-thumbs-up" style="color: dodgerblue;"></i>
			</div>
			<div class="webtoon_score_content">정말 재미있는 웹툰입니다.</div>
		</div>
	</div>
	<div class="webtoon_reply_list">
		<div class="webtoon_reply_user">
			<img alt="이미지" src="${path}/resources/img/level/50.gif">
			<span id="user_id">user02</span>
			<span>작성한 게시글 수 : 50개</span>
			<span>작성한 댓글 수 : 50개</span>
		</div>
		<div class="webtoon_reply_content">
			<div class="webtoon_score_icon">
				<i class="fas fa-thumbs-down" style="color: #FF4848;"></i>
			</div>
			<div class="webtoon_score_content">정말 재미없는 웹툰입니다.</div>
		</div>
	</div>
</body>
</html>