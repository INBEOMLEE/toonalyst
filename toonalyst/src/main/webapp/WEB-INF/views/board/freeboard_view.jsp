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
.tbl_title, .tbl_viewcnt, .tbl_viewcnt_con, .tbl_writer, .tbl_good, .tbl_good_con, .tbl_date, .tbl_date_con {
	width: 3%;
}
.tbl_title_con {
	width: 12%;
}
.tbl_writer_con {
	width: 9%;
}
.list_btn_box {
	display: flex;
	width: 1180px;
	border-top: 1px solid #e0e0e0;
	border-bottom: 1px solid #e0e0e0;
}
.list_btn_box1 {
	flex: 1;
	text-align: left;
}
.list_btn_box2 {
	flex: 1;
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
.comment_empty_box {
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

#user img, .comment_head img {
	vertical-align: middle;
	margin-right: 3px;
}

</style>
</head>
<body>
	<div class="notice">
		<!-- 게시글 영역 -->
		<div class="notice_body">
			<div class="board_list">
				<table class="board_view_table">
					<tr>
						<th class="tbl_title">제목</th>
						<td colspan="3"  class="tbl_title_con">${bDto.btitle}</td>
						<th class="tbl_viewcnt">조회수</th>
						<td class="tbl_viewcnt_con">${bDto.bviewcnt}</td>
					</tr>
					<tr>
						<th class="tbl_writer">작성자</td>
						<td class="tbl_writer_con">운영자</td>
						<th class="tbl_good">좋아요</th>
						<td class="tbl_good_con">0</td>
						<th class="tbl_date">작성일</td>
						<td class="tbl_date_con">
							<fmt:formatDate value="${bDto.bregdate}" pattern="yyyy-MM-dd" var="regdate" />
							${regdate}
						</td>
					</tr>
				</table>
				<div class="board_view_content">${bDto.bcontent}</div>
				<div class="list_btn_box">
					<div class="list_btn_box1">
						<c:if test="${sessionScope.loginUser.id == bDto.bwriter}">
							<button class="list_btn" id="update_btn">수정</button>
							<button class="list_btn" id="remove_btn">삭제</button>
						</c:if>
					</div>
					<div class="list_btn_box2">
						<c:if test="${!empty sessionScope.loginUser.id}">
							<div class="list_btn" OnClick="location.href='#'">좋아요</div>
						</c:if>
						<div class="list_btn" OnClick="location.href='${path}/board/list'">목록</div>
					</div>
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
$(document).on("click", "#comment_btn", function(){
	var content = $("#textarea").val();
	
	if(content == null || content.length == 0) { 
		// 유효성체크(Null 체크)
		$("#textarea").focus();
		$("#txt_box").css("display", "inline-block");
		return false;
	} else {
		// 게시글번호 담아서 보냄
		var bno = '${bDto.bno}';
		$('#re_bno').val(bno);
		$.ajax({ 
			type:"POST",
			url: "${path}/comment/create",
			data: $("#frm_comment").serialize(),
			dataType: "json",
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			success: function(data){
				if(data == 1) {
					comment_list(); 
					$('#textarea').val(""); 
				}
			},
			error: function(){
				alert("System Error!!!");
			}
		});
	}
});

//댓글 삭제
$(document).on("click", ".comment_delete_btn", function(){
	var cno = $(this).attr("data_num");
	
	$.ajax({
		url: "${path}/comment/delete",
		data: "cno=" + cno,
		success: function(){
			comment_list();
		},
		error: function(){
			alert("System Error!!!");
		}
	});
});


$(document).on("click", "#remove_btn", function(){
	location.href="${path}/board/delete?bno=${bDto.bno}";
		
});


$(document).on("click", "#update_btn", function(){
	location.href="${path}/board/update?bno=${bDto.bno}";
		
});
	
</script>
</body>
</html>