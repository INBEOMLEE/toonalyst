<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* 공사중 디자인 */
	.under_construction {
		width: 100%;
		height: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.under_construction img {
		width: 150px;
		height: 150px;
	}
	.under_construction span {
		font-size: 20px;
		font-weight: 600;
		margin-left: 30px;
	}
</style>
</head>
<body>
	<!-- 공사중입니다. -->
	<div class="under_construction">
		<img alt="이미지" src="${path}/resources/img/under_construction.png">
		<span>공사 중입니다. 이용에 불편을 끼쳐드려 죄송합니다.</span>
	</div>
</body>
</html>