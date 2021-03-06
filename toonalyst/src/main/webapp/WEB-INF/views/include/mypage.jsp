<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1">
<title>TOONALYST</title>
<style type="text/css">
#cnt{
	width:auto;	
}
.subtitle{
	padding: 40px 0;
	font-size: 24px;
	font-weight: bold;
	
	text-align: center;
	color: #191919;
}
#cnt .cntbody{
    width: 1180px;
    margin: 0 auto;
}
.tbl_mypage {
    border-collapse: collapse;
    border-spacing: 2;
    font-size: 12px;
    width: 100%;
    margin-bottom: 100px;
    border: 1px solid #d7d7d7;
}

.tbl_mypage thead th{
    padding: 16px 0;
    border-right: 1px solid #dadada;
    border-bottom: 1px solid #dadada;
    color: #181818;
    font-weight: bold;
    text-align: center;
}
.tbl_mypage tbody td{
    padding: 13px 0 17px 0;
    border-right: 1px solid #dadada;
    text-align: center;
}
.tbl_mypage tbody td ul li{
	padding: 5px 0;
}
.tbl_mypage tbody td ul li a{
	 color: #888;
}
.underline{
    display: inline-block;
    position: relative;
}
.underline:before{
	position: absolute;
    right: 50%;
    bottom: -3px;
    width: 0;
    height: 1px;
    background: #333;
    content: '';
    transition: 0.3s;
}
.underline:after {
	position: absolute;
    left: 50%;
    bottom: -3px;
    width: 0;
    height: 1px;
    background: #333;
    content: '';
    transition: 0.3s;
}
.underline:hover:after, .underline:hover:before {
    width: 50%; 
}

</style>
</head>
<body>
	<div id="cnt">
		<h2 class="subtitle">마이페이지</h2>	
		<div class="cntbody">
			<table class="tbl_mypage" id="tableset">
				<colgroup>
					<col style="width:20%;">
					<col style="width:20%;">
					<col style="width:20%;">
					<col style="width:20%;">
					<col style="width:20%;">
				</colgroup>			
				<thead>
					<tr>
						<th scope="row">공사 중</th>
						<th scope="row">공사 중</th>
						<th scope="row">공사 중</th>
						<th scope="row">공사 중</th>
						<th scope="row" class="last">정보 관리</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<ul>
								<li><a href="#" class="underline">공사 중</a></li>
							</ul>
						</td>
						<td>
							<ul>		
								<li><a href="#" class="underline">공사 중</a></li>
							</ul>
						</td>
						<td>		
							<ul>
								<li><a href="#" class="underline">공사 중</a></li>
							</ul>
						</td>
						<td>
							<ul>
								<li><a href="#" class="underline">공사 중</a></li>
							</ul>
						</td>
						<td class="last">
							<ul>
								<li><a href="${path}/member/update" class="underline">나의 정보수정</a></li>
								<li><a href="${path}/member/pwupdate" class="underline">비밀번호 수정</a></li>
								<li><a href="${path}/member/delete" class="underline">회원 탈퇴</a></li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>	
	</div>	
</body>
</html>