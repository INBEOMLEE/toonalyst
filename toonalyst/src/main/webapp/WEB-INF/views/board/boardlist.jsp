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
		<div class="board_list">
			<table class="board_col">
				<colgroup>
					<col style="width: 5%">
					<col style="width: 15%">
					<col style="width: 5%">
					<col style="width: 5%">
					<col style="width: 5%">
				</colgroup>
				<thead>
					<tr class="board_head">
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody class="board_list_con">
					<c:forEach items="${map.list}" var="bDto">
						<jsp:useBean id="now" class="java.util.Date"/>
						<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
						<fmt:formatDate value="${bDto.bregdate}" pattern="yyyy-MM-dd" var="regdate" />
						<tr>
							<td>
								<strong>[공지]</strong>
							</td>
							<td id="list_title">
								<a href="${path}/board/view?bno=${bDto.bno}">${bDto.btitle}</a>
								<c:if test="${today == regdate}">
									<span class="new_time">N</span>
								</c:if>
							</td>
							<td><img alt="level" src="${path}/resources/img/level/50.gif">운영자</td>
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
							<td>${bDto.bviewcnt}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="wrap_btn">
				<c:if test="${!empty sessionScope.loginUser}">
					<div class="box_btn write">
					<a href="${path}/board/register" class="register_btn">글쓰기</a>
					</div>
				</c:if>						
			</div>
			<!-- 페이지 네이션 부분 -->
			<div class="pagination_box">
				<div class="pagination">
					<c:if test="${map.pager.curBlock > 1}">
						<a href="${path}/board/boardlist?curPage=1&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}"><i class="fas fa-angle-double-left"></i></a>
						<a href="${path}/board/boardlist?curPage=${map.pager.blockBegin - 10}&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}"><i class="fas fa-angle-left"></i></a> 
					</c:if>
					<c:forEach begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}" var="idx">
						<a href="${path}/board/boardlist?curPage=${idx}&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}" <c:out value="${map.pager.curPage == idx ? 'class=active':''}"/>>${idx}</a>
					</c:forEach>
					<c:if test="${map.pager.curBlock < map.pager.totBlock}">
						<a href="${path}/board/boardlist?curPage=${map.pager.blockEnd + 1}&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}"><i class="fas fa-angle-right"></i></a>
						<a href="${path}/board/boardlist?curPage=${map.pager.totPage}&keyword=${map.keyword}&search_option=${map.search_option}&flag=${map.flag}"><i class="fas fa-angle-double-right"></i></a> 
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
			location.href="${path}/board/boardlist?search_option=" + search_option + "&keyword=" + keyword + "&curPage=" + curPage + "&flag=" + flag;
		});
	});
	</script>
</body>
</html>