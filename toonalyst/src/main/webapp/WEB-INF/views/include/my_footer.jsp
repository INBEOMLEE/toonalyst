
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.wrap_inner {
    width: 1200px;
    margin: 0 auto;
}
#footer .cs_info > ul {
    font-size: 0;
    display: block;
    list-style-type: disc;
}
#footer .cs_info {
    padding-bottom: 100px;
}
#footer .cs_info > ul > li {
    display: inline-block;
    width: 375px;
    height: 225px;
    padding: 30px 10px;
    border: 1px solid #dedfda;
    background: #fff;
    text-align: -webkit-match-parent;
    vertical-align: top;
}
#footer .cs_info > ul > li h1 {
    padding-bottom: 20px;
    font-size: 18px;
    font-weight: 700;
    display: block;
    text-align: center;
}
#footer .cs_info > ul > li.cs strong {
    display: block;
    padding-bottom: 20px;
    font-size: 30px;
    text-align: center;
    line-height: 1;
}

#footer .cs_info > ul > li.faq {
    margin: 0 20px;
}
#footer .cs_info > ul > li dl.ft_board dd {
    overflow: hidden;
    padding-bottom: 8px;
    font-size: 12px;
    display: block;
    font-weight: 600;
    margin-inline-start: 10px;
}
#footer .cs_info > ul > li dl{
    text-align: left
}
#footer .cs_info > ul > li dl.ft_board dd a {
    color: #777;
    font-weight: 600;
    font-size: 13px;
}
}
#footer .cs_info > ul > li.cs dl dd.right p {
    color: #999;
}

#footer .cs_info > ul > li.cs dl dd p {
    padding-bottom: 10px;
    font-size: 16px;
    display: block;
    text-align: center;
}
#footer .cs_info > ul > li.cs dl dd p span {
    color: #999;
    font-size: inherit;
}
#footer .cs_info > ul > li dl.ft_board dd span {
    float: right;
    color: #999;
    font-size: 14px;
}
#footer .cs_info > ul > li.cs dl dd p a {
    font-size: inherit;
}
</style>
</head>
<body>
<div id="footer">
		<div class="cs_info wrap_inner">
			<ul>
				<li class="notice">
				<h1>공지사항</h1>				
					<dl class="ft_board">
						<c:forEach items="${nList.nList}" var="bDto">
						<dd>[공지]<a href="#">${bDto.btitle}</a><span><fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.bregdate}"/></span></dd>
						</c:forEach>
					</dl>
				</li>
				<li class="faq">
				<h1>질문게시판</h1>					
					<dl class="ft_board">
						<c:forEach items="${nList.qList}" var="bDto">
						<dd>[질문]<a href="#">${bDto.btitle}</a><span><fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.bregdate}"/></span></dd>
						</c:forEach>
					</dl>
				</li>
				<li class="cs">
				<h1>자유게시판</h1>					
					<dl class="ft_board">
						<c:forEach items="${nList.bList}" var="bDto">
						<dd>[자유]<a href="#">${bDto.btitle}</a><span><fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.bregdate}"/></span></dd>
						</c:forEach>
					</dl>
				</li>				
			</ul>
		</div>		
	</div>
</body>
</html>