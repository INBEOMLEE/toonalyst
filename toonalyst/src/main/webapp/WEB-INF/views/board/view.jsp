<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONALYST</title>
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
.comment_outline {
	width: 100%;
}
.comment_inline {
	width: 1180px;
	margin: 0 auto;
}
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
	display: flex;
	width: 1180px;
	border-radius: 5px;
	height: auto;
	padding: 10px;
	justify-content: space-between;
	align-items: center;
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
	width: 100%;
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
	width: 1000px;
	height: 50px;
	line-height: 50px;
	padding-left: 15px;
}
.btn_comment {
	float: right;
	margin-top: 30px;
}
.writer_top {
	font-weight: bold;
	display: inline-block;
	width: 170px;
	height: 50px;
	border: 1px solid rgb(169, 169, 169);
	line-height: 50px;
	text-align: center;
	margin-right: 2px;

}
.btn_comment {
	display: inline-block;
	width: 100px;
	height: 50px;
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
    transition: 0.3s;
    margin-left: 2px;
    
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

#user img {
	margin-right: 3px;
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
						<td>${bDto.btitle}</td>
						<th>조회수</th>
						<td>${bDto.bviewcnt}</td>
					</tr>
					<tr>
						<th>작성자</td>
						<td>운영자</td>
						<th>작성일</td>
						<td>
							<fmt:formatDate value="${bDto.bregdate}" pattern="yyyy-MM-dd" var="regdate" />
							${regdate}
						</td>
					</tr>
				</table>
				<div class="board_view_content">
					${bDto.bcontent}
				</div>
				<div class="list_btn_box">
					<div class="list_btn">목록</div>
				</div>
				<!-- 댓글영역 -->
				<div class="comment_outline">
					<div class="comment_inline" id="commentList">
					<!-- 여기에 commentlist띄움 -->
						
					
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="../include/footer.jsp" %>  
<script type="text/javascript">
$(document).ready(function(){
	// 문서가 준비되면 댓글 목록을 조회하는 AJAX실행
	comment_list();
	
	$('.board_menu ul li').eq(0).addClass("active");
	
	$('.board_menu ul li').click(function(){
		$('.board_menu ul li').removeClass("active");
		$(this).addClass("active");
	});
	
	// 댓글 등록 버튼
	$('.btn_comment').hover(function(){
		$(this).css('background-color', 'white').css('color','#333');
	},
	function(){
		$(this).css('background-color', '#333').css('color','white');
	});
	
});

//댓글 띄우는 함수
function comment_list(){		
	$.ajax({
		type:"get",
		url: "${path}/comment/list",
		data: "bno=${bDto.bno}",
		success: function(result){ 
			$('#commentList').html(result); 
		}
	});
}

// 댓글 등록 
$(document).on("click", "#reply_btn", function(){
	var content = $("#replyInsert").val();
	
	if(content == null || content.length == 0) { 
		// 유효성체크(Null 체크)
		$("#replyInsert").focus();
		$("#txt_box").css("display", "inline-block");
		return false;
	} else {
		// 게시글번호 담아서 보냄
		var bno = '${bDto.bno}';
		$('#re_bno').val(bno);
		$.ajax({ 
			type:"POST",
			url: "${path}/reply/replyAdd",
			data: $("#frm_reply").serialize(),  
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			success: function(){ 
				comment_list(); 
				$('#replyInsert').val(""); 
			},
			error: function(){
				alert("System Error!!!");
			}
		});
	}
});
//댓글 삭제
$(document).on("click", ".reply_del", function(){
	var rno = $(this).attr("data_num");
	var bno = '${bDto.bno}';
	
	$.ajax({
		url: "${path}/reply/replyRemove",
		data: "rno=" + rno + "&bno=" + bno,
		success: function(){
			comment_list();
		},
		error: function(){
			alert("System Error!!!");
		}
	});
});
	
</script>
</body>
</html>