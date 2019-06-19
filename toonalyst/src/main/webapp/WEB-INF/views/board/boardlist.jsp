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
	<!-- 게시글 영역 -->
	<div class="notice_body">
		<c:if test="${map.flag == 0}">
			<div class="array_list"></div>
		</c:if>
		<c:if test="${map.flag == 1}">
			<div class="array_list">
				<span class="array_style">
					<a href="${path}/board/boardlist?sort_option=new&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}" id="orderNew">최신순</a>
				</span>
				<span class="array_style">
					<a href="${path}/board/boardlist?sort_option=good&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}" id="orderGood">추천순</a>
				</span>
				<span class="array_style">
					<a href="${path}/board/boardlist?sort_option=comment&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}" id="orderComment">댓글순</a>
				</span>
				<span class="array_style">
					<a href="${path}/board/boardlist?sort_option=view&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}" id="orderView">조회순</a>
				</span>
			</div>
		</c:if>
		<div class="board_list">
			<jsp:useBean id="now" class="java.util.Date"/>
			<c:if test="${map.flag == 0}">
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
									<c:if test="${map.flag == 0}">
										<strong>[공지]</strong>
									</c:if>
								</td>
								<td id="list_title">
									<a href="${path}/board/view?bno=${bDto.bno}&flag=${map.flag}">${bDto.btitle}</a>
									<c:if test="${today == regdate}">
										<span class="new_time">N</span>
									</c:if>
								</td>
								<td><img alt="level" src="${path}/resources/img/level/50.gif">${bDto.bwriter}</td>
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
			</c:if>
			<c:if test="${map.flag == 1}">
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
									<a href="${path}/board/view?bno=${bDto.bno}&flag=${map.flag}">${bDto.btitle}</a>
									<c:if test="${bDto.bcommentcnt > 0}">
										<span class="commentcnt_style">(${bDto.bcommentcnt})</span>
									</c:if>
									<c:if test="${today == regdate }">
										<span class="new_time">N</span>
									</c:if>
								</td>
								<td><img alt="level" src="${path}/resources/img/level/50.gif">${bDto.bwriter}</td>
								<td>
									<c:choose>
										<c:when test="${today == regdate }">
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
			</c:if>
			<div class="wrap_btn">
				<c:if test="${!empty sessionScope.loginUser}">
					<div class="box_btn write" id="register_btn">
						<a class="register_btn">글쓰기</a>
					</div>
				</c:if>						
			</div>
			<!-- 페이지 네이션 부분 -->
			<div class="pagination_box">
				<div class="pagination">
					<c:if test="${map.pager.curBlock > 1}">
						<a href="${path}/board/boardlist?curPage=1&keyword=${map.keyword}&sort_option=${map.sort_option}&search_option=${map.search_option}&flag=${map.flag}"><i class="fas fa-angle-double-left"></i></a>
						<a href="${path}/board/boardlist?curPage=${map.pager.blockBegin - 10}&sort_option=${map.sort_option}&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}"><i class="fas fa-angle-left"></i></a> 
					</c:if>
					<c:forEach begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}" var="idx">
						<a href="${path}/board/boardlist?curPage=${idx}&keyword=${map.keyword}&sort_option=${map.sort_option}&search_option=${map.search_option}&flag=${map.flag}" <c:out value="${map.pager.curPage == idx ? 'class=active':''}"/>>${idx}</a>
					</c:forEach>
					<c:if test="${map.pager.curBlock < map.pager.totBlock}">
						<a href="${path}/board/boardlist?curPage=${map.pager.blockEnd + 1}&sort_option=${map.sort_option}&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}"><i class="fas fa-angle-right"></i></a>
						<a href="${path}/board/boardlist?curPage=${map.pager.totPage}&sort_option=${map.sort_option}&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}"><i class="fas fa-angle-double-right"></i></a> 
					</c:if>
				</div>
			</div>
			<!-- 검색창 부분 -->
			<div class="board_search">
				<form action="${path}/board/boardlist" method="GET" name="frm_srch" id="boardlist_form">
					<select name="search_option" class="search_option">
						<option value="all" selected="selected">제목+내용</option>
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select>
					<input type="text" name="keyword" class="form_input search keyword">
					<input type="hidden" name="flag" value="${map.flag}">
					<input type="hidden" name="sort_option" value="${map.sort_option}">
					<input type="hidden" name="curPage" value="${map.pager.curPage}">
					<input type="button" value="검색" class="btn_search">
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$(document).ready(function(){
		var flag = "${map.flag}";
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
		
		$('.btn_search').click(function(){
			var search_option = $('.search_option').val();
			var keyword = $.trim($('.keyword').val());
			
			if(keyword == null || keyword.length == 0) {
				$('.keyword').focus();
				$('.keyword').css('border', '1px solid rgb(231, 29, 54)');
				return false;
			} else {
				$('.keyword').css('border', '1px solid #ddd');
			}
			location.href="${path}/board/boardlist?sort_option=" + sort_option + "&search_option=" + search_option + "&keyword=" + keyword + "&curPage=" + curPage + "&flag=" + flag;
		});
		
		$('#register_btn').click(function(){
			location.href="${path}/board/register?flag=${map.flag}";
		});
		
	});
	</script>
</body>
</html>