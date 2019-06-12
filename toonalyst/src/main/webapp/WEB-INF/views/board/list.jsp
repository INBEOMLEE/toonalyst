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
.board_col > tbody > tr > td {
	padding: 15px 0;
	border-bottom: 1px solid #e0e0e0;
	text-align: center;
	vertical-align: middle;
	color: #666;
	
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
	text-align: center;
	vertical-align: top;
}
.box_btn a {
	display: inline-block;
	margin: 0;
	padding: 8px 12px;
	border: 1px solid #dedfda;
	outline: none;
	background: #dedfda;
	color: #fff;
	font-size: 14px;
	font-weight: normal;
	text-align: center;
	vertical-align: middle;
	line-height: 1.4;
	white-space: nowrap;
	cursor: pointer;
	-webkit-appearance: none;
	transition: all .2s ease;
	width: 100px;
}
/* 페이지네이션 */
.page_write {
	position: relative;
	min-height: 34px;
	margin-top: 30px;
}
.paging {
	margin-top: 30px;
	font-size: 0;
	text-align: center;
}
.paging li {
	display: inline;
	padding: 0 2px;
	color: #9e9e9e;
	vertical-align: middle;
}
.paging li a {
	display: inline-block;
	width: 34px;
	height: 34px;
	border: 1px solid #e0e0e0;
	background: #fff;
	color: #6e6e6e;
	line-height: 34px;
}
.paging li strong {
	display: inline-block;
	width: 34px;
	height: 34px;
	border: 1px solid #676767;
	background: #676767;
	color: #fff;
	line-height: 34px;
	vertical-align: middle;
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
								<a href="">5월 29일(수) 고객센터 운영 안내</a>
							</td>
							<td>운영자</td>
							<td>2019-05-29</td>
							<td>178</td>
						</tr>
						<tr>
							<td>
								<strong>[공지]</strong>
							</td>
							<td>
								<a href="">5월 29일(수) 고객센터 운영 안내</a>
							</td>
							<td>운영자</td>
							<td>2019-05-29</td>
							<td>178</td>
						</tr>
						<tr>
							<td>
								<strong>[공지]</strong>
							</td>
							<td>
								<a href="">5월 29일(수) 고객센터 운영 안내</a>
							</td>
							<td>운영자</td>
							<td>2019-05-29</td>
							<td>178</td>
						</tr>
						<tr>
							<td>
								<strong>[공지]</strong>
							</td>
							<td>
								<a href="">5월 29일(수) 고객센터 운영 안내</a>
							</td>
							<td>운영자</td>
							<td>2019-05-29</td>
							<td>178</td>
						</tr>
						<tr>
							<td>
								<strong>[공지]</strong>
							</td>
							<td>
								<a href="">5월 29일(수) 고객센터 운영 안내</a>
							</td>
							<td>운영자</td>
							<td>2019-05-29</td>
							<td>178</td>
						</tr>
						<tr>
							<td>
								<strong>[공지]</strong>
							</td>
							<td>
								<a href="">5월 29일(수) 고객센터 운영 안내</a>
							</td>
							<td>운영자</td>
							<td>2019-05-29</td>
							<td>178</td>
						</tr>
						<tr>
							<td>
								<strong>[공지]</strong>
							</td>
							<td>
								<a href="">5월 29일(수) 고객센터 운영 안내</a>
							</td>
							<td>운영자</td>
							<td>2019-05-29</td>
							<td>178</td>
						</tr>
						<tr>
							<td>
								<strong>[공지]</strong>
							</td>
							<td>
								<a href="">5월 29일(수) 고객센터 운영 안내</a>
							</td>
							<td>운영자</td>
							<td>2019-05-29</td>
							<td>178</td>
						</tr>
						<tr>
							<td>
								<strong>[공지]</strong>
							</td>
							<td>
								<a href="">5월 29일(수) 고객센터 운영 안내</a>
							</td>
							<td>운영자</td>
							<td>2019-05-29</td>
							<td>178</td>
						</tr>
					</tbody>
				</table>
				<div class="wrap_btn">
					<div class="box_btn write">
						<a href="#" class="register_btn">글쓰기</a>
					</div>
				</div>
				<!-- 페이지 네이션 부분 -->
				<div class="page_write">
					<ul class="paging">
						<li>
							<a href="#">&laquo;</a>
						</li>
						<li>
							<strong>1</strong>
						</li>
						<li>
							<a>...</a>
						</li>
						
						<li>
							<a href="#">2</a>
						</li>
						<li>
							<a>...</a>
						</li>
						<li>
							<a href="#">3</a>
						</li>
						<li>
							<a href="#">&raquo;</a>
						</li>						
					</ul>
				</div>
				
				<!-- 검색창 부분 -->
				<div class="board_search">
					<form action="#" method="GET" name="frm_srch">
						<input type="hidden" name="">
						<input type="hidden" name="db">
						<select name="search">
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="name">작성자</option>
						</select>
						<input type="text" name="search_str" class="form_input search">
						<input type="submit" value="검색" class="btn_search">
					</form>
				</div>
			</div>
		</div>
	</div>


<%@ include file="../include/footer.jsp" %>  
</body>
</html>