<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONALYST</title>
<style type="text/css">
.notice {
	margin-top: 50px;
}
.notice .notice_body {
	padding-bottom: 80px;
	min-height: 500px;
}
.sticky {
	height: 56px;
}
.sub_tab {
	position: relative;
	top: 0;
}
.board_menu {
	width: 1180px;
	margin: 0 auto;
}
.notice_body {
	width: 1180px;
	margin: 0 auto;
}
.new_time {
	background-color: white;/* #FF8224 */
	border: 1px solid #FF6C36;
	font-size: 11px;
	color: #FF6C36;
	/* border-radius: 25px; */
	padding: 1px 3px;
	animation-name: twinkle;
	animation-duration: 1.2s;
	animation-iteration-count:infinite;
	margin-left: 5px;	
}
@keyframes twinkle {
	0% {opacity: 0;}
	100% {opacity: 1;}
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
.board_list {
	width: 100%;
}

.board_col {
	border-spacing: 0;
	table-layout: fixed;
	clear: both;
	width: 100%;
	border-collapse: collapse;
}
.board_col > tbody > tr > td {
	padding: 15px 0;
	border-bottom: 1px solid #e0e0e0;
	text-align: center;
	vertical-align: middle;
	color: #666;
	height: 50px;
	
}
.title_td {
	display: flex;
	align-items: center;
	justify-content: center;
}
.board_head > th {
	padding: 15px 0;
	border-top: 1px solid #e0e0e0;
	border-bottom: 1px solid #e0e0e0;
	font-weight: 700;
	text-align: center;
	vertical-align: middle;
	font-size: 14px;
}
.board_list_con {
	font-size: 14px;
}
.board_search select {
	border: 0;
	max-width: 100%;
	height: 34px;
	padding: 4px 6px;
	background: #fff;
	color: #666;
	outline: none;
}
/* 글쓰기 버튼 */
.wrap_btn {
	position: relative;
	bottom: -30px;
	height: 0;
}
.box_btn {
	position: absolute;
	right: 0;
	top: 0;
	display: inline-block;
	vertical-align: top;
	margin: 0;
	padding: 8px 12px;
	border: 1px solid #dedfda;
	outline: none;
	background: #dedfda;
	color: #fff;
	font-size: 15px;
	font-weight: 500;
	text-align: center;
	white-space: nowrap;
	cursor: pointer;
	-webkit-appearance: none;
	transition: all .2s ease;
	width: 100px;
	z-index: 5;
	transition: 0.3s;
}
.box_btn:hover {
	background: #FF6C36;
	border: 1px solid #FF6C36;
}
/* 페이지네이션 */
.pagination_box {
	width: 100%;
	height: auto;
}
.pagination {
	width: 500px;
	margin: 20px auto 0;
	height: 30px;
	text-align: center;
}
.pagination a {
	display: inline-block;
	width: 30px;
	color: black;
	border: 1px solid #ddd;
	text-align: center;
	margin-right: 1px;
	font-weight: 700;
	height: 23px;
	text-align: center;
	line-height: 22px;
	color: #242424;
}
.pagination i {
	width: 30px;
	display: block;
	line-height: 23px;
	color: #242424;
}
.pagination a.active {
	background-color: #FF6C36;
	border: 1px solid #FF6C36;
	color: white;
}
.board_search {
	clear : both;
	text-align: center;
}
.board_search form {
	display: inline-block;
	margin: 30px auto 0;
	padding: 5px;
	border: 1px solid #dcdcdc;
	text-align: center;
}
.form_input {
	width: 300px;
	border-width: 0 1px;
	height: 34px;
	padding: 4px 10px;
	border: none;
	background: #fff;
	color: #666;
	font-size: 12px;
	transition: all .3s ease;
}
.btn_search {
	display: inline-block;
	width: 34px;
	height: 34px;
	border: 0;
	background: url(${path}/resources/img/search.png) no-repeat center;
	vertical-align: top;
	text-indent: -9999px;
	cursor: pointer;
}
.board_menu ul li.active {
	background: #FF6C36;
}
.board_list_con tr{
	display: flex;
	justify-content: center;
	align-items: center;
	width: 1180px;
}
.board_list_con td{
	display: flex;
	justify-content: center;
	align-items: center;
	flex: 1;
}
#list_title {
	flex: 3;
}
.board_col img {
	margin-right: 3px;
}
/* 정렬디자인 */
.array_list {
	display: flex;
	justify-content: flex-start;
	align-items: center;
	margin: 10px 0 15px;
	width: 1180px;
	height: 16px;
}
.array_style {
    display: inline-block;
    position: relative;
    color: #666;
    margin-left: 10px;
}
.array_style a {
	font-size: 14px;
	font-weight: 600;
}
.array_style:before{
	position: absolute;
    right: 50%;
    bottom: -3px;
    width: 0;
    height: 1px;
    background: #333;
    content: '';
    transition: 0.3s;
}
.array_style:after {
	position: absolute;
    left: 50%;
    bottom: -3px;
    width: 0;
    height: 1px;
    background: #333;
    content: '';
    transition: 0.3s;
}
.array_style:hover:after, .array_style:hover:before {
    width: 50%; 
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
							<a class="sub_notice" id="noticeboard">NOTICE</a>
						</li>
						<li>
							<a id="qaboard">Q&A</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 게시물 정렬 영역 -->
		<div class="array_list">
		
		
		</div>
		<!-- 게시글 영역 -->
		<div class="notice_body">
			<div class="board_list" id="board_list_open">
				<!-- 게시글 목록 출력할 공간 -->
			</div>
		</div>
	</div>


<%@ include file="../include/footer.jsp" %>  
<script type="text/javascript">
$(document).ready(function(){
	var flag = "${flag}";
	var curPage = "${curPage}";
	var search_option = "${search_option}";
	var keyword = "${keyword}";
	var sort_option = "${sort_option}";
	
	board_list(sort_option, flag, curPage, search_option, keyword);
	
	if(flag == 0) {
		$('.board_menu ul li').eq(0).addClass("active");
	} else if(flag == 1){
		$('.board_menu ul li').eq(1).addClass("active");
	}
	
	$('.board_menu ul li').click(function(){
		$('.board_menu ul li').removeClass("active");
		$(this).addClass("active");
	});
	
	$('#noticeboard').click(function(){
		flag = 0;
		curPage = 1;
		search_option = "all";
		keyword = "";
		sort_option = "new";
		board_list(sort_option, flag, curPage, search_option, keyword);
	});
	
	$('#qaboard').click(function(){
		flag = 1;
		curPage = 1;
		search_option = "all";
		keyword = "";
		sort_option = "new";
		board_list(sort_option, flag, curPage, search_option, keyword);
	});
	
});

function board_list(sort_option, flag, curPage, search_option, keyword) {
	$.ajax({
		url: "${path}/board/list",
		type: "GET",
		data:  "sort_option=" + sort_option + "&search_option=" + search_option + "&keyword=" + keyword + "&curPage=" + curPage + "&flag=" + flag,
		success: function(result){
			$('#board_list_open').html(result); 
		},
		error: function() {
			alert("System Error!!!");
		}
	});
	
}
	
</script>
</body>
</html>