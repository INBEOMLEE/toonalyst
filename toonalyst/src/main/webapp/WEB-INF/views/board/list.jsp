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
.search_wrap {
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
	justify-content: unset;
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
.board_head_menu tr {
	width: 1180px;
	display: flex;
	justify-content: center;
	align-items: center;
}
.board_head_menu th {
	flex: 1;
}
#noticeboard_title {
	flex: 3;
}
.qaboard_head_menu {
	width: 1180px;
	display: flex;
	justify-content: center;
	align-items: center;
}
.qaboard_head_menu th {
	flex: 1;
    padding: 15px 0;
    border-top: 1px solid #e0e0e0;
    border-bottom: 1px solid #e0e0e0;
    font-weight: 700;
    text-align: center;
    vertical-align: middle;
    font-size: 14px;
}
#qaboard_title {
	flex: 3;
}
#qaboard_goodcnt_title, #qaboard_viewcnt_title, #qaboard_goodcnt, #qaboard_viewcnt {
	flex: 0.6;
} 
.commentcnt_style {
	background-color: white;/* rgb(231, 29, 54) */
	font-size: 15px; /* 11px */
	color: rgb(231, 29, 54); /* white */
	border-radius: 25px;
	padding: 2px 5px;
	font-weight: bold;
}
#reply_arrow {
	transform: rotate(-180deg);
	margin-right: 2px;
	color: darkgray;
}
#title_empty_space {
	width: 17px;
	height: 3px;
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
							<a href="${path}/board/list?bcategory=0" class="sub_notice" id="noticeboard">NOTICE</a>
						</li>
						<li>
							<a href="${path}/board/list?bcategory=1" id="qaboard">Q&A</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 게시글 영역 -->
		<div class="notice_body">
			<div class="board_list" id="board_list_open">
				<!-- 게시글 영역 -->
				<div class="notice_body">
					<c:if test="${map.bcategory == 0}">
						<div class="array_list"></div>
					</c:if>
					<c:if test="${map.bcategory == 1}">
						<div class="array_list">
							<span class="array_style">
								<a href="${path}/board/list?sort_option=new&keyword=${map.keyword}&search_option=${map.search_option}&bcategory=${map.bcategory}" id="orderNew">최신순</a>
							</span>
							<span class="array_style">
								<a href="${path}/board/list?sort_option=good&keyword=${map.keyword}&search_option=${map.search_option}&bcategory=${map.bcategory}" id="orderGood">추천순</a>
							</span>
							<span class="array_style">
								<a href="${path}/board/list?sort_option=comment&keyword=${map.keyword}&search_option=${map.search_option}&bcategory=${map.bcategory}" id="orderComment">댓글순</a>
							</span>
							<span class="array_style">
								<a href="${path}/board/list?sort_option=view&keyword=${map.keyword}&search_option=${map.search_option}&bcategory=${map.bcategory}" id="orderView">조회순</a>
							</span>
						</div>
					</c:if>
					<div class="board_list">
						<jsp:useBean id="now" class="java.util.Date"/>
						<c:if test="${map.bcategory == 0}">
							<table class="board_col">
								<thead class="board_head_menu">
									<tr class="board_head">
										<th>분류</th>
										<th id="noticeboard_title">제목</th>
										<th>작성자</th>
										<th>작성일</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody class="board_list_con">
									<c:forEach items="${map.list}" var="bDto">
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
										<fmt:formatDate value="${bDto.bregdate}" pattern="yyyy-MM-dd" var="regdate" />
										<tr>
											<td>
												<c:if test="${map.bcategory == 0}">
													<strong>[공지]</strong>
												</c:if>
											</td>
											<td id="list_title">
												<a href="${path}/board/view?bno=${bDto.bno}">${bDto.btitle}</a>
												<c:if test="${bDto.bcommentcnt > 0}">
													<span class="commentcnt_style">(${bDto.bcommentcnt})</span>
												</c:if>
												<c:if test="${today == regdate}">
													<span class="new_time">N</span>
												</c:if>
											</td>
											<td><img alt="level" src="${path}/resources/img/level/${bDto.grade}.gif">${bDto.bwriter}</td>
											<td>
												<c:choose>
													<c:when test="${today == regdate}">
														<fmt:formatDate pattern="hh:mm:ss" value="${bDto.bregdate}" />
													</c:when>
													<c:otherwise>
														<fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.bregdate}" />
													</c:otherwise>
												</c:choose>
											</td>
											<td>${bDto.bviewcnt}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="wrap_btn"> 
							<!-- el태그 문자열 비교 -->
							<c:if test="${sessionScope.loginUser.toonadmin > 0}">
								<div class="box_btn write" id="register_btn">
									<a class="register_btn">글쓰기</a>
								</div>
							</c:if>						
							</div>
						</c:if>
						<c:if test="${map.bcategory == 1}">
							<table class="board_col">
								<thead>
									<tr class="qaboard_head_menu">
										<th>분류</th>
										<th id="qaboard_title">제목</th>
										<th>작성자</th>
										<th>작성일</th>
										<th id="qaboard_goodcnt_title">좋아요</th>
										<th id="qaboard_viewcnt_title">조회수</th>
									</tr>
								</thead>
								<tbody class="board_list_con">
									<c:forEach items="${map.list}" var="bDto">
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
										<fmt:formatDate value="${bDto.bregdate}" pattern="yyyy-MM-dd" var="regdate" />
										<tr>
											<td>
												<strong>[질문]</strong>
											</td>
											<td id="list_title">
												<c:forEach begin="1" end="${bDto.bdepth}">
													<div id="title_empty_space"></div>
												</c:forEach>
												<c:if test="${bDto.bdepth > 0}">
													<i class="fas fa-reply" id="reply_arrow"></i>
												</c:if>
												<a href="${path}/board/view?bno=${bDto.bno}"> ${bDto.btitle}</a>
												<c:if test="${bDto.bcommentcnt > 0}">
													<span class="commentcnt_style">(${bDto.bcommentcnt})</span>
												</c:if>
												<c:if test="${today == regdate }">
													<span class="new_time">N</span>
												</c:if>
											</td>
											<td><img alt="level" src="${path}/resources/img/level/${bDto.grade}.gif">${bDto.bwriter}</td>
											<td>
												<c:choose>
													<c:when test="${today == regdate}">
														<fmt:formatDate pattern="hh:mm:ss" value="${bDto.bregdate}" />
													</c:when>
													<c:otherwise>
														<fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.bregdate}" />
													</c:otherwise>
												</c:choose>
											</td>
											<td id="qaboard_goodcnt">${bDto.bgoodcnt}</td>
											<td id="qaboard_viewcnt">${bDto.bviewcnt}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="wrap_btn">
								<c:if test="${!empty sessionScope.loginUser}">
									<div class="box_btn write" id="register_btn">
										<a class="register_btn">글쓰기</a>
									</div>
								</c:if>						
							</div>
						</c:if>
						<!-- 페이지 네이션 부분 -->
						<div class="pagination_box">
							<div class="pagination">
								<c:if test="${map.pager.curBlock > 1}">
									<a href="${path}/board/list?curPage=1&keyword=${map.keyword}&sort_option=${map.sort_option}&search_option=${map.search_option}&bcategory=${map.bcategory}"><i class="fas fa-angle-double-left"></i></a>
									<a href="${path}/board/list?curPage=${map.pager.blockBegin - 10}&sort_option=${map.sort_option}&keyword=${map.keyword}&search_option=${map.search_option}&bcategory=${map.bcategory}"><i class="fas fa-angle-left"></i></a> 
								</c:if>
								<c:forEach begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}" var="idx">
									<a href="${path}/board/list?curPage=${idx}&keyword=${map.keyword}&sort_option=${map.sort_option}&search_option=${map.search_option}&bcategory=${map.bcategory}" <c:out value="${map.pager.curPage == idx ? 'class=active':''}"/>>${idx}</a>
								</c:forEach>
								<c:if test="${map.pager.curBlock < map.pager.totBlock}">
									<a href="${path}/board/list?curPage=${map.pager.blockEnd + 1}&sort_option=${map.sort_option}&keyword=${map.keyword}&search_option=${map.search_option}&bcategory=${map.bcategory}"><i class="fas fa-angle-right"></i></a>
									<a href="${path}/board/list?curPage=${map.pager.totPage}&sort_option=${map.sort_option}&keyword=${map.keyword}&search_option=${map.search_option}&bcategory=${map.bcategory}"><i class="fas fa-angle-double-right"></i></a> 
								</c:if>
							</div>
						</div>
						<!-- 검색창 부분 -->
						<div class="board_search">
							<div class="search_wrap">
								<select name="search_option" class="search_option">
									<option value="all" selected="selected">제목+내용</option>
									<option value="title">제목</option>
									<option value="content">내용</option>
								</select>
								<input type="text" name="keyword" id="search_keyword" class="form_input search keyword">
								<input type="button" value="검색" class="btn_search">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="../include/footer.jsp" %>  
<script type="text/javascript">
$(document).ready(function(){
	var bcategory = "${map.bcategory}";
	var curPage = "${map.pager.curPage}";
	var search_option = "${map.search_option}";
	var keyword = "${map.keyword}";
	var sort_option = "${map.sort_option}";
	
	if(sort_option == "new") {
		$('#orderNew').css("color", "#FF6C36");
	}
	if(sort_option == "good") {
		$('#orderGood').css("color", "#FF6C36");
	}
	if(sort_option == "comment") {
		$('#orderComment').css("color", "#FF6C36");
	}
	if(sort_option == "view") {
		$('#orderView').css("color", "#FF6C36");
	}
	
	$('#register_btn').click(function(){
		location.href="${path}/board/register?bcategory=${map.bcategory}";
	});
	
	/* 검색창 유효성체크 */
	$('.btn_search').click(function(){
		search_validation();
	});
	
	$('#search_keyword').keyup(function(key){
		if(key.keyCode==13)
			search_validation();
	});	
	
	function search_validation(){
		var search_option = $('.search_option').val();
		var keyword = $.trim($('.keyword').val());
		
		if(keyword == null || keyword.length == 0) {
			$('.keyword').focus();
			$('.keyword').css('border', '1px solid rgb(231, 29, 54)');
			return false;
		} else {
			$('.keyword').css('border', '1px solid #ddd');
		}
		location.href="${path}/board/list?search_option=" + search_option + "&keyword=" + keyword + "&bcategory=" + bcategory;
	}
	
	if(bcategory == 0) {
		$('.board_menu ul li').eq(0).addClass("active");
	} else if(bcategory == 1){
		$('.board_menu ul li').eq(1).addClass("active");
	}
	
	$('.board_menu ul li').click(function(){
		$('.board_menu ul li').removeClass("active");
		$(this).addClass("active");
	});
	
});

</script>
</body>
</html>