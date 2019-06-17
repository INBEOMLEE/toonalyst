<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONALYST</title>
<script type="text/javascript" src="${path}/resources/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<style type="text/css">
.notice {
	margin-top: 50px;
}
.sticky {
	height: 56px;
	margin-bottom: 50px;
}
.sub_tab {
	position: relative;
	top: 0;
	margin: 0 0 50px;
}
.board_menu {
	width: 1180px;
	margin: 0 auto;
}
.board_menu ul li.active {
	background: #FF6C36;
}
.sub_tab ul {
	display: table;
	table-layout: fixed;
	margin-bottom: -1px;
	width: 100%;
	height: 54px;
	border-collapse: collapse;
	text-align: center;
}
/* li.selecte */
.sub_tab ul > li {
	display: table-cell;
	border: 1px solid #fff;
	background: #d5d5d5;
	color: white;
}
/* li.selected a 태그필요 */
.sub_tab ul > li a {
	display: block;
	padding: 16px;
	font-size: 16px;
	cursor: pointer;
}
.notice_body {
	width: 1180px;
	margin: 0 auto;
	padding-bottom: 80px;
	min-height: 500px;
}
.board_list {
	width: 100%;
}
.board_view_table {
	border-top: 1px solid #e0e0e0;
	border-collapse: collapse;
	width: 1180px;
}
.board_view_table td, .board_view_table th{
	border-bottom: 1px solid #e0e0e0;
	font-size: 14px;
	padding: 10px 0px;
	text-align: center;
}
.board_view_content {
	width: 1180px;
	height: auto;
	padding: 60px 30px;
	font-size: 18px;
}
.list_btn_box {
	width: 1180px;
	border-top: 1px solid #e0e0e0;
	border-bottom: 1px solid #e0e0e0;
	text-align: right;
}
.list_btn {
	display: inline-block;
	width: 100px;
	height: 35px;
    padding: 8px 12px;
    margin: 20px 0;
    border: 1px solid #dedfda;
    background: #dedfda;
    color: white;
    font-size: 15px;
    font-weight: 500;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    transition: 0.3s
	
}
.list_btn:hover {
	background: #FF6C36;
	border: 1px solid #FF6C36;
}





/* 댓글창 디자인 */
.comment_area {
	padding: 10px;
	width: 100%;
	height: auto;
}
.each_space {
	margin: 20px 0;
}
.comment_box {
	display: flex;
	margin: 20px 0;
}
.writer_comment {
	width: 100%;
}
.writer_emo img {
	width: 100%;
}
.top_comment {
	/* border-bottom: 1px solid #333; */
	display: inline-block;
	font-size: 21px;
	font-weight: bold;
	padding: 5px;
	margin-bottom: 10px;
}
.comment_cnt {
	color: tomato;
}
.empty_box {
	border: 1px solid lightgray;
	border-radius: 5px;
	height: 80px;
	text-align: center;
	line-height: 80px;
	background-color: #fafafa;
}
.writing_box {
	border-radius: 5px;
	height: auto;
	padding: 10px;
}

.reg_date {
	display: inline-block;
	color: dimgray;
	font-size: 15px;
}
.comment_head {
	margin: 5px 10px;
	font-weight: bold;
}
.comment_body {
	width: 90%;
	height: auto;
	margin-top: 10px;
	padding:10px;
	border-bottom: 1px solid #eaeaea;
}
.comment_delete_btn {
	color: #FF6C36;
	cursor: pointer;
}
#login_txt {
	color: #FF6C36;
	font-weight: bold;
}
.writing_area {
	width: 650px;
	margin: 20px auto;
	
}
.btn_comment {
	float: right;
	margin-top: 30px;
}
.writer_top {
	font-weight: bold;
	display: inline-block;
	padding-bottom: 10px;
}
.btn_comment {
	display: inline-block;
	width: 100px;
	height: 35px;
    padding: 8px 12px;
    margin: 20px 0;
    border: 1px solid #dedfda;
    background: #dedfda;
    color: white;
    font-size: 15px;
    font-weight: 500;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    transition: 0.3s
}
.btn_comment:hover {
	background: #FF6C36;
	border: 1px solid #FF6C36;
}
#txt_box {
	color: #FF6C36;
	font-size: 13px;
	display: none;
	margin: 6px 5px;
}




</style>
</head>
<body>
	<div class="notice">
		<!-- 게시판 목록 부분 -->
		<div class="sticky">
			<div class="sub_tab">
				<div class="board_menu">
					<ul>
						<li>
							<a href="#" class="sub_notice">NOTICE</a>
						</li>
						<li>
							<a href="#">Q&A</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 게시글 영역 -->
		<div class="notice_body">
			<div class="board_list">
				<table class="board_view_table">
					<colgroup>
						<col style="width: 3%">
						<col style="width: 12%">
						<col style="width: 3%">
						<col style="width: 3%">
					</colgroup>
					<tr>
						<th>제목</th>
						<td>5월 29일(수) 고객센터 운영 안내</td>
						<th>조회수</th>
						<td>187</td>
					</tr>
					<tr>
						<th>작성자</td>
						<td>운영자</td>
						<th>작성일</td>
						<td>2019-05-29</td>
					</tr>
				</table>
				<div class="board_view_content">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</div>
				<div class="list_btn_box">
					<div class="list_btn">목록</div>
				</div>
				
				<!-- 댓글 리스트 영역 -->
				<!-- 댓글이 없을 때 디자인 -->
					<div class="noncomment_list_wrap each_space">
						<div class="top_comment"> 
							<span>댓글</span>
						</div>
					</div>
					<div class="empty_box">
						등록된 댓글이 없습니다. 첫번째 댓글을 남겨주세요:)
					</div>
	
	
				<!-- 댓글이 있을 때 디자인 -->
				<!-- forEach에서 목록을 띄움 item안의 list에 값이 없으면 아예 실행을 안함 item안에 들어온 건수만큼 반복을 시켜라라는 뜻이기 때문이다. 범위를 주고싶으면 begin, end를 사용하면 된다-->
				
					<div class="comment_list_wrap each_space">
							<div class="top_comment"> 
								<span>댓글</span>
								<span class="comment_cnt">${replyList.size()}</span>
								<span>개</span>
							</div>
							<div class="comment_box">
								<div class="writer_comment">
									<div class="comment_head">
										<span>${replyview.writer}</span>
										<div class="reg_date">
											<i class="far fa-clock"></i>
											<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${replyview.regdate}" />
										</div>
										<c:if test="${sessionScope.userid == replyview.writer}">
											<a class="comment_delete_btn reply_del" data_num="${replyview.rno}">삭제</a>
										</c:if>
									</div>
									<div class="comment_body">
										${replyview.content}
									</div>
								</div>					
							</div>
					</div>
				
				
				<!-- 비로그인 시, 로그인 시 댓글 작성 영역-->
				<!--비로그인 시 로그인 하라는 경고창 -->
						<div class="writing_logout_wrap each_space">
							<div class="top_comment"> 
								<span>댓글 쓰기</span>
							</div>						
							<div class="empty_box">
								<span id="login_txt">로그인</span>을 하시면 댓글을 등록할 수 있습니다.
							</div>
						</div>
						<form action="${path}/reply/replyAdd" method="POST" name="frm_reply" id="frm_reply">
							<div class="writing_logout_wrap each_space">
								<div class="top_comment"> 
									<span>댓글 쓰기</span>
								</div>						
								<div class="writing_box">
									<div class="writer_top">
										<span id="writer">작성자: </span><span id="user">${sessionScope.userid}</span>
									</div>				
									<textarea id="replyInsert" name="content" class="writing_area"></textarea>
									<script type="text/javascript">
										var oEditors = [];
										nhn.husky.EZCreator.createInIFrame({
										 oAppRef: oEditors,
										 elPlaceHolder: "replyInsert",
										 sSkinURI: "${path}/resources/smarteditor/SmartEditor2Skin.html",
										 fCreator: "createSEditor2",
										 htParams: { fOnBeforeUnload : function(){} } /* 에디터 내용 변경 경고창 끄기 */
										});
									</script>
								</div>
								<span id="txt_box" >내용을 입력해 주세요</span>
								<button type="button" id="reply_btn" class="btn_comment">댓글 등록</button>
								
								<!-- input태그 안에 써서 작성자와 게시글번호를 form태그 안으로 보내는 것이다 -->
								<input type="hidden" name="writer" value="${sessionScope.userid}">
								<input type="hidden" id="re_bno" name="bno">
							</div>
						</form>
				
				
				
				
				
			</div>
		</div>
	</div>






<%@ include file="../include/footer.jsp" %>  
<script type="text/javascript">
$(document).ready(function(){
	$('.board_menu ul li').eq(0).addClass("active");
	
	$('.board_menu ul li').click(function(){
		$('.board_menu ul li').removeClass("active");
		$(this).addClass("active");
	});
	
});
	
</script>
</body>
</html>