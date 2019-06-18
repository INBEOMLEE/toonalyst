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
	<!-- 댓글 리스트 영역 -->
	<!-- 댓글이 없을 때 디자인 -->
	<c:choose>
		<c:when test="${list.size() < 1}">
			<div class="noncomment_list_wrap each_space">
				<div class="top_comment"> 
					<span>댓글</span>
				</div>
			</div>
			<div class="comment_empty_box">
				등록된 댓글이 없습니다. 첫번째 댓글을 남겨주세요 :)
			</div>
		</c:when>
		<c:otherwise>
			<div class="comment_list_wrap each_space">
				<div class="top_comment"> 
					<span>댓글</span>
					<span class="comment_cnt">${list.size()}</span>
					<span>개</span>
				</div>
				<c:forEach items="${list}" var="cDto">
					<div class="comment_box">
						<div class="writer_comment">
							<div class="comment_head">
								<span><img alt="이미지" src="${path}/resources/img/level/50.gif"> ${cDto.cwriter}</span>
								<div class="reg_date">
									<i class="far fa-clock"></i>
									<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${cDto.cregdate}" />
								</div>
								<c:if test="${sessionScope.loginUser.id == cDto.cwriter}">
									<a class="comment_delete_btn reply_del" data_num="${cDto.cno}">삭제</a>
								</c:if>
							</div>
							<div class="comment_body">
								${cDto.ccontent}
							</div>
						</div>					
					</div>
				</c:forEach>
			</div>
		</c:otherwise>
	</c:choose>
	
	<c:if test="${empty sessionScope.loginUser.id}">
		<div class="writing_logout_wrap each_space">
			<div class="comment_empty_box">
				<span id="login_txt">로그인</span>을 하시면 댓글을 등록할 수 있습니다.
			</div>
		</div>
	</c:if>
	
	<c:if test="${!empty sessionScope.loginUser.id}">
		<form action="" method="POST" name="frm_comment" id="frm_comment">
			<div class="writing_logout_wrap each_space">
				<div class="top_comment"> 
					<span>댓글 쓰기</span>
				</div>						
				<div class="writing_box">
					<div class="writer_top">
						<span id="user"><img alt="이미지" src="${path}/resources/img/level/50.gif"> ${sessionScope.loginUser.id}</span>
					</div>				
					<textarea id="textarea" name="ccontent" class="writing_area"></textarea>
					<button type="button" id="comment_btn" class="btn_comment">댓글 등록</button>
				</div>
				<span id="txt_box">내용을 입력해 주세요</span>
				<!-- input태그 안에 써서 작성자와 게시글번호를 form태그 안으로 보내는 것이다 -->
				<input type="hidden" name="cwriter" value="${sessionScope.loginUser.id}">
				<input type="hidden" id="re_bno" name="bno">
			</div>
		</form>
	</c:if>
</body>
</html>