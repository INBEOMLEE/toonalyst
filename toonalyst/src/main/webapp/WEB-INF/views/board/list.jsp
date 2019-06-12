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
.notice .notice_body {
	padding-bottom: 80px;
	min-height: 500px;
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
.wrap_inner {
	width: 1180px;
	margin: 0 auto;
}
.notice_body {
	width: 1180px;
	margin: 0 auto;
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
	border: 1px solid #d5d5d5;
	background: #fff;
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
.board_head > th {
	padding: 15px 0;
	border-top: 1px solid #e0e0e0;
	border-bottom: 1px solid #e0e0e0;
	font-weight: normal;
	text-align: center;
	vertical-align: middle;
	font-size: 12px;
}


</style>
</head>
<body>
	<div class="notice">
		<!-- 게시판 목록 부분 -->
		<div class="sticky">
			<div class="sub_tab">
				<div class="wrap_inner">
					<ul>
						<li>
							<a href="#">NOTICE</a>
						</li>
						<li>
							<a href="#">FAQ</a>
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
				<table class="board_col">
					<thead>
						<tr class="board_head">
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<strong>[공지]</strong>
							</td>
							<td>
								
							</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
				<!-- 페이지 네이션 부분 -->
				<div class="page_write">
					<ul></ul>
				</div>
				<!-- 검색창 부분 -->
				<div class="board_search">
					<form action="" method="" name="">
					
					</form>
				</div>
			</div>
		</div>
	</div>


<%@ include file="../include/footer.jsp" %>  
</body>
</html>