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
	<c:forEach items="${list}" var="sDto">
		<div class="webtoon_reply_list">
			<div class="webtoon_reply_user">
				<img alt="이미지" src="${path}/resources/img/level/${sDto.grade}.gif">
				<span id="user_id">${sDto.sid}</span>
				<span>작성한 게시글 수 : ${sDto.boardcnt}개</span>
				<span>작성한 댓글 수 : ${sDto.commentcnt}개</span>
			</div>
			<div class="webtoon_reply_content">
				<div class="webtoon_score_icon">
					<c:choose>
						<c:when test="${sDto.sgood == 'good'}">
							<i class="fas fa-thumbs-up" style="color: dodgerblue;"></i>
						</c:when>
						<c:otherwise>
							<i class="fas fa-thumbs-down" style="color: #FF4848;"></i>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="webtoon_score_content">${sDto.scontent}</div>
			</div>
		</div>
	</c:forEach>
</body>
</html>