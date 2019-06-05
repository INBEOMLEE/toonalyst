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
	margin-bottom: 40px;
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
    padding-inline-start: 40px;
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
</style>
</head>
<body>
	<div id="mypage">
		<div class="my_info">
		<p><strong>이인범 씨</strong>의 마이페이지</p>
			<ul>
				<li><a href="#">회원등급<span>KING</span></a></li>
				<li><a href="#">적립금<span>5억</span></a></li>			
				<li><a href="#">쿠폰<span>412장</span></a></li>
				<li><a href="#">장바구니<span>251</span></a></li>
				<li><a href="#">관심상품<span>14</span></a></li>
			</ul>		
		</div>					
	</div>
</body>
</html>