<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/mypage.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONALYST</title>
<style type="text/css">

#mypage{
	width: 1180px;
    margin: 0 auto;
	margin-bottom: 100px;
    border: 1px solid #d5d5d5;
    background: #fafafa;
}
#mypage .my_info p{
    padding: 15px 0;
    border-bottom: 1px solid #d5d5d5;
    text-align: center;
    font-size: 18px;
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
#mypage .my_info ul {
    display: table;
    width: 100%;
    padding: 20px 0;
    table-layout: fixed;
    list-style-type: disc;
 	margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 0px;
}
#mypage .my_info ul li {
    display: table-cell;
    position: relative;
    color: #818181;
    text-align: center;
}
#mypage .my_info ol, ul, li {
    list-style: none;
    text-align: center;
}
#mypage .my_info ul li a {
    display: block;
    font-size: 16px;
    color: #818181;
    text-decoration: none;
    cursor: pointer;
    line-height: 1.4;
}
#mypage .my_info ul li span {
    display: block;
    font-size: 30px;
    font-weight: bold;
    color: #ff4c00;
}
#mypage .my_info ul li+li {
    border-left: 1px solid #d5d5d5;
}
#gradeimg {
	width: 37.5px;
	height: 24px;
	margin-top: 5px;
}

.ac_board{
	width: 550px !important;
	padding: 30px !important;
}

.ac_wrap{
	padding-bottom: 50px !important;
}

.ac_board a{
	color: #777;
    font-weight: 600;
    font-size: 13px;
}
.ac_board > dl > dd > a{
	overflow: hidden;
    width: 310px;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: inline-flex;
}

.ac_board_title{
	width: 100%; 
	display: flex; 
	flex-direction: row;
}
.ac_board_title span{
	flex:1;
}

.ac_board_title span:nth-child(3){
	text-align: right; 
	margin-top:10px;
}

</style>
</head>
<body>
	<div id="mypage">
		<div class="my_info">
		<p><strong>${sessionScope.loginUser.name} 씨</strong>의 마이페이지</p>
			<ul>
				<li><a href="#">회원 등급<span><img alt="회원 등급" src="${path}/resources/img/level/${sessionScope.loginUser.grade}.gif" id="gradeimg"></span></a></li>
				<li><a href="#">회원 레벨<span>${sessionScope.loginUser.grade}</span></a></li>			
				<li><a href="#">E X P<span>${sessionScope.loginUser.memexp}</span></a></li>
				<li><a href="#">작성한 게시글 수<span>${sessionScope.loginUser.boardcnt}</span></a></li>
				<li><a href="#">작성한 댓글 수<span>${sessionScope.loginUser.commentcnt}</span></a></li>
			</ul>		
		</div>					
	</div>
	<div class="cs_info wrap_inner ac_wrap">
		<ul>
			<li class="ac_board">
				<div class="ac_board_title">
					<span></span>
					<span><h1>작성한 게시글</h1></span>
					<span><a>전체보기</a></span>
				</div>				
				<dl class="ft_board">
				<c:forEach items="${nList.board}" var="bDto">
					<dd>
						<c:if test="${bDto.bcategory == 0}">[공지사항]</c:if>
						<c:if test="${bDto.bcategory == 1}">[QnA]</c:if>
						<c:if test="${bDto.bcategory == 2}">[자유게시판]</c:if>
						<a href="#">${bDto.btitle}</a><span>2019-06-26</span>
					</dd>
				</c:forEach>
				</dl>
			</li>
			<li class="ac_board" style="margin-left: 60px;">
				<div class="ac_board_title">
					<span></span>
					<span><h1>작성한 댓글</h1></span>
					<span><a>전체보기</a></span>
				</div>
				<dl class="ft_board">
					<c:forEach items="${nList.comment}" var="cMap">
					<dd>
						[${cMap.BOARDNAME}]
						<a href="#">${cMap.CCONTENT}</a><span><fmt:formatDate pattern="yyyy-MM-dd" value="${cMap.CREGDATE}"/></span>
					</dd>
					</c:forEach>
				</dl>
			</li>
		</ul>
	</div>
<%@ include file="../include/my_footer.jsp" %>		
<%@ include file="../include/footer.jsp" %>	
</body>
</html>